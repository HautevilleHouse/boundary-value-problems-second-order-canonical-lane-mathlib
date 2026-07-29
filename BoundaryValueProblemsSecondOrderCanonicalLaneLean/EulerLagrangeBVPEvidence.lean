import BoundaryValueProblemsSecondOrderCanonicalLaneLean.SecondOrderBVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure EulerLagrangeBVPPackage {P : SecondOrderBVPPackage} where
  lagrangianDefined : Prop
  eulerLagrangeEquation : Prop
  boundaryConditionsDerived : Prop
  secondOrderType : P.operatorElliptic
  existenceFromVariation : P.solutionExists

def EulerLagrangeBVPClosed {P : SecondOrderBVPPackage}
    (E : EulerLagrangeBVPPackage P) : Prop :=
  E.lagrangianDefined ∧ E.eulerLagrangeEquation ∧ E.boundaryConditionsDerived ∧
  SecondOrderBVPClosed P

theorem euler_lagrange_bvp_closed_from_package {P : SecondOrderBVPPackage}
    (E : EulerLagrangeBVPPackage P) : EulerLagrangeBVPClosed E := by
  refine And.intro E.lagrangianDefined
    (And.intro E.eulerLagrangeEquation
      (And.intro E.boundaryConditionsDerived ?_))
  have hDomain : P.domainSmoothClosed := by
    apply P.secondOrderType.smoothClosed
  have hOperator : P.operatorEllipticClosed := by
    apply P.secondOrderType.ellipticClosed
  have hBC : P.boundaryConditionsLinearClosed := by
    apply P.secondOrderType.linearClosed
  have hExists : P.solutionExistsClosed := by
    apply P.secondOrderType.solutionExists
  have hUnique : P.solutionUniqueClosed := by
    apply P.secondOrderType.solutionUnique
  exact second_order_bvp_closed_from_evidence P
    { domainSmoothClosed := hDomain
      operatorEllipticClosed := hOperator
      boundaryConditionsLinearClosed := hBC
      solutionExistsClosed := hExists
      solutionUniqueClosed := hUnique }

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse