import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsSecondOrderCanonicalLaneLean

structure ArrowDebreuEconomy where
  commodities : Type u
  agents : Type v
  preferences : Prop
  endowments : Prop
  priceVector : Type w
  equilibriumExists : Prop
  equilibriumAllocation : Prop
  welfareProperties : Prop
  conclusion : equilibriumExists ∧ equilibriumAllocation

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  commoditiesClosed : E.commodities
  agentsClosed : E.agents
  preferencesClosed : E.preferences
  endowmentsClosed : E.endowments
  priceVectorClosed : E.priceVector
  equilibriumExistsClosed : E.equilibriumExists
  equilibriumAllocationClosed : E.equilibriumAllocation
  welfarePropertiesClosed : E.welfareProperties

def ArrowDebreuClosed (E : ArrowDebreuEconomy) : Prop :=
  E.equilibriumExists ∧ E.equilibriumAllocation

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEconomy) (V : ArrowDebreuEvidence E) :
    ArrowDebreuClosed E := by
  exact And.intro V.equilibriumExistsClosed V.equilibriumAllocationClosed

end BoundaryValueProblemsSecondOrderCanonicalLaneLean
end HautevilleHouse