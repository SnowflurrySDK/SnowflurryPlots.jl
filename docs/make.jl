push!(LOAD_PATH, "../src/")

using Documenter
using Snowflake
using SnowflakePlots

DocMeta.setdocmeta!(SnowflakePlots, :DocTestSetup, :(using SnowflakePlots, Snowflake),
    recursive=true)

makedocs(
    sitename = "SnowflakePlots",
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "false"),
    modules = [SnowflakePlots],
    pages = [
        "Home" => "index.md",
        "Library" => "library.md",
    ],
    strict = true,
    checkdocs = :exports
)
