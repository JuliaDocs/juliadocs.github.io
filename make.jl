using Documenter
using Markdown

# Types and functions to generate a Markdown table with links to package badges etc.
struct PackageDefinition
    name :: String
    url :: String
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
end

function package_table_markdown(packages)
    titles = map(["Package", "Documentation", "Build Status"]) do s
        Markdown.Bold(s)
    end
    table = Markdown.Table([titles], [:l, :c, :c])
    for p in packages
        push!(table.rows, markdown(p))
    end
    Markdown.MD(table)
end

# Build the docs
makedocs(
    sitename = "JuliaDocs",
    format = :html,
    pages = [
        "Home" => "index.md",
    ],
)

deploydocs(
    julia = "0.7",
    repo = "github.com/JuliaDocs/juliadocs.github.io.git",
    target = "build",
    deps = nothing,
    make = nothing,
    branch = "master",
    latest = "source",
)
