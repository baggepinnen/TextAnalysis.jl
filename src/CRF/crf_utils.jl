function log_sum_exp(z)
    @assert eltype(z) <: Number
    m = maximum(z, dims = 2)
    log.(sum(exp.(z .- m), dims = 1))
end
