import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BoundaryCondition (Ω : Type) where
  domain : Set Ω
  boundary : Set Ω
  conditionType : String
  functionSpecified : (Ω → ℝ) → Prop

structure BoundaryConditionEvidence (B : BoundaryCondition Ω) where
  domainNonempty : Set.Nonempty B.domain
  conditionConsistent : Prop
  conditionSatisfied : B.functionSpecified (fun _ => 0)

def BoundaryConditionClosed (B : BoundaryCondition Ω) : Prop :=
  Set.Nonempty B.domain ∧ B.conditionConsistent

theorem boundary_condition_closed_from_evidence (B : BoundaryCondition Ω) (E : BoundaryConditionEvidence B) : BoundaryConditionClosed B := by
  exact And.intro E.domainNonempty E.conditionConsistent

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse