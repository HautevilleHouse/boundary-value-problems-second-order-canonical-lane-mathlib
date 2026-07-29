import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderBVPFoundation

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure GrowthModelPackage where
  capitalStock : ℝ → ℝ
  consumption : ℝ → ℝ
  productionFunction : ℝ → ℝ
  depreciationRate : ℝ
  timeHorizon : ℝ
  initialCapital : ℝ
  terminalCapital : ℝ
  eulerEquation : Prop
  budgetConstraint : Prop
  solutionExists : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  eulerEquationClosed : G.eulerEquation
  budgetConstraintClosed : G.budgetConstraint
  solutionExistsClosed : G.solutionExists

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.eulerEquation ∧ G.budgetConstraint ∧ G.solutionExists

theorem growth_model_closed_from_evidence
    (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.eulerEquationClosed (And.intro E.budgetConstraintClosed E.solutionExistsClosed)

def ConstrainedGrowthModelClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_growth_model_endgame (A : AdmissibleClass) :
    ConstrainedGrowthModelClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse