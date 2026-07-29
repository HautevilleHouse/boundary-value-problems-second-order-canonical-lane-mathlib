import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderBVPFoundation

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure UtilityMaximizationPackage where
  timeHorizon : ℝ
  discountRate : ℝ
  utilityFunction : ℝ → ℝ
  productionFunction : ℝ → ℝ
  initialCapital : ℝ
  terminalCapitalConstraint : ℝ
  eulerEquation : Prop
  transversalityCondition : Prop
  solutionExists : Prop

structure UtilityMaximizationEvidence (U : UtilityMaximizationPackage) where
  eulerEquationClosed : U.eulerEquation
  transversalityConditionClosed : U.transversalityCondition
  solutionExistsClosed : U.solutionExists

def UtilityMaximizationClosed (U : UtilityMaximizationPackage) : Prop :=
  U.eulerEquation ∧ U.transversalityCondition ∧ U.solutionExists

theorem utility_maximization_closed_from_evidence
    (U : UtilityMaximizationPackage) (E : UtilityMaximizationEvidence U) :
    UtilityMaximizationClosed U := by
  exact And.intro E.eulerEquationClosed (And.intro E.transversalityConditionClosed E.solutionExistsClosed)

def ConstrainedUtilityMaximizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_utility_maximization_endgame (A : AdmissibleClass) :
    ConstrainedUtilityMaximizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse