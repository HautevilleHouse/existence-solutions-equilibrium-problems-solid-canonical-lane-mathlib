import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumProblem where
  stateSpace : Type u
  actionSet : Type v
  payoffFunction : stateSpace → actionSet → ℝ
  solutionSet : Set (stateSpace × actionSet)
  existenceCondition : Prop

structure EquilibriumEvidence (P : EquilibriumProblem) where
  existenceConditionClosed : P.existenceCondition
  solutionSetNonempty : P.solutionSet.Nonempty

def EquilibriumClosed (P : EquilibriumProblem) : Prop :=
  P.existenceCondition ∧ P.solutionSet.Nonempty

theorem equilibrium_closed_from_evidence (P : EquilibriumProblem) (E : EquilibriumEvidence P) : EquilibriumClosed P := by
  exact And.intro E.existenceConditionClosed E.solutionSetNonempty

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse