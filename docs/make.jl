push!(LOAD_PATH, "../src/")

using Documenter
using SnowflakePlots

DocMeta.setdocmeta!(SnowflakePlots, :DocTestSetup, :(using SnowflakePlots, Snowflake),
    recursive=true)

makedocs(
    sitename = "SnowflakePlots",
    format = Documenter.HTML(),
    modules = [SnowflakePlots]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
