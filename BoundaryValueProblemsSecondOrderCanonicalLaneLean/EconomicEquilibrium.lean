import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderOperator
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.BoundaryCondition
import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.ExistenceUniqueness

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure EconomicEquilibriumPackage (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) where
  arrowDebreuPrices : Prop
  marketClearing : Prop
  equilibriumInterpretation : P.weakSolutionExists → P.weakSolutionUnique → Prop

structure EconomicEquilibriumEvidence (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) (E : EconomicEquilibriumPackage O B P) where
  arrowDebreuPricesClosed : E.arrowDebreuPrices
  marketClearingClosed : E.marketClearing

def EconomicEquilibriumClosed (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) (E : EconomicEquilibriumPackage O B P) : Prop :=
  E.arrowDebreuPrices ∧ E.marketClearing

theorem economic_equilibrium_closed_from_evidence (O : SecondOrderOperator Ω) (B : BoundaryCondition ∂Ω) (P : ExistenceUniquenessPackage O B) (E : EconomicEquilibriumPackage O B P) (Ev : EconomicEquilibriumEvidence O B P E) : EconomicEquilibriumClosed O B P E :=
  And.intro Ev.arrowDebreuPricesClosed Ev.marketClearingClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse