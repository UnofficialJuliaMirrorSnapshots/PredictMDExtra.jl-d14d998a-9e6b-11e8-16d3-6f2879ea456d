#!/bin/bash

set -ev

julia --check-bounds=yes --color=yes ./ci/travis/package-overlap.jl

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.Registry.add("General");
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.Registry.update();
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.Registry.add(Pkg.RegistrySpec(name="BCBIRegistry",url="https://github.com/bcbi/BCBIRegistry.git",uuid="26a550a3-39fe-4af4-af6d-e8814c2b6dd9",));
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.Registry.update();
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.build("PredictMDExtra")
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.add(Pkg.PackageSpec(name = "PredictMD", rev = "master"))
    '
    
rm -rf $HOME/.julia
cd $HOME
mkdir temp-environment
cd temp-environment
touch Project.toml
julia --project=. -e '
    import Pkg;
    Pkg.add(Pkg.PackageSpec(name = "PredictMD", rev = "master"));
    Pkg.add(Pkg.PackageSpec(path = ENV["TRAVIS_BUILD_DIR"]))
    '
