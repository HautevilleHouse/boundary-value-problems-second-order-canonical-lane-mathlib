import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.MaximalPrinciple

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SpectrumTheoryPackage {X : BVPSpace} {R : EllipticRegularityPackage X}
    (M : MaximalPrinciplePackage R) where
  resolventDefined : Prop
  spectrumDiscrete : Prop
  eigenfunctionExpansion : Prop
  eigenvalueAsymptotics : Prop
  resolventDefinedClosed : resolventDefined
  spectrumDiscreteClosed : spectrumDiscrete
  eigenfunctionExpansionClosed : eigenfunctionExpansion
  eigenvalueAsymptoticsClosed : eigenvalueAsymptotics

structure SpectrumTheoryEvidence {X : BVPSpace} {R : EllipticRegularityPackage X}
    {M : MaximalPrinciplePackage R} (S : SpectrumTheoryPackage M) where
  resolventDefinedClosed : S.resolventDefined
  spectrumDiscreteClosed : S.spectrumDiscrete
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  eigenvalueAsymptoticsClosed : S.eigenvalueAsymptotics

def SpectrumTheoryClosed {X : BVPSpace} {R : EllipticRegularityPackage X}
    {M : MaximalPrinciplePackage R} (S : SpectrumTheoryPackage M) : Prop :=
  S.resolventDefined ∧ S.spectrumDiscrete ∧ S.eigenfunctionExpansion ∧ S.eigenvalueAsymptotics

theorem spectrum_theory_closed_from_evidence
    {X : BVPSpace} {R : EllipticRegularityPackage X} {M : MaximalPrinciplePackage R}
    (S : SpectrumTheoryPackage M) (E : SpectrumTheoryEvidence S) : SpectrumTheoryClosed S := by
  exact And.intro E.resolventDefinedClosed
    (And.intro E.spectrumDiscreteClosed (And.intro E.eigenfunctionExpansionClosed E.eigenvalueAsymptoticsClosed))

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse