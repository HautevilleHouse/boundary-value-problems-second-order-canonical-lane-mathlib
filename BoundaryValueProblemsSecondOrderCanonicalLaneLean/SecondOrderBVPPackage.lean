import BoundaryValueProblemsSecondOrderCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SecondOrderBVPPackage where
  domainSmooth : Prop
  operatorElliptic : Prop
  boundaryConditionsLinear : Prop
  solutionExists : Prop
  solutionUnique : Prop

structure SecondOrderBVPEvidence (P : SecondOrderBVPPackage) where
  domainSmoothClosed : P.domainSmooth
  operatorEllipticClosed : P.operatorElliptic
  boundaryConditionsLinearClosed : P.boundaryConditionsLinear
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique

def SecondOrderBVPClosed (P : SecondOrderBVPPackage) : Prop :=
  P.domainSmooth ∧ P.operatorElliptic ∧ P.boundaryConditionsLinear ∧
  P.solutionExists ∧ P.solutionUnique

theorem second_order_bvp_closed_from_evidence (P : SecondOrderBVPPackage)
    (E : SecondOrderBVPEvidence P) : SecondOrderBVPClosed P := by
  exact And.intro E.domainSmoothClosed
    (And.intro E.operatorEllipticClosed
      (And.intro E.boundaryConditionsLinearClosed
        (And.intro E.solutionExistsClosed E.solutionUniqueClosed)))

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse