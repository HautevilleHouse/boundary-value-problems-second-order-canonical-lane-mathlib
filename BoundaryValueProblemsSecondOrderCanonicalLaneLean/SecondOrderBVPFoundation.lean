import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure EconomicAdmittedObject where
  stateSpace : Type
  utilityFunction : stateSpace → ℝ
  boundaryCondition : Prop
  equilibriumCondition : Prop
  conclusion : equilibriumCondition

structure AdmissibleClass where
  object : EconomicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.equilibriumCondition ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure BVPBoundaryCondition where
  initialCondition : ℝ
  terminalCondition : ℝ

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse