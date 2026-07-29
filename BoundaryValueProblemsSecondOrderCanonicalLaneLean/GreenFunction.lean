import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure GreenFunction (Ω : Type) [NormedAddCommGroup Ω] [InnerProductSpace ℝ Ω] where
  operator : LinearOperator Ω
  kernel : Ω → Ω → ℝ
  representation : (Ω → ℝ) → (Ω → ℝ)
  symmetry : Prop
  integralKernel : Prop

structure GreenFunctionEvidence (G : GreenFunction Ω) where
  symmetryClosed : G.symmetry
  integralKernelClosed : G.integralKernel
  representationClosed : Prop
  operatorSpectrumClosed : OperatorSpectrumClosed G.operator

def GreenFunctionClosed (G : GreenFunction Ω) : Prop :=
  G.symmetry ∧ G.integralKernel

theorem green_function_closed_from_evidence (G : GreenFunction Ω) (E : GreenFunctionEvidence G) : GreenFunctionClosed G := by
  exact And.intro E.symmetryClosed E.integralKernelClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse