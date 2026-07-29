import HautevilleHouse.BoundaryValueProblemsSecondOrder.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrder

structure SpectralDecompositionPackage {A : AdmissibleClass} where
  operatorSymmetric : Prop
  eigenfunctionBasis : Prop
  eigenvalueAsymptotics : Prop
  resolventCompact : Prop

structure SpectralDecompositionEvidence {A : AdmissibleClass} (P : SpectralDecompositionPackage) where
  operatorSymmetricClosed : P.operatorSymmetric
  eigenfunctionBasisClosed : P.eigenfunctionBasis
  eigenvalueAsymptoticsClosed : P.eigenvalueAsymptotics
  resolventCompactClosed : P.resolventCompact

def SpectralDecompositionClosed {A : AdmissibleClass} (P : SpectralDecompositionPackage) : Prop :=
  P.operatorSymmetric ∧ P.eigenfunctionBasis ∧ P.eigenvalueAsymptotics ∧ P.resolventCompact

theorem spectral_decomposition_closed_from_evidence {A : AdmissibleClass} (P : SpectralDecompositionPackage) (E : SpectralDecompositionEvidence P) : SpectralDecompositionClosed P := by
  exact And.intro E.operatorSymmetricClosed (And.intro E.eigenfunctionBasisClosed (And.intro E.eigenvalueAsymptoticsClosed E.resolventCompactClosed))

end BoundaryValueProblemsSecondOrder
end HautevilleHouse