import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SecondOrderOperator (Ω : Type) where
  domain : Ω → Prop
  coefficient : Ω → ℝ
  secondOrderTerm : Ω → ℝ → ℝ → ℝ
  firstOrderTerm : Ω → ℝ → ℝ
  zeroOrderTerm : Ω → ℝ
  uniformEllipticity : Prop
  boundedCoefficients : Prop

structure SecondOrderOperatorEvidence (O : SecondOrderOperator Ω) where
  uniformEllipticityClosed : O.uniformEllipticity
  boundedCoefficientsClosed : O.boundedCoefficients

def SecondOrderOperatorClosed (O : SecondOrderOperator Ω) : Prop :=
  O.uniformEllipticity ∧ O.boundedCoefficients

theorem second_order_operator_closed_from_evidence (O : SecondOrderOperator Ω) (E : SecondOrderOperatorEvidence O) : SecondOrderOperatorClosed O :=
  And.intro E.uniformEllipticityClosed E.boundedCoefficientsClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse