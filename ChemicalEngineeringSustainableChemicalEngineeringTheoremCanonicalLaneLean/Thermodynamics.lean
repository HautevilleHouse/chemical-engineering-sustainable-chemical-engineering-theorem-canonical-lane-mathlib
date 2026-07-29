import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  gibbsFreeEnergy : Prop
  chemicalPotential : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  chemicalPotentialClosed : T.chemicalPotential

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.gibbsFreeEnergy ∧ T.chemicalPotential

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed (And.intro E.secondLawClosed (And.intro E.gibbsFreeEnergyClosed E.chemicalPotentialClosed))

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse