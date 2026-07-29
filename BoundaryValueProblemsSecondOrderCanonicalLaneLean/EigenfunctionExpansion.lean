import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure EigenfunctionExpansion (H : Type) [InnerProductSpace ℝ H] where
  operator : LinearOperator H
  eigenfunctions : List (ℝ × H)
  completeness : Prop
  orthonormalBasis : Prop

structure EigenfunctionExpansionEvidence (E : EigenfunctionExpansion H) where
  completenessClosed : E.completeness
  orthonormalBasisClosed : E.orthonormalBasis
  operatorSpectrumClosed : OperatorSpectrumClosed E.operator

def EigenfunctionExpansionClosed (E : EigenfunctionExpansion H) : Prop :=
  E.completeness ∧ E.orthonormalBasis

theorem eigenfunction_expansion_closed_from_evidence (E : EigenfunctionExpansion H) (Ev : EigenfunctionExpansionEvidence E) : EigenfunctionExpansionClosed E := by
  exact And.intro Ev.completenessClosed Ev.orthonormalBasisClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse