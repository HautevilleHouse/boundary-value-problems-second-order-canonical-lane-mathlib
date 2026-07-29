import BoundaryValueProblemsSecondOrderCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SecondOrderBVPSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  normedAddCommGroup : NormedAddCommGroup carrier
  banachSpace : NormedAddCommGroup.BanachSpace carrier

structure SecondOrderAdmittedObject where
  space : SecondOrderBVPSpace
  boundaryCondition : Prop
  linearOperator : Prop
  coercivity : Prop
  conclusion : boundaryCondition ∧ linearOperator ∧ coercivity

structure SecondOrderEndpointState where
  object : SecondOrderAdmittedObject

def SecondOrderWitnessClosed (O : SecondOrderAdmittedObject) : Prop :=
  O.conclusion

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
