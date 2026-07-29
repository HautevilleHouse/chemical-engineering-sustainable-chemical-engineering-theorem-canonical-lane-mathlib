import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLawDefined : Prop
  rateConstantExpression : Prop
  activationBarrier : Prop
  equilibriumConstantDerived : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawDefinedClosed : R.rateLawDefined
  rateConstantExpressionClosed : R.rateConstantExpression
  activationBarrierClosed : R.activationBarrier
  equilibriumConstantDerivedClosed : R.equilibriumConstantDerived

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLawDefined ∧ R.rateConstantExpression ∧
  R.activationBarrier ∧ R.equilibriumConstantDerived

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawDefinedClosed
    (And.intro E.rateConstantExpressionClosed
      (And.intro E.activationBarrierClosed E.equilibriumConstantDerivedClosed))

end ChemicalEngineeringSustainableChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse