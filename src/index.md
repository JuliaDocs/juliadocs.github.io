# JuliaDocs

This is the landing page of the [JuliaDocs GitHub organisation](https://github.com/JuliaDocs/).
JuliaDocs is an umbrella organization for documentation-related packages and repositories
of [Julia programming language](https://julialang.org/) ecosystem.

If you are looking for the documentation for the core Julia language, you should head over
to <https://docs.julialang.org/>

JuliaDocs is the home for the following packages and repositories:

* [Documenter -- package to combine docstrings with Markdown pages for generating documentation](https://github.com/JuliaDocs/Documenter.jl)
* [DocumenterMarkdown -- Documenter's Markdown / MkDocs backend](https://github.com/JuliaDocs/DocumenterMarkdown.jl)
* [DocumenterLaTeX -- Documenter's LaTeX / PDF backend](https://github.com/JuliaDocs/DocumenterLaTeX.jl)
* [DocumenterTools -- Extra tools for setting up Documenter](https://github.com/JuliaDocs/DocumenterTools.jl)
* [DocStringExtensions -- programmatic ways to generate parts of docstrings](https://github.com/JuliaDocs/DocStringExtensions.jl)
* [Highlights -- a code highlighter for the Julia language, written in Julia](https://github.com/JuliaDocs/Highlights.jl)
* [Julia cheat sheet](https://juliadocs.github.io/Julia-Cheat-Sheet/) ([repository](https://github.com/JuliaDocs/Julia-Cheat-Sheet))

## Packages

```@eval
import Main: PackageDefinition, package_table_markdown
[
PackageDefinition(
    "Documenter", "https://github.com/JuliaDocs/Documenter.jl",
    [
        "stable" => "https://juliadocs.github.io/Documenter.jl/stable/",
        "latest" => "https://juliadocs.github.io/Documenter.jl/latest/",
    ],
    [
        "https://travis-ci.org/JuliaDocs/Documenter.jl.svg?branch=master" => "https://travis-ci.org/JuliaDocs/Documenter.jl",
        "https://ci.appveyor.com/api/projects/status/xx7nimfpnl1r4gx0?svg=true" => "https://ci.appveyor.com/project/JuliaDocs/documenter-jl",
        "https://codecov.io/gh/JuliaDocs/Documenter.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/Documenter.jl",
    ]
),
PackageDefinition(
    "DocumenterMarkdown", "https://github.com/JuliaDocs/DocumenterMarkdown.jl",
    [
        "stable" => "https://juliadocs.github.io/DocumenterMarkdown.jl/stable/",
        "latest" => "https://juliadocs.github.io/DocumenterMarkdown.jl/latest/",
    ],
    [
        "https://travis-ci.org/JuliaDocs/DocumenterMarkdown.jl.svg?branch=master" => "https://travis-ci.org/JuliaDocs/DocumenterMarkdown.jl",
        "https://ci.appveyor.com/api/projects/status/xx7nimfpnl1r4gx0?svg=true" => "https://ci.appveyor.com/project/JuliaDocs/documentermarkdown-jl",
        "https://codecov.io/gh/JuliaDocs/DocumenterMarkdown.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterMarkdown.jl",
    ]
),
PackageDefinition(
    "DocumenterLaTeX", "https://github.com/JuliaDocs/DocumenterLaTeX.jl",
    [
        "stable" => "https://juliadocs.github.io/DocumenterLaTeX.jl/stable/",
        "latest" => "https://juliadocs.github.io/DocumenterLaTeX.jl/latest/",
    ],
    [
        "https://travis-ci.org/JuliaDocs/DocumenterLaTeX.jl.svg?branch=master" => "https://travis-ci.org/JuliaDocs/DocumenterLaTeX.jl",
        "https://ci.appveyor.com/api/projects/status/xx7nimfpnl1r4gx0?svg=true" => "https://ci.appveyor.com/project/JuliaDocs/documenterlatex-jl",
        "https://codecov.io/gh/JuliaDocs/DocumenterLaTeX.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterLaTeX.jl",
    ]
),
PackageDefinition(
    "DocumenterTools", "https://github.com/JuliaDocs/DocumenterTools.jl",
    [
        "stable" => "https://juliadocs.github.io/DocumenterTools.jl/stable/",
        "latest" => "https://juliadocs.github.io/DocumenterTools.jl/latest/",
    ],
    [
        "https://travis-ci.org/JuliaDocs/DocumenterTools.jl.svg?branch=master" => "https://travis-ci.org/JuliaDocs/DocumenterTools.jl",
        "https://ci.appveyor.com/api/projects/status/xx7nimfpnl1r4gx0?svg=true" => "https://ci.appveyor.com/project/JuliaDocs/documentertools-jl",
        "https://codecov.io/gh/JuliaDocs/DocumenterTools.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocumenterTools.jl",
    ]
),
PackageDefinition(
    "DocStringExtensions", "https://github.com/JuliaDocs/DocStringExtensions.jl",
    [
        "stable" => "https://juliadocs.github.io/DocStringExtensions.jl/stable/",
        "latest" => "https://juliadocs.github.io/DocStringExtensions.jl/latest/",
    ],
    [
        "https://travis-ci.org/JuliaDocs/DocStringExtensions.jl.svg?branch=master" => "https://travis-ci.org/JuliaDocs/DocStringExtensions.jl",
        "https://ci.appveyor.com/api/projects/status/7bixd69chxps91wx/branch/master?svg=true" => "https://ci.appveyor.com/project/JuliaDocs/docstringextensions-jl/branch/master",
        "https://codecov.io/gh/JuliaDocs/DocStringExtensions.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/DocStringExtensions.jl",
    ]
),
PackageDefinition(
    "Highlights", "https://github.com/JuliaDocs/Highlights.jl",
    [
        "stable" => "https://juliadocs.github.io/Highlights.jl/stable/",
        "latest" => "https://juliadocs.github.io/Highlights.jl/latest/",
    ],
    [
        "https://travis-ci.org/JuliaDocs/Highlights.jl.svg?branch=master" => "https://travis-ci.org/JuliaDocs/Highlights.jl",
        "https://ci.appveyor.com/api/projects/status/qnphq3a8eph3o979/branch/master?svg=true" => "https://ci.appveyor.com/project/MichaelHatherly/highlights-jl/branch/master",
        "https://codecov.io/gh/JuliaDocs/Highlights.jl/branch/master/graph/badge.svg" => "https://codecov.io/gh/JuliaDocs/Highlights.jl",
    ]
),
] |> package_table_markdown
```
