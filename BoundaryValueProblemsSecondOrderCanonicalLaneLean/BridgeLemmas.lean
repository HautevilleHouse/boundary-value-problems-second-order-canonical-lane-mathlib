import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsSecondOrder.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrder

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryValueProblemsSecondOrder
end HautevilleHouse