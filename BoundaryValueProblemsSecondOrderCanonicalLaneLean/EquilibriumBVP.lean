import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderBVPFoundation

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure EquilibriumPackage where
  agents : Nat
  goods : Nat
  utilityFunctions : List (ℝ → ℝ)
  endowments : List ℝ
  priceFunction : ℝ → ℝ
  marketClearingCondition : Prop
  individualOptimalityCondition : Prop
  solutionExists : Prop

structure EquilibriumEvidence (E : EquilibriumPackage) where
  marketClearingClosed : E.marketClearingCondition
  individualOptimalityClosed : E.individualOptimalityCondition
  solutionExistsClosed : E.solutionExists

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  E.marketClearingCondition ∧ E.individualOptimalityCondition ∧ E.solutionExists

theorem equilibrium_closed_from_evidence
    (E : EquilibriumPackage) (Ev : EquilibriumEvidence E) :
    EquilibriumClosed E := by
  exact And.intro Ev.marketClearingClosed (And.intro Ev.individualOptimalityClosed Ev.solutionExistsClosed)

def ConstrainedEquilibriumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_equilibrium_endgame (A : AdmissibleClass) :
    ConstrainedEquilibriumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse