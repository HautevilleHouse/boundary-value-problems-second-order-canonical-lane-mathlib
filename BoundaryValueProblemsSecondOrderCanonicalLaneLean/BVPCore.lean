import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure SecondOrderBVPPackage where
  domain : Type u
  topology : TopologicalSpace domain
  equation : Type v
  boundaryConditions : Type w
  existence : Prop
  uniqueness : Prop
  stability : Prop

structure BVPEvidence (P : SecondOrderBVPPackage) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness
  stabilityClosed : P.stability

def BVPClosed (P : SecondOrderBVPPackage) : Prop :=
  P.existence ∧ P.uniqueness ∧ P.stability

theorem bvp_closed_from_evidence (P : SecondOrderBVPPackage) (E : BVPEvidence P) :
    BVPClosed P := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed E.stabilityClosed)

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse
