import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure WeakFormulationPackage where
  sobolevSpace : Type
  bilinearForm : Type
  linearFunctional : Type
  coercivity : Prop
  boundedness : Prop
  laxMilgramConclusion : Prop

structure WeakFormulationEvidence (W : WeakFormulationPackage) where
  coercivityClosed : W.coercivity
  boundednessClosed : W.boundedness
  laxMilgramConclusionClosed : W.laxMilgramConclusion

def WeakFormulationClosed (W : WeakFormulationPackage) : Prop :=
  W.coercivity ∧ W.boundedness ∧ W.laxMilgramConclusion

theorem weak_formulation_closed_from_evidence (W : WeakFormulationPackage) (E : WeakFormulationEvidence W) : WeakFormulationClosed W := by
  exact And.intro E.coercivityClosed (And.intro E.boundednessClosed E.laxMilgramConclusionClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse