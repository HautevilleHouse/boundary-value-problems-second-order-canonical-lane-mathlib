import BoundaryValueProblemsSecondOrderCanonicalLaneLean.FinalTheorem

/-!
# Theorem Statement Layer

This module defines the theorem statement for the BVP package.
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "boundary-value-problems-second-order-canonical-lane",
  theoremName := "Boundary Value Problems Second Order",
  theoremObject := "Existence and uniqueness of solutions to second-order boundary value problems under admissible conditions",
  classicalBoundary := "classical boundary conditions on second-order ODE/PDE with specified endpoint values",
  manifoldConstrainedStatement := "admissible-class closure for second-order boundary value problems",
  certificateLane := "bvp_constrained",
  carriedRemainder := "full analytic treatment of nonlinear boundary conditions remains outside"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "boundary-value-problems-second-order-canonical-lane" := by
  rfl

theorem theorem_statement_theorem_name_checked :
    sourceTheoremStatement.theoremName = "Boundary Value Problems Second Order" := by
  rfl

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse