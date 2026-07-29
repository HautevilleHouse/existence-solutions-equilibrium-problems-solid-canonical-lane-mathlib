import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure EllipticEquation where
  differentialOperator : (SolidBody → ℝ) → (SolidBody → ℝ)
  sourceTerm : SolidBody → ℝ
  solutionSpace : Set (SolidBody → ℝ)
  regularityCondition : Prop
  existenceCondition : Prop

structure EllipticEvidence (E : EllipticEquation) where
  regularityConditionClosed : E.regularityCondition
  existenceConditionClosed : E.existenceCondition
  solutionClassNonempty : E.solutionSpace.Nonempty

def EllipticClosed (E : EllipticEquation) : Prop :=
  E.regularityCondition ∧ E.existenceCondition ∧ E.solutionSpace.Nonempty

theorem elliptic_closed_from_evidence (E : EllipticEquation) (Ev : EllipticEvidence E) : EllipticClosed E := by
  exact And.intro Ev.regularityConditionClosed (And.intro Ev.existenceConditionClosed Ev.solutionClassNonempty)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse