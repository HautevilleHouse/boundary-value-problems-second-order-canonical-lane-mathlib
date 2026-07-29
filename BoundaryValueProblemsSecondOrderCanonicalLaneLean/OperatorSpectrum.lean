import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure LinearOperator (H : Type) [InnerProductSpace ℝ H] where
  domain : Submodule ℝ H
  action : H → H
  symmetric : Prop
  coercive : Prop

structure SpectrumEvidence (L : LinearOperator H) where
  symmetricClosed : L.symmetric
  coerciveClosed : L.coercive
  eigenvalueExistence : Prop
  eigenfunctionBasis : Prop

def OperatorSpectrumClosed (L : LinearOperator H) : Prop :=
  L.symmetric ∧ L.coercive

theorem operator_spectrum_closed_from_evidence (L : LinearOperator H) (E : SpectrumEvidence L) : OperatorSpectrumClosed L := by
  exact And.intro E.symmetricClosed E.coerciveClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse