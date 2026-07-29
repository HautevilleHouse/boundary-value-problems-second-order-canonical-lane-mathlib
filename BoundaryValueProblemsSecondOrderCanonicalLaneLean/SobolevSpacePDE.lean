import BoundaryValueProblemsSecondOrderCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SobolevSpacePackage where
  index : ℝ
  domain : Type u
  topology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  sobolevNorm : Prop
  completeness : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  sobolevNormClosed : S.sobolevNorm
  completenessClosed : S.completeness

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.sobolevNorm ∧ S.completeness

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.sobolevNormClosed E.completenessClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
