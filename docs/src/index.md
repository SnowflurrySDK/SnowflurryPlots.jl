# SnowflakePlots.jl

[SnowflakePlots](https://github.com/anyonlabs/SnowflakePlots.jl) is a Julia package that
provides multiple visualization tools for the
[Snowflake](https://github.com/anyonlabs/Snowflake.jl) package.

!!! warning
	SnowflakePlots has yet to reach version 1.0, but we intend to keep compatibility with
    what is documented here. We will only make a breaking change if something is broken.
    After version 1.0, the public API will be stable and only change with major releases.

# Installation

The following installation steps are for people interested in using SnowflakePlots in their
own applications. If you are interested in helping to develop SnowflakePlots, head right
over to our [Developing SnowflakePlots](./development.md) page.

Make sure your system has Julia installed. If not, download the latest version from
[https://julialang.org/downloads/](https://julialang.org/downloads/).

Since Snowflake and SnowflakePlots are still in the pre-release phase, it is recommended
to install Snowflake manually before installing SnowflakePlots. Installation instructions
for Snowflake are provided in the
[Snowflake repository](https://github.com/anyonlabs/Snowflake.jl).

Until a stable release of SnowflakePlots becomes available, it is recommended to install
SnowflakePlots by checking out the `main` branch from the GitHub repository. This can be
achieved by typing the following commands in the Julia REPL:
```julia
import Pkg
Pkg.add(url="https://github.com/anyonlabs/SnowflakePlots.jl", rev="main")
```
