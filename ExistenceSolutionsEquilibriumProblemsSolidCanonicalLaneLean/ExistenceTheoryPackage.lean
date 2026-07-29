import ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean.SolidMechanicsFundamentalPackage

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure ExistenceTheoryPackage {S : SolidMechanicsPackage} (SM : SolidMechanicsEvidence S) where
  variationalFormulation : Prop
  coercivityCondition : Prop
  weakContinuityCondition : Prop
  existenceResult : Prop

structure ExistenceTheoryEvidence {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} (E : ExistenceTheoryPackage SM) where
  variationalFormulationClosed : E.variationalFormulation
  coercivityConditionClosed : E.coercivityCondition
  weakContinuityConditionClosed : E.weakContinuityCondition
  existenceResultClosed : E.existenceResult

def ExistenceTheoryClosed {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} (E : ExistenceTheoryPackage SM) : Prop :=
  E.variationalFormulation ∧ E.coercivityCondition ∧ E.weakContinuityCondition ∧ E.existenceResult

theorem existence_theory_closed_from_evidence {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} (E : ExistenceTheoryPackage SM) (Ev : ExistenceTheoryEvidence E) : ExistenceTheoryClosed E := by
  exact And.intro Ev.variationalFormulationClosed
    (And.intro Ev.coercivityConditionClosed
      (And.intro Ev.weakContinuityConditionClosed Ev.existenceResultClosed))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse