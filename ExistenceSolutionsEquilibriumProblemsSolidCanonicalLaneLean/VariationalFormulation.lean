import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure VariationalFormulationPackage where
  weakFormulation : Prop
  bilinearFormCoercive : Prop
  linearFunctionalBounded : Prop
  laxMilgramApplied : Prop
  weakFormulationClosed : weakFormulation
  bilinearFormCoerciveClosed : bilinearFormCoercive
  linearFunctionalBoundedClosed : linearFunctionalBounded
  laxMilgramAppliedClosed : laxMilgramApplied

structure VariationalFormulationEvidence (P : VariationalFormulationPackage) where
  weakFormulationClosed : P.weakFormulation
  bilinearFormCoerciveClosed : P.bilinearFormCoercive
  linearFunctionalBoundedClosed : P.linearFunctionalBounded
  laxMilgramAppliedClosed : P.laxMilgramApplied

def VariationalFormulationClosed (P : VariationalFormulationPackage) : Prop :=
  P.weakFormulation ∧ P.bilinearFormCoercive ∧ P.linearFunctionalBounded ∧ P.laxMilgramApplied

theorem variational_formulation_closed_from_evidence (P : VariationalFormulationPackage) (E : VariationalFormulationEvidence P) :
    VariationalFormulationClosed P := by
  exact And.intro E.weakFormulationClosed (And.intro E.bilinearFormCoerciveClosed (And.intro E.linearFunctionalBoundedClosed E.laxMilgramAppliedClosed))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
