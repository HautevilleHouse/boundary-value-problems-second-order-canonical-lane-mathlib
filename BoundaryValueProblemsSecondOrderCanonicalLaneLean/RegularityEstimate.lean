import BoundaryValueProblemsSecondOrderCanonicalLaneLean.WeakSolutionExistence

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure RegularityEstimatePackage {S : SobolevSpacePackage} {B : BilinearFormPackage S} (W : WeakSolutionPackage B) where
  additionalSmoothness : Prop
  holderEstimate : Prop
  interiorEstimate : Prop

structure RegularityEstimateEvidence {S : SobolevSpacePackage} {B : BilinearFormPackage S} {W : WeakSolutionPackage B} (R : RegularityEstimatePackage W) where
  additionalSmoothnessClosed : R.additionalSmoothness
  holderEstimateClosed : R.holderEstimate
  interiorEstimateClosed : R.interiorEstimate

def RegularityEstimateClosed {S : SobolevSpacePackage} {B : BilinearFormPackage S} {W : WeakSolutionPackage B} (R : RegularityEstimatePackage W) : Prop :=
  R.additionalSmoothness ∧ R.holderEstimate ∧ R.interiorEstimate

theorem regularity_estimate_closed_from_evidence {S : SobolevSpacePackage} {B : BilinearFormPackage S} {W : WeakSolutionPackage B} (R : RegularityEstimatePackage W) (E : RegularityEstimateEvidence R) :
    RegularityEstimateClosed R := by
  exact And.intro E.additionalSmoothnessClosed (And.intro E.holderEstimateClosed E.interiorEstimateClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
