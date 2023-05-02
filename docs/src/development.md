# SnowflakePlots development

## Installing SnowflakePlots for local development

When developing SnowflakePlots, you must ensure that you are using a local copy of
SnowflakePlots, not the latest released version. The easiest way to achieve that is to set
the project to the local directory.

If you are starting a new instance of Julia, then you can activate the SnowflakePlots
project with

```bash
julia --project=.
```

Or, if you are inside a script or REPL, you can use

```julia
using Pkg
Pkg.activate(".")
```

If the current directory is not the SnowflakePlots project, replace `.` with the
SnowflakePlots project path.

You may also want to install a specific branch of the Snowflake package instead of
installing the version that is registered on JuliaHub. The following Julia REPL examples
shows how to install the `main` branch of Snowflake. A different branch can be installed by
replacing `main` by the desired branch name in the call to `Pkg.add`.


```julia
using Pkg
Pkg.add(url="https://github.com/anyonlabs/Snowflake.jl.git", rev="main")
Pkg.instantiate()
```


## Running tests

First open a Julia REPL in the current project

```bash
julia --project=.
```

and run the tests

```julia
using Pkg
Pkg.test()
```

## Building the documentation

First open a Julia REPL using the docs project

```bash
julia --project=docs
```

If it is the first time that you are building the docs, you need to instantiate the Julia
project and add the SnowflakePlots project as a development dependency. This means that the
version of the Snowflake package which is loaded is the one at the specified path, `pwd()`,
and not the one registered at JuliaHub.

```julia
using Pkg
Pkg.develop(PackageSpec(path=pwd()))
Pkg.instantiate()
```

At this point, the project status should be similar to the one below. The versions might be
slightly different, but what is important is that the `Status` line refers to the
`docs/Project.toml` and that `SnowflakeProjects` refers to `<pwd()>/SnowflakePlots.jl`.

```julia
Pkg.status()

# output
      Status `<pwd()>/SnowflakePlots.jl/docs/Project.toml`
  [e30172f5] Documenter v0.27.24
  [7bd9edc1] Snowflake v0.1.0 `git@github.com:anyonlabs/Snowflake.jl.git#main`
  [fa4a7b36] SnowflakePlots v0.1.0 `~/Code/SnowflakePlots.jl`
```

You may also want to install a specific branch of Snowflake as shown in the
[Installing SnowflakePlots for local development](@ref) section.

Then you can run

```julia
include("docs/make.jl")
```

## Determining the coverage locally

If you haven't already, instantiate the project with Julia's package manager.

```bash
julia --project=. -e 'using Pkg; Pkg.Instantiate()'
```

You can run coverage locally from the project directory using

```bash
julia --project=. coverage.jl
```

The script returns the number of covered and total lines as output. An example output is
shown below

```text
Covered lines: 1373
Total lines: 1383
Coverage percentage: 0.9927693420101229
```
