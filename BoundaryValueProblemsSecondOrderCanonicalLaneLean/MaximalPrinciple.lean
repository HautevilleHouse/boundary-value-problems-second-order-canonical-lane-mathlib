import HautevilleHouse.BoundaryValueProblemsSecondOrderCanonicalLaneLean.EllipticRegularity

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure MaximalPrinciplePackage {X : BVPSpace} (R : EllipticRegularityPackage X) where
  operatorElliptic : Prop
  weakPrinciple : Prop
  strongPrinciple : Prop
  uniquenessOfSolutions : Prop
  operatorEllipticClosed : operatorElliptic
  weakPrincipleClosed : weakPrinciple
  strongPrincipleClosed : strongPrinciple
  uniquenessOfSolutionsClosed : uniquenessOfSolutions

structure MaximalPrincipleEvidence {X : BVPSpace} {R : EllipticRegularityPackage X}
    (M : MaximalPrinciplePackage R) where
  operatorEllipticClosed : M.operatorElliptic
  weakPrincipleClosed : M.weakPrinciple
  strongPrincipleClosed : M.strongPrinciple
  uniquenessOfSolutionsClosed : M.uniquenessOfSolutions

def MaximalPrincipleClosed {X : BVPSpace} {R : EllipticRegularityPackage X}
    (M : MaximalPrinciplePackage R) : Prop :=
  M.operatorElliptic ∧ M.weakPrinciple ∧ M.strongPrinciple ∧ M.uniquenessOfSolutions

theorem maximal_principle_closed_from_evidence
    {X : BVPSpace} {R : EllipticRegularityPackage X} (M : MaximalPrinciplePackage R)
    (E : MaximalPrincipleEvidence M) : MaximalPrincipleClosed M := by
  exact And.intro E.operatorEllipticClosed
    (And.intro E.weakPrincipleClosed (And.intro E.strongPrincipleClosed E.uniquenessOfSolutionsClosed))

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse