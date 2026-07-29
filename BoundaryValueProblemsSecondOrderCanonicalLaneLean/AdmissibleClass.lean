import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrder

structure BoundaryValueSecondOrderObject where
  operator : Type u
  domain : Type v
  boundaryConditions : Prop
  solvabilityCondition : Prop
  solutionSpace : Prop
  remainderRecorded : Prop
  conclusion : solutionSpace ∨ remainderRecorded

structure AdmissibleClass where
  object : BoundaryValueSecondOrderObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryValueProblemsSecondOrder
end HautevilleHouse