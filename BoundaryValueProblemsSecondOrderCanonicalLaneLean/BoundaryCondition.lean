import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

inductive BoundaryType : Type where
  | Dirichlet
  | Neumann
  | Robin

structure BoundaryCondition (∂Ω : Type) where
  boundaryType : BoundaryType
  boundaryData : ∂Ω → ℝ
  regularity : Prop

structure BoundaryConditionEvidence (B : BoundaryCondition ∂Ω) where
  regularityClosed : B.regularity

def BoundaryConditionClosed (B : BoundaryCondition ∂Ω) : Prop :=
  B.regularity

theorem boundary_condition_closed_from_evidence (B : BoundaryCondition ∂Ω) (E : BoundaryConditionEvidence B) : BoundaryConditionClosed B :=
  E.regularityClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse