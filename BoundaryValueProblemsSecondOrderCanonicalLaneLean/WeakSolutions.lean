import HautevilleHouse.BoundaryValueProblemsSecondOrder.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrder

structure WeakSolutionsPackage {A : AdmissibleClass} where
  weakFormulation : Prop
  laxMilgramConditions : Prop
  existenceUniqueness : Prop
  regularityFromData : Prop

structure WeakSolutionsEvidence {A : AdmissibleClass} (P : WeakSolutionsPackage) where
  weakFormulationClosed : P.weakFormulation
  laxMilgramConditionsClosed : P.laxMilgramConditions
  existenceUniquenessClosed : P.existenceUniqueness
  regularityFromDataClosed : P.regularityFromData

def WeakSolutionsClosed {A : AdmissibleClass} (P : WeakSolutionsPackage) : Prop :=
  P.weakFormulation ∧ P.laxMilgramConditions ∧ P.existenceUniqueness ∧ P.regularityFromData

theorem weak_solutions_closed_from_evidence {A : AdmissibleClass} (P : WeakSolutionsPackage) (E : WeakSolutionsEvidence P) : WeakSolutionsClosed P := by
  exact And.intro E.weakFormulationClosed (And.intro E.laxMilgramConditionsClosed (And.intro E.existenceUniquenessClosed E.regularityFromDataClosed))

end BoundaryValueProblemsSecondOrder
end HautevilleHouse