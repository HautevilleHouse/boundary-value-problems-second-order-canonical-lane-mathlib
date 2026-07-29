import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.BVPEvidence

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure GrowthModelBVP where
  capitalStock : Type u
  productionFunction : capitalStock → ℝ
  consumptionPath : capitalStock → ℝ
  eulerEquation : (capitalStock → ℝ) → Prop
  transversalityCondition : Prop
  steadyStateSolved : Prop

structure AssetPricingBVP where
  assetPrice : Type u
  dividendProcess : assetPrice → ℝ
  stochasticDiscountFactor : assetPrice → ℝ
  fundamentalPDE : (assetPrice → ℝ) → Prop
  boundaryConditionAtMaturity : Prop
  solutionRegularity : Prop

structure ArrowDebreuEquilibrium where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  individualEndowments : commoditySpace → ℝ
  aggregateDemand : commoditySpace → ℝ
  equilibriumCondition : Prop
  welfareTheorems : Prop

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse