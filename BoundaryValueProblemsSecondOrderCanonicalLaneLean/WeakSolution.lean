import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure WeakSolution (Ω : Type) [MeasureSpace Ω] where
  functionSpace : Set (Ω → ℝ)
  bilinearForm : (Ω → ℝ) → (Ω → ℝ) → ℝ
  linearFunctional : (Ω → ℝ) → ℝ
  solution : Ω → ℝ
  weakFormSatisfied : Prop

structure WeakSolutionEvidence (W : WeakSolution Ω) where
  functionSpaceClosed : Set.Nonempty W.functionSpace
  bilinearContinuous : Prop
  linearBounded : Prop
  weakFormSatisfiedClosed : W.weakFormSatisfied

def WeakSolutionClosed (W : WeakSolution Ω) : Prop :=
  Set.Nonempty W.functionSpace ∧ W.weakFormSatisfied

theorem weak_solution_closed_from_evidence (W : WeakSolution Ω) (E : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro E.functionSpaceClosed E.weakFormSatisfiedClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse