import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderOperator
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.BoundaryCondition

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure ExistenceUniquenessPackage (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) where
  weakSolutionExists : Prop
  weakSolutionUnique : Prop
  stabilityEstimate : Prop

structure ExistenceUniquenessEvidence (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) where
  weakSolutionExistsClosed : P.weakSolutionExists
  weakSolutionUniqueClosed : P.weakSolutionUnique
  stabilityEstimateClosed : P.stabilityEstimate

def ExistenceUniquenessClosed (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) : Prop :=
  P.weakSolutionExists ∧ P.weakSolutionUnique ∧ P.stabilityEstimate

theorem existence_uniqueness_closed_from_evidence (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) (E : ExistenceUniquenessEvidence O B P) : ExistenceUniquenessClosed O B P :=
  And.intro E.weakSolutionExistsClosed (And.intro E.weakSolutionUniqueClosed E.stabilityEstimateClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse