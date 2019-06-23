# PredictMDExtra

<table>
    <tbody>
        <tr>
            <td>Repo Status</td>
            <td>
            <a href="https://www.repostatus.org/#active">
            <img
            src="https://www.repostatus.org/badges/latest/active.svg"
            alt="Project Status: Active – The project has reached a stable,
            usable state and is being actively developed." />
            </a></td>
        </tr>
        <tr>
            <td>Travis CI</td>
            <td>
            <a href="https://travis-ci.org/bcbi/PredictMDExtra.jl/branches">
            <img
            src=
            "https://travis-ci.org/bcbi/PredictMDExtra.jl.svg?branch=master"
            /></a></td>
        </tr>
        <tr>
            <td>CodeCov</td>
            <td>
            <a
        href="https://codecov.io/gh/bcbi/PredictMDExtra.jl/branch/master">
            <img
            src=
"https://codecov.io/gh/bcbi/PredictMDExtra.jl/branch/master/graph/badge.svg"
            /></a></td>
        </tr>
    </tbody>
</table>

PredictMDExtra is a meta-package that installs all of the Julia dependencies
of [PredictMD](https://predictmd.net) (but not PredictMD itself).

Installing PredictMDExtra does not install PredictMD. If you would like a
convenient way of installing PredictMD and all of its Julia dependencies,
see [PredictMDFull](https://github.com/bcbi/PredictMDFull.jl).

| Table of Contents |
| ----------------- |
| [Installation](#installation) |

## Installation

PredictMDExtra is registered in the Julia General registry. Therefore, to
install PredictMDExtra, simply open Julia and run the following three lines:
```julia
import Pkg
Pkg.add("PredictMDExtra")
import PredictMDExtra
```

That being said, PredictMDExtra is not very useful by itself. Instead, I
recommend that you install PredictMDFull, which includes both PredictMD and
PredictMDExtra. To install PredictMDFull, simply open Julia and run the
following three lines:
```julia
import Pkg
Pkg.add("PredictMDFull")
import PredictMDFull
```
