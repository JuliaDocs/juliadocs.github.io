using Documenter

makedocs(
    sitename = "JuliaDocs",
    format = Documenter.Formats.HTML,
    pages = ["Home" => "index.md"],
)

deploydocs(
    repo = "github.com/JuliaDocs/juliadocs.github.io.git",
    target = "build",
    deps = nothing,
    make = nothing,
    branch = "master",
    latest = "source",
)
