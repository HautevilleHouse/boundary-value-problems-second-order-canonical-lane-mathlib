import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BVPAdmittedObject where
  domain : Type
  boundaryOperator : Type
  equationType : Type
  wellPosed : Prop
  conclusion : wellPosed

def BVPWitnessClosed (O : BVPAdmittedObject) : Prop :=
  O.wellPosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse