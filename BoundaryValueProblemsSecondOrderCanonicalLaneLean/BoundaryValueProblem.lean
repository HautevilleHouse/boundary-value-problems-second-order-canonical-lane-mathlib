import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SecondOrderBVPSpace where
  domain : Type u
  topology : TopologicalSpace domain
  boundary : Set domain
  secondOrderOperator : (domain → ℝ) → (domain → ℝ)
  sourceTerm : domain → ℝ
  solutionSpace : Set (domain → ℝ)
  boundaryCondition : (domain → ℝ) → Prop

structure AdmittedBVPObject where
  space : SecondOrderBVPSpace
  wellPosed : Prop
  existenceProof : wellPosed → True

structure BVPAdmissibleClass where
  object : AdmittedBVPObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedBVPClosure (A : BVPAdmissibleClass) : Prop :=
  BVPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse