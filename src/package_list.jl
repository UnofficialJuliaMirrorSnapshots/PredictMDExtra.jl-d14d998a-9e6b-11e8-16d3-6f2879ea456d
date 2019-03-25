##### Beginning of file

function _package_list()::Vector{String}
    package_list_raw::Vector{String} = String[
        "Atom",
        "AxisArrays",
        "CSV",
        "CSVFiles",
        "CUDAapi",
        "Cassette",
        "CategoricalArrays",
        "ClassImbalance",
        "Combinatorics",
        "DataDeps",
        "DataFrames",
        "DataFramesMeta",
        "DecisionTree",
        "DefaultApplication",
        "Distributions",
        "Documenter",
        "FileIO",
        "Flux",
        "GLM",
        "GPUArrays",
        "GZip",
        "HTTP",
        "IterableTables",
        "IndirectArrays",
        "JLD2",
        "Knet",
        "LIBSVM",
        "Literate",
        "MLBase",
        "MbedTLS",
        "MemPool",
        "Metalhead",
        "Mux",
        "NamedArrays",
        "NumericalIntegration",
        "OnlineStats",
        "PGFPlotsX",
        "PooledArrays",
        "ProgressMeter",
        "Query",
        "RData",
        "RDatasets",
        "ROCAnalysis",
        "Requires",
        "Revise",
        "SplitApplyCombine",
        "StatsBase",
        "StatsModels",
        "Tables",
        "TextParse",
        "UnicodePlots",
        "ValueHistories",
        ]
    package_list::Vector{String} = sort(unique(strip.(package_list_raw)))
    return package_list
end

function _stdlib_list()::Vector{String}
    stdlib_list_raw::Vector{String} = String[
        "InteractiveUtils",
        "LinearAlgebra",
        "Pkg",
        "Random",
        "Statistics",
        "Test",
        ]
    stdlib_list::Vector{String} = sort(unique(strip.(stdlib_list_raw)))
    return stdlib_list
end

##### End of file
