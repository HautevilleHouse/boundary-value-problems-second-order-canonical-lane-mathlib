import BoundaryValueProblemsSecondOrderCanonicalLaneLean.LaxMilgramBilinearForm

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure WeakSolutionPackage {S : SobolevSpacePackage} (B : BilinearFormPackage S) where
  sourceTerm : S.domain → ℝ
  solution : S.domain
  weakEquation : ∀ (v : S.domain), B.form solution v = sourceTerm v
  uniqueness : Prop

structure WeakSolutionEvidence {S : SobolevSpacePackage} {B : BilinearFormPackage S} (W : WeakSolutionPackage B) where
  weakEquationClosed : ∀ (v : S.domain), B.form W.solution v = W.sourceTerm v
  uniquenessClosed : W.uniqueness

def WeakSolutionClosed {S : SobolevSpacePackage} {B : BilinearFormPackage S} (W : WeakSolutionPackage B) : Prop :=
  (∀ (v : S.domain), B.form W.solution v = W.sourceTerm v) ∧ W.uniqueness

theorem weak_solution_closed_from_evidence {S : SobolevSpacePackage} {B : BilinearFormPackage S} (W : WeakSolutionPackage B) (E : WeakSolutionEvidence W) :
    WeakSolutionClosed W := by
  exact And.intro E.weakEquationClosed E.uniquenessClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
