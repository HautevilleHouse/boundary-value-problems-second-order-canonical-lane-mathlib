import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

def ConstrainedSolutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_solution_endgame (A : AdmissibleClass) :
    ConstrainedSolutionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse