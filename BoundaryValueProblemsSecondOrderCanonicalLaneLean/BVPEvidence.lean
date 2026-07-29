import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderBVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure ElastoplasticBVPEvidence (A : BVPAdmissibleClass) (P : SecondOrderBVPPackage A) where
  stressStrainRelation : Prop
  yieldCriterion : Prop
  hardeningLaw : Prop
  equilibriumEquation : Prop
  boundaryConditionCompliance : Prop
  stressStrainRelationClosed : stressStrainRelation
  yieldCriterionClosed : yieldCriterion
  hardeningLawClosed : hardeningLaw
  equilibriumEquationClosed : equilibriumEquation
  boundaryConditionComplianceClosed : boundaryConditionCompliance

structure FunctionalAnalyticEvidence (A : BVPAdmissibleClass) (P : SecondOrderBVPPackage A) where
  hilbertSpaceSetup : Prop
  bilinearFormContinuity : Prop
  bilinearFormCoercivity : Prop
  linearFunctionalBounded : Prop
  laxMilgramApplied : Prop
  hilbertSpaceSetupClosed : hilbertSpaceSetup
  bilinearFormContinuityClosed : bilinearFormContinuity
  bilinearFormCoercivityClosed : bilinearFormCoercivity
  linearFunctionalBoundedClosed : linearFunctionalBounded
  laxMilgramAppliedClosed : laxMilgramApplied

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse