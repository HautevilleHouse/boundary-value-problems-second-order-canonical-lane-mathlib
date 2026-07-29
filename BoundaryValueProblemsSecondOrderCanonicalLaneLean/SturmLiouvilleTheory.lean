import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SturmLiouvilleProblem (a b : ℝ) where
  coefficientFunctions : (ℝ → ℝ) × (ℝ → ℝ) × (ℝ → ℝ)
  boundaryConditions : (ℝ → ℝ) × (ℝ → ℝ)
  eigenvalues : List ℝ
  eigenfunctions : List (ℝ → ℝ)
  spectralTheorem : Prop

structure SturmLiouvilleEvidence (S : SturmLiouvilleProblem a b) where
  spectralTheoremClosed : S.spectralTheorem
  eigenvaluesReal : Prop
  eigenfunctionsOrthogonal : Prop
  completeness : Prop

def SturmLiouvilleClosed (S : SturmLiouvilleProblem a b) : Prop :=
  S.spectralTheorem ∧ S.eigenvaluesReal ∧ S.eigenfunctionsOrthogonal ∧ S.completeness

theorem sturm_liouville_closed_from_evidence (S : SturmLiouvilleProblem a b) (E : SturmLiouvilleEvidence S) : SturmLiouvilleClosed S := by
  exact And.intro E.spectralTheoremClosed (And.intro E.eigenvaluesReal (And.intro E.eigenfunctionsOrthogonal E.completeness))

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse