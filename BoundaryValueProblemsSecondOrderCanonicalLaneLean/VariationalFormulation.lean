import canonicalLaneMathlib.AdmissibleClass

/-!
# Variational Formulation Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure BilinearFormPackage where
  form : Type
u
  symmetry : Prop
  continuity : Prop
  ellipticity : Prop
  coercivity : Prop

structure WeakSolutionPackage where
  existence : Prop
  uniqueness : Prop
  regularity : Prop
  stability : Prop



end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse