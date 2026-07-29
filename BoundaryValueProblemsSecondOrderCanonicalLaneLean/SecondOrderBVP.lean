import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BVPSpace where
  domain : Type u
  functionSpace : Type v
  boundaryCondition : Prop
  differentialOperator : Prop
  solutionExistence : Prop
  uniqueness : Prop
  continuity : Prop
  conclusion : solutionExistence ∧ uniqueness

structure BVPEvidence (B : BVPSpace) where
  domainClosed : B.domain
  functionSpaceClosed : B.functionSpace
  boundaryConditionClosed : B.boundaryCondition
  differentialOperatorClosed : B.differentialOperator
  solutionExistenceClosed : B.solutionExistence
  uniquenessClosed : B.uniqueness
  continuityClosed : B.continuity

def BVWitnessClosed (B : BVPSpace) : Prop :=
  B.solutionExistence ∧ B.uniqueness

theorem bvp_closed_from_evidence (B : BVPSpace) (E : BVPEvidence B) :
    BVWitnessClosed B := by
  exact And.intro E.solutionExistenceClosed E.uniquenessClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse