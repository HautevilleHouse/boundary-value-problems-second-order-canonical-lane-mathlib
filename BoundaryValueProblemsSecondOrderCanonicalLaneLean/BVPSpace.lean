import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BVPSpace where
  domain : Type
  boundary : Type
  operator : (domain → ℝ) → (domain → ℝ)
  solutionSpace : Set (domain → ℝ)
  boundaryCondition : (domain → ℝ) → Prop
  wellPosed : Prop
  closedCondition : wellPosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse