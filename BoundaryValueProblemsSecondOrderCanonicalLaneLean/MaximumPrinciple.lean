import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure MaximumPrinciplePackage where
  operator : Type
  weakMaximum : Prop
  strongMaximum : Prop
  aPrioriBounds : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  weakMaximumClosed : M.weakMaximum
  strongMaximumClosed : M.strongMaximum
  aPrioriBoundsClosed : M.aPrioriBounds

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.weakMaximum ∧ M.strongMaximum ∧ M.aPrioriBounds

theorem maximum_principle_closed_from_evidence (M : MaximumPrinciplePackage) (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.weakMaximumClosed (And.intro E.strongMaximumClosed E.aPrioriBoundsClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse