import BoundaryValueProblemsSecondOrderCanonicalLaneLean.SobolevSpacePDE

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BilinearFormPackage (S : SobolevSpacePackage) where
  form : S.domain → S.domain → ℝ
  continuity : Prop
  coercivity : Prop
  symmetry : Prop

structure BilinearFormEvidence (S : SobolevSpacePackage) (B : BilinearFormPackage S) where
  continuityClosed : B.continuity
  coercivityClosed : B.coercivity
  symmetryClosed : B.symmetry

def BilinearFormClosed (S : SobolevSpacePackage) (B : BilinearFormPackage S) : Prop :=
  B.continuity ∧ B.coercivity ∧ B.symmetry

theorem bilinear_form_closed_from_evidence (S : SobolevSpacePackage) (B : BilinearFormPackage S) (E : BilinearFormEvidence S B) :
    BilinearFormClosed S B := by
  exact And.intro E.continuityClosed (And.intro E.coercivityClosed E.symmetryClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
