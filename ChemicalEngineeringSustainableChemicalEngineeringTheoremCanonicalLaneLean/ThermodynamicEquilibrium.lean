import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergyMinimized : Prop
  equilibriumConstantFormula : Prop
  temperatureDependence : Prop
  pressureDependence : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyMinimizedClosed : T.gibbsFreeEnergyMinimized
  equilibriumConstantFormulaClosed : T.equilibriumConstantFormula
  temperatureDependenceClosed : T.temperatureDependence
  pressureDependenceClosed : T.pressureDependence

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergyMinimized ∧ T.equilibriumConstantFormula ∧
  T.temperatureDependence ∧ T.pressureDependence

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyMinimizedClosed
    (And.intro E.equilibriumConstantFormulaClosed
      (And.intro E.temperatureDependenceClosed E.pressureDependenceClosed))

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse