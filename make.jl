using Documenter

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
