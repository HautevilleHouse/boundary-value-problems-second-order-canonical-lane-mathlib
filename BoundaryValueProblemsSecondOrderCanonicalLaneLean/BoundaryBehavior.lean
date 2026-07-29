import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BoundaryBehaviorPackage where
  boundaryCondition : Type
  dirichletRegularity : Prop
  neumannRegularity : Prop
  robinRegularity : Prop

structure BoundaryBehaviorEvidence (B : BoundaryBehaviorPackage) where
  dirichletRegularityClosed : B.dirichletRegularity
  neumannRegularityClosed : B.neumannRegularity
  robinRegularityClosed : B.robinRegularity

def BoundaryBehaviorClosed (B : BoundaryBehaviorPackage) : Prop :=
  B.dirichletRegularity ∧ B.neumannRegularity ∧ B.robinRegularity

theorem boundary_behavior_closed_from_evidence (B : BoundaryBehaviorPackage) (E : BoundaryBehaviorEvidence B) : BoundaryBehaviorClosed B := by
  exact And.intro E.dirichletRegularityClosed (And.intro E.neumannRegularityClosed E.robinRegularityClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse