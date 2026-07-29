import HautevilleHouse.BoundaryValueProblemsSecondOrder.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrder

structure EllipticRegularityPackage {A : AdmissibleClass} where
  operatorElliptic : Prop
  boundarySmooth : Prop
  solutionRegularity : Prop
  aPrioriEstimates : Prop

structure EllipticRegularityEvidence {A : AdmissibleClass} (P : EllipticRegularityPackage) where
  operatorEllipticClosed : P.operatorElliptic
  boundarySmoothClosed : P.boundarySmooth
  solutionRegularityClosed : P.solutionRegularity
  aPrioriEstimatesClosed : P.aPrioriEstimates

def EllipticRegularityClosed {A : AdmissibleClass} (P : EllipticRegularityPackage) : Prop :=
  P.operatorElliptic ∧ P.boundarySmooth ∧ P.solutionRegularity ∧ P.aPrioriEstimates

theorem elliptic_regularity_closed_from_evidence {A : AdmissibleClass} (P : EllipticRegularityPackage) (E : EllipticRegularityEvidence P) : EllipticRegularityClosed P := by
  exact And.intro E.operatorEllipticClosed (And.intro E.boundarySmoothClosed (And.intro E.solutionRegularityClosed E.aPrioriEstimatesClosed))

end BoundaryValueProblemsSecondOrder
end HautevilleHouse