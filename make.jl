using Documenter
using Markdown
using JSON

# Types and functions to generate a Markdown table with links to package badges etc.
struct PackageDefinition
    name :: String
    url :: String
    desc :: String
    docs :: Vector{Pair{String, String}} # type => URL
    buildbadges :: Vector{Pair{String, String}} # badge => URL
end

function markdown(p::PackageDefinition)
    row = Any[]
    push!(row, Markdown.Link(p.name, p.url))
    push!(row, [
        Markdown.Link(
            [Markdown.Image("https://img.shields.io/badge/docs-$(ver)-blue.svg", "$(ver)")],
            url
        )
        for (ver, url) in p.docs
    ])
    push!(row, [
        Markdown.Link(
            [Markdown.Image(image, "")],
            url
        )
        for (image, url) in p.buildbadges
    ])
    push!(row, Markdown.parse(p.desc))
end

function package_table_markdown(packages)
    titles = map(["Package", "Documentation", "Coverage", "Description"]) do s
        Markdown.Bold(s)
    end
    table = Markdown.Table([titles], [:l, :c, :c, :l])
    for p in packages
        push!(table.rows, markdown(p))
    end
    Markdown.MD(table)
end

function generate_package_table_markdown()
    # query information about all JuliaDocs repositories
    data = read(`gh repo list JuliaDocs --json "isArchived,description,homepageUrl,name,url,defaultBranchRef"`, String)
    repos = JSON.parse(data)

    # exclude archived repositories
    repos = filter!(x -> !x["isArchived"], repos)

    # exclude some other repositories
    excluded = [
        "DocumentationGeneratorRegistry",   # kinda obsolete
        "DocumenterInventoryWritingBackport.jl",
        "juliadocs.github.io",              # this repository, no point linking to it
        "Julia-Cheat-Sheet",                # not a package
    ]
    filter!(x -> x["name"] ∉ excluded, repos)

    # sort alphabetical
    sort!(repos, by = x -> x["name"])

    packages = PackageDefinition[]
    for r in repos
        name = r["name"]
        name_no_suffix = endswith(name, ".jl") ? name[1:(end - 3)] : name
        url = r["url"]
        homepageUrl = r["homepageUrl"]
        desc = r["description"]

        docs = Pair{String, String}[]
        if isempty(homepageUrl)
            push!(docs, "README" => "https://github.com/JuliaDocs/$name")
        else
            # HACK / workaround for Highlights.jl
            if endswith(homepageUrl, "/stable")
                homepageUrl = replace(homepageUrl, "/stable" => "")
            end
            push!(docs, "stable" => joinpath(homepageUrl, "stable/"))
            push!(docs, "dev" => joinpath(homepageUrl, "dev/"))
        end

        branch = r["defaultBranchRef"]["name"]
        buildbadges = Pair{String, String}[
            "https://codecov.io/gh/JuliaDocs/$name/branch/$branch/graph/badge.svg" =>
                "https://codecov.io/gh/JuliaDocs/$name",
        ]

        push!(packages, PackageDefinition(name_no_suffix, url, desc, docs, buildbadges))
    end

    return package_table_markdown(packages)
end

# Build the docs
makedocs(
    sitename = "JuliaDocs",
    pages = [
        "Home" => "index.md",
    ],
    format = Documenter.HTML(
        edit_link = "source",
        assets = ["assets/favicon.ico"],
        analytics = "UA-136089579-1",
    ),
)

deploydocs(
    repo = "github.com/JuliaDocs/juliadocs.github.io.git",
    branch = "master",
    devbranch = "source",
    versions = nothing,
    push_preview = true,
)
