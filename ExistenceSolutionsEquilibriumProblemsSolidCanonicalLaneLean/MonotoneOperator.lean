import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure MonotoneOperatorPackage where
  operator : Type u → Type v
  monotoneCondition : Prop
  hemicontinuousCondition : Prop
  coercivityCondition : Prop
  boundednessCondition : Prop

structure MonotoneOperatorEvidence (P : MonotoneOperatorPackage) where
  monotoneConditionClosed : P.monotoneCondition
  hemicontinuousConditionClosed : P.hemicontinuousCondition
  coercivityConditionClosed : P.coercivityCondition
  boundednessConditionClosed : P.boundednessCondition

def MonotoneOperatorClosed (P : MonotoneOperatorPackage) : Prop :=
  P.monotoneCondition ∧ P.hemicontinuousCondition ∧ P.coercivityCondition ∧ P.boundednessCondition

theorem monotone_operator_closed_from_evidence (P : MonotoneOperatorPackage) (E : MonotoneOperatorEvidence P) : MonotoneOperatorClosed P := by
  exact And.intro E.monotoneConditionClosed (And.intro E.hemicontinuousConditionClosed (And.intro E.coercivityConditionClosed E.boundednessConditionClosed))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse