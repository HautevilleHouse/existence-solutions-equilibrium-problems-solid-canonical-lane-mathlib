import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure ExistenceSolutionsEquilibriumPackage where
  equilibriumDomain : Type
  solutionSpace : Type
  existenceCondition : Prop
  solutionUniqueness : Prop
  stabilityUnderPerturbation : Prop

structure ExistenceSolutionsEquilibriumEvidence (E : ExistenceSolutionsEquilibriumPackage) where
  existenceConditionClosed : E.existenceCondition
  solutionUniquenessClosed : E.solutionUniqueness
  stabilityUnderPerturbationClosed : E.stabilityUnderPerturbation

def ExistenceSolutionsEquilibriumClosed (E : ExistenceSolutionsEquilibriumPackage) : Prop :=
  E.existenceCondition ∧ E.solutionUniqueness ∧ E.stabilityUnderPerturbation

theorem existence_solutions_equilibrium_closed_from_evidence
    (E : ExistenceSolutionsEquilibriumPackage) (Ev : ExistenceSolutionsEquilibriumEvidence E) :
    ExistenceSolutionsEquilibriumClosed E := by
  exact And.intro Ev.existenceConditionClosed
    (And.intro Ev.solutionUniquenessClosed Ev.stabilityUnderPerturbationClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse