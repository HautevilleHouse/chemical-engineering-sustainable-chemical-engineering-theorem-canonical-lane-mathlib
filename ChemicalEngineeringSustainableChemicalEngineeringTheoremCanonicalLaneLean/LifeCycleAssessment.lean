import chemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure LifeCycleAssessmentPackage where
  rawMaterialExtraction : ℝ
  manufacturing : ℝ
  transportation : ℝ
  usePhase : ℝ
  endOfLife : ℝ
  totalEnvironmentalImpact : ℝ

structure LifeCycleAssessmentEvidence (L : LifeCycleAssessmentPackage) where
  impactSumClosed : L.totalEnvironmentalImpact = L.rawMaterialExtraction + L.manufacturing + L.transportation + L.usePhase + L.endOfLife
  nonnegativityClosed : L.totalEnvironmentalImpact ≥ 0

def LifeCycleAssessmentClosed (L : LifeCycleAssessmentPackage) : Prop :=
  L.totalEnvironmentalImpact = L.rawMaterialExtraction + L.manufacturing + L.transportation + L.usePhase + L.endOfLife ∧
  L.totalEnvironmentalImpact ≥ 0

theorem life_cycle_assessment_closed_from_evidence (L : LifeCycleAssessmentPackage) (E : LifeCycleAssessmentEvidence L) :
    LifeCycleAssessmentClosed L := by
  exact And.intro E.impactSumClosed E.nonnegativityClosed

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse