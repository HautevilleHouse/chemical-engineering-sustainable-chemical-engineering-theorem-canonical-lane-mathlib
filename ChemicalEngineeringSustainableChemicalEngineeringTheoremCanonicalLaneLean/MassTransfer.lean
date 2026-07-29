import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure MassTransferPackage where
  fickLaw : Prop
  diffusionCoefficient : Prop
  filmTheory : Prop
  overallTransferCoefficient : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  fickLawClosed : M.fickLaw
  diffusionCoefficientClosed : M.diffusionCoefficient
  filmTheoryClosed : M.filmTheory
  overallTransferCoefficientClosed : M.overallTransferCoefficient

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.fickLaw ∧ M.diffusionCoefficient ∧
  M.filmTheory ∧ M.overallTransferCoefficient

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.fickLawClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.filmTheoryClosed E.overallTransferCoefficientClosed))

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse