import chemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure SustainableCatalysisPackage where
  catalystActivity : ℝ
  selectivity : ℝ
  turnoverFrequency : ℝ
  deactivationRate : ℝ
  regenerationRate : ℝ

structure SustainableCatalysisEvidence (S : SustainableCatalysisPackage) where
  activityClosed : S.catalystActivity > 0
  selectivityClosed : S.selectivity ∈ Set.Ioo 0 1
  turnoverClosed : S.turnoverFrequency > 0
  deactivationClosed : S.deactivationRate > 0 → S.regenerationRate > S.deactivationRate

def SustainableCatalysisClosed (S : SustainableCatalysisPackage) : Prop :=
  S.catalystActivity > 0 ∧
  S.selectivity ∈ Set.Ioo 0 1 ∧
  S.turnoverFrequency > 0 ∧
  (S.deactivationRate > 0 → S.regenerationRate > S.deactivationRate)

theorem sustainable_catalysis_closed_from_evidence (S : SustainableCatalysisPackage) (E : SustainableCatalysisEvidence S) :
    SustainableCatalysisClosed S := by
  exact And.intro E.activityClosed (And.intro E.selectivityClosed (And.intro E.turnoverClosed E.deactivationClosed))

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse