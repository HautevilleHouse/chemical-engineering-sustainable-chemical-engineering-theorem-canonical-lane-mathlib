import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure CatalysisPackage where
  catalysts : Type u
  adsorptionIsotherm : Prop
  michaelisMenten : Prop
  turnoverFrequency : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  adsorptionIsothermClosed : C.adsorptionIsotherm
  michaelisMentenClosed : C.michaelisMenten
  turnoverFrequencyClosed : C.turnoverFrequency

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.adsorptionIsotherm ∧ C.michaelisMenten ∧ C.turnoverFrequency

theorem catalysis_closed_from_evidence (C : CatalysisPackage)
    (E : CatalysisEvidence C) : CatalysisClosed C := by
  exact And.intro E.adsorptionIsothermClosed (And.intro E.michaelisMentenClosed E.turnoverFrequencyClosed)

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
