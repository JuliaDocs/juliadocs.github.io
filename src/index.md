# JuliaDocs

This is the landing page of the [JuliaDocs GitHub organisation](https://github.com/JuliaDocs/).
JuliaDocs is an umbrella organization for documentation-related packages and repositories
of [Julia programming language](https://julialang.org/) ecosystem.

!!! note
    If you are looking for the documentation for the core Julia language, you should head over
    to <https://docs.julialang.org/>

JuliaDocs is the home for the following packages and repositories:

* [Documenter -- Package to combine docstrings with Markdown pages for generating documentation](https://github.com/JuliaDocs/Documenter.jl)
* [DocumenterCitations -- Support for BibTeX citations in Documenter](https://github.com/JuliaDocs/DocumenterCitations.jl)
* [DocumenterMarkdown -- Documenter's Markdown / MkDocs backend](https://github.com/JuliaDocs/DocumenterMarkdown.jl)
* [DocumenterLaTeX -- Documenter's LaTeX / PDF backend](https://github.com/JuliaDocs/DocumenterLaTeX.jl)
* [DocumenterTools -- Extra tools for setting up Documenter](https://github.com/JuliaDocs/DocumenterTools.jl)
* [DocStringExtensions -- Programmatic ways to generate parts of docstrings](https://github.com/JuliaDocs/DocStringExtensions.jl)
* [Highlights -- A code highlighter for the Julia language, written in Julia](https://github.com/JuliaDocs/Highlights.jl)
* [Julia cheat sheet](https://cheatsheet.juliadocs.org/) ([repository](https://github.com/JuliaDocs/Julia-Cheat-Sheet))

## Packages

```@eval
import Main: PackageDefinition, package_table_markdown
[
PackageDefinition(
    "Documenter", "https://github.com/JuliaDocs/Documenter.jl",
    [
        "stable" => "https://documenter.juliadocs.org/stable/",
        "dev" => "https://documenter.juliadocs.org/dev/",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/Documenter.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/Documenter.jl",
    ]
),
PackageDefinition(
    "DocumenterCitations", "https://github.com/JuliaDocs/DocumenterCitations.jl",
    [
        "stable" => "https://juliadocs.org/DocumenterCitations.jl/stable/",
        "dev" => "https://juliadocs.org/DocumenterCitations.jl/dev/",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/DocumenterCitations.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterCitations.jl",
    ]
),
PackageDefinition(
    "DocumenterMarkdown", "https://github.com/JuliaDocs/DocumenterMarkdown.jl",
    [
        "README" => "https://github.com/JuliaDocs/DocumenterMarkdown.jl#documentermarkdown",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/DocumenterMarkdown.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterMarkdown.jl",
    ]
),
PackageDefinition(
    "DocumenterLaTeX", "https://github.com/JuliaDocs/DocumenterLaTeX.jl",
    [
        "README" => "https://github.com/JuliaDocs/DocumenterLaTeX.jl#documenterlatex",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/DocumenterLaTeX.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterLaTeX.jl",
    ]
),
PackageDefinition(
    "DocumenterTools", "https://github.com/JuliaDocs/DocumenterTools.jl",
    [
        "README" => "https://github.com/JuliaDocs/DocumenterTools.jl#documentertools",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/DocumenterTools.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterTools.jl",
    ]
),
PackageDefinition(
    "DocStringExtensions", "https://github.com/JuliaDocs/DocStringExtensions.jl",
    [
        "stable" => "https://DocStringExtensions.juliadocs.org/stable/",
        "dev" => "https://DocStringExtensions.juliadocs.org/dev/",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/DocStringExtensions.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocStringExtensions.jl",
    ]
),
PackageDefinition(
    "Highlights", "https://github.com/JuliaDocs/Highlights.jl",
    [
        "stable" => "https://Highlights.juliadocs.org/stable/",
        "dev" => "https://Highlights.juliadocs.org/dev/",
    ],
    [
        "https://codecov.io/gh/JuliaDocs/Highlights.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/Highlights.jl",
    ]
),
] |> package_table_markdown
```
