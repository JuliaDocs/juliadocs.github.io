#
# This script can regenerate index.md. You can run it via
#
#   julia --proj=. update.jl > src/index.md
#
using JSON

# query information about all JuliaDocs repositories
data = read(`gh repo list JuliaDocs --json "isArchived,description,homepageUrl,name,url,defaultBranchRef"`, String)
repos = JSON.parse(data)

# exclude archived repositories
repos = filter!(x -> !x["isArchived"], repos)

# exclude some other repostiroies
excluded = [
    "juliadocs.github.io",
    "DocumentationGeneratorRegistry",
]
repos = filter!(x -> x["name"] ∉ excluded, repos)

# sort alphabetical
sort!(repos, by = x -> x["name"])


# Now we print the index.md content. This just hardcoded a header and footer.
# This is quick & dirty hack; a full template system might be nicer in theory,
# but in practice this is good enough and dead simple.
print("""
# JuliaDocs

This is the landing page of the [JuliaDocs GitHub organisation](https://github.com/JuliaDocs/).
JuliaDocs is an umbrella organization for documentation-related packages and repositories
of [Julia programming language](https://julialang.org/) ecosystem.

!!! note
    If you are looking for the documentation for the core Julia language, you should head over
    to <https://docs.julialang.org/>

JuliaDocs is the home for the following packages and repositories:
""")

for r in repos
    name = r["name"]
    url = r["url"]
    desc = r["description"]
    println("* [$name -- $desc]($url)")
end

# TODO: should we link to the homepage URL, if any, and provide the
# repository link separately, like it was done for the cheat sheet:
#
# * [Julia cheat sheet](https://cheatsheet.juliadocs.org/) ([repository](https://github.com/JuliaDocs/Julia-Cheat-Sheet))

print("""

## Packages

```@eval
import Main: PackageDefinition, package_table_markdown
[
""")
for r in repos
    name = r["name"]
    name_no_suffix = endswith(name, ".jl") ? name[1:end-3] : name
    url = r["url"]
    homepageUrl = r["homepageUrl"]
    desc = r["description"]
    branch = r["defaultBranchRef"]["name"]

    print("""
    PackageDefinition(
        "$name_no_suffix", "$url",
        [
    """)
    if isempty(homepageUrl)
        print("""
                "README" => "https://github.com/JuliaDocs/$name",
        """)
    else
        # HACK / workaround for Highlights.jl
        if endswith(homepageUrl, "/stable")
            homepageUrl = replace(homepageUrl, "/stable" => "")
        end
        print("""
                "stable" => "$(joinpath(homepageUrl,"stable/"))",
                "dev" => "$(joinpath(homepageUrl,"dev/"))",
        """)
    end
    print("""
        ],
        [
            "https://codecov.io/gh/JuliaDocs/$name/branch/$branch/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/$name",
        ]
    ),
    """)
end

print("""
] |> package_table_markdown
```
""")