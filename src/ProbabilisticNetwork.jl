module ProbabilisticNetwork

# Dependencies
using StatsBase
using Distributions
using Cairo

export nestedness, nestedness_axis,

  # Measures of centrality
  centrality_katz,

  # Links and connectances
  links, links_var, connectance,

  # Measures of degree
  degree_out, degree_in, degree_out_var, degree_in_var, degree, degree_var,

  # Expected number of species with 0 interactions
  species_is_free, free_species,

  # Matrix manipulation utilities
  make_unipartite, make_threshold, make_binary, make_bernoulli, nodiag,

  # Probability algebra utilities
  checkprob, i_esp, i_var, a_var, m_var,

  # NAIVE !!! null models
  null1, null2, null3out, null3in, nullmodel,

  # Draw
  draw_matrix

include(joinpath(".", "centrality.jl"))
include(joinpath(".", "connectance.jl"))
include(joinpath(".", "degree.jl"))
include(joinpath(".", "free_species.jl"))
include(joinpath(".", "matrix_utils.jl"))
include(joinpath(".", "nestedness.jl"))
include(joinpath(".", "proba_utils.jl"))
include(joinpath(".", "nullmodels.jl"))
include(joinpath(".", "draw.jl"))

end
