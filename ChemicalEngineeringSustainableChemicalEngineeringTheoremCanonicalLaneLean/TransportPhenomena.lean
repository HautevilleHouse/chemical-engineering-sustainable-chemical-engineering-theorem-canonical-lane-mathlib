import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure TransportPhenomenaPackage where
  diffusivity : Type u
  thermalConductivity : Type v
  ficksLaw : Prop
  fouriersLaw : Prop
  newtonsLaw : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  ficksLawClosed : T.ficksLaw
  fouriersLawClosed : T.fouriersLaw
  newtonsLawClosed : T.newtonsLaw

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.ficksLaw ∧ T.fouriersLaw ∧ T.newtonsLaw

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage)
    (E : TransportPhenomenaEvidence T) : TransportPhenomenaClosed T := by
  exact And.intro E.ficksLawClosed (And.intro E.fouriersLawClosed E.newtonsLawClosed)

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
