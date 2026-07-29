import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantExpr : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  equilibriumComposition : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantExprClosed : C.equilibriumConstantExpr
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  reactionQuotientClosed : C.reactionQuotient
  equilibriumCompositionClosed : C.equilibriumComposition

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantExpr ∧ C.leChatelierPrinciple ∧ C.reactionQuotient ∧ C.equilibriumComposition

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantExprClosed (And.intro E.leChatelierPrincipleClosed (And.intro E.reactionQuotientClosed E.equilibriumCompositionClosed))

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse