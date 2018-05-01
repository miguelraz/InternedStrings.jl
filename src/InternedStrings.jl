module InternedStrings
using Base

export InternedString, @i_str, intern

include("corefunctionality.jl")

@deprecate InternedString(str) intern(str)

function Base.convert(::typeof(InternedString), str::AbstractString)
    warning("InternedString is no longer a type. It is just a function, and a deprecated one at that")
    InternedString(str)
end

end # module
