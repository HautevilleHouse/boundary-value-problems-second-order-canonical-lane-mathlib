import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure AssetPricingModel where
  stateSpace : Type u
  dividendProcess : Type v
  discountFactor : Prop
  priceFunction : Type w
  boundaryCondition : Prop
  pricingEquation : Prop
  solutionExists : Prop
  uniqueness : Prop
  conclusion : solutionExists ∧ uniqueness

structure AssetPricingEvidence (M : AssetPricingModel) where
  stateSpaceClosed : M.stateSpace
  dividendProcessClosed : M.dividendProcess
  discountFactorClosed : M.discountFactor
  priceFunctionClosed : M.priceFunction
  boundaryConditionClosed : M.boundaryCondition
  pricingEquationClosed : M.pricingEquation
  solutionExistsClosed : M.solutionExists
  uniquenessClosed : M.uniqueness

def AssetPricingClosed (M : AssetPricingModel) : Prop :=
  M.solutionExists ∧ M.uniqueness

theorem asset_pricing_closed_from_evidence (M : AssetPricingModel) (E : AssetPricingEvidence M) :
    AssetPricingClosed M := by
  exact And.intro E.solutionExistsClosed E.uniquenessClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse