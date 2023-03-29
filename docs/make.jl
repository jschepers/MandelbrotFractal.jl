using MandelbrotFractal
using Documenter

DocMeta.setdocmeta!(MandelbrotFractal, :DocTestSetup, :(using MandelbrotFractal); recursive=true)

makedocs(;
    modules=[MandelbrotFractal],
    authors="jschepers <judith.schepers@vis.uni-stuttgart.de> and contributors",
    repo="https://github.com/jschepers/MandelbrotFractal.jl/blob/{commit}{path}#{line}",
    sitename="MandelbrotFractal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jschepers.github.io/MandelbrotFractal.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jschepers/MandelbrotFractal.jl",
    devbranch="main",
)
