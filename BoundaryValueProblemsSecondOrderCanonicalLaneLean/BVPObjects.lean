import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.BVPCore

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BVPAdmittedObject where
  package : SecondOrderBVPPackage
  evidence : BVPEvidence package
  endpointStatement : Prop
  conclusion : endpointStatement

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
