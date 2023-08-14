using Coverage
using Pkg
using SnowflurryPlots

Pkg.test("SnowflurryPlots"; coverage = true)
# process '*.cov' files
coverage = process_folder("SnowflurryPlots.jl/src") # defaults to src/; alternatively, supply the folder name as argument
# coverage = append!(coverage, process_folder("deps"))  # useful if you want to analyze more than just src/
# process '*.info' files, if you collected them
coverage = merge_coverage_counts(
    coverage,
    filter!(
        let prefixes = (joinpath(pwd(), "SnowflurryPlots.jl/src", ""))
            c -> any(p -> startswith(c.filename, p), prefixes)
        end,
        LCOV.readfolder("SnowflurryPlots.jl/test"),
    ),
)
LCOV.writefile("SnowflurryPlots.jl/lcov.info", coverage)

# Get total coverage for all Julia files
covered_lines, total_lines = get_summary(coverage)
# Or process a single file
# @show get_summary(process_file(joinpath("src", "Snowflurry.jl")

#clean .cov files
clean_folder("SnowflurryPlots.jl/src")
clean_folder("SnowflurryPlots.jl/test")
clean_folder("src")
clean_folder("test")
clean_folder("protobuf")

return covered_lines, total_lines
