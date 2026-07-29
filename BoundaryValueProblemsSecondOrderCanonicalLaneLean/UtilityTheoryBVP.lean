import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure UtilityOptimizationProblem where
  consumptionSpace : Type u
  utilityFunction : Type v
  budgetConstraint : Prop
  firstOrderCondition : Prop
  boundaryCondition : Prop
  optimalSolution : Prop
  uniqueness : Prop
  envelopeTheorem : Prop
  conclusion : optimalSolution ∧ uniqueness

structure UtilityOptimizationEvidence (U : UtilityOptimizationProblem) where
  consumptionSpaceClosed : U.consumptionSpace
  utilityFunctionClosed : U.utilityFunction
  budgetConstraintClosed : U.budgetConstraint
  firstOrderConditionClosed : U.firstOrderCondition
  boundaryConditionClosed : U.boundaryCondition
  optimalSolutionClosed : U.optimalSolution
  uniquenessClosed : U.uniqueness
  envelopeTheoremClosed : U.envelopeTheorem

def UtilityOptimizationClosed (U : UtilityOptimizationProblem) : Prop :=
  U.optimalSolution ∧ U.uniqueness

theorem utility_optimization_closed_from_evidence (U : UtilityOptimizationProblem) (E : UtilityOptimizationEvidence U) :
    UtilityOptimizationClosed U := by
  exact And.intro E.optimalSolutionClosed E.uniquenessClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse