import canonicalLaneMathlib.AdmissibleClass

/-!
# Functional Analytic Foundation
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SobolevSpacePackage where
  domain : Type
u
  norm : Type v
  embeddingTheorems : Prop
  compactness : Prop
  traceTheory : Prop
  poincareInequality : Prop

structure LinearOperatorPackage where
  domainSpace : Type
u
  rangeSpace : Type v
  boundedness : Prop
  coercivity : Prop
  fredholmAlternative : Prop
  spectralProperties : Prop



end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse