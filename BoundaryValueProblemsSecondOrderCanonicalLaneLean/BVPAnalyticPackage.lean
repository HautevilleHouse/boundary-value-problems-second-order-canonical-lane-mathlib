import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.BVPCore
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.BVPObjects

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure EulerEquationBVPPackage where
  discountRate : ℝ
  utilityFunction : ℝ → ℝ
  productionFunction : ℝ → ℝ
  capitalEvolution : ℝ → ℝ → ℝ
  transversalityCondition : Prop
  eulerEquation : Prop
  boundaryConditions : Prop

default instance : EulerEquationBVPPackage := { 
  discountRate := 0.05
  utilityFunction := λ c => Real.log c
  productionFunction := λ k => k^0.3
  capitalEvolution := λ k c => 0.3 * k^0.3 - c
  transversalityCondition := True
  eulerEquation := True
  boundaryConditions := True
}

structure EulerEquationEvidence (E : EulerEquationBVPPackage) where
  eulerEquationClosed : E.eulerEquation
  boundaryConditionsClosed : E.boundaryConditions
  transversalityConditionClosed : E.transversalityCondition

def EulerEquationBVPClosed (E : EulerEquationBVPPackage) : Prop :=
  E.eulerEquation ∧ E.boundaryConditions ∧ E.transversalityCondition

theorem euler_equation_bvp_closed_from_evidence (E : EulerEquationBVPPackage) 
    (Ev : EulerEquationEvidence E) : EulerEquationBVPClosed E := by
  exact And.intro Ev.eulerEquationClosed (And.intro Ev.boundaryConditionsClosed Ev.transversalityConditionClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
