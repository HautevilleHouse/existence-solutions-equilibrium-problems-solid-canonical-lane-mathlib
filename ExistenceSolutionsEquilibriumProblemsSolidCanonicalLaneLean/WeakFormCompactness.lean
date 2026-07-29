import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure WeakFormCompactnessPackage where
  functionSpace : Type u
  boundedSequence : Type v
  weakConvergentSubsequence : Prop
  coerciveOperator : Prop
  boundCondition : Prop

structure WeakFormCompactnessEvidence (P : WeakFormCompactnessPackage) where
  boundedSequenceClosed : P.boundedSequence
  weakConvergentSubsequenceClosed : P.weakConvergentSubsequence
  coerciveOperatorClosed : P.coerciveOperator
  boundConditionClosed : P.boundCondition

def WeakFormCompactnessClosed (P : WeakFormCompactnessPackage) : Prop :=
  P.boundedSequence ∧ P.weakConvergentSubsequence ∧ P.coerciveOperator ∧ P.boundCondition

theorem weak_form_compactness_closed_from_evidence (P : WeakFormCompactnessPackage) (E : WeakFormCompactnessEvidence P) : WeakFormCompactnessClosed P := by
  exact And.intro E.boundedSequenceClosed (And.intro E.weakConvergentSubsequenceClosed (And.intro E.coerciveOperatorClosed E.boundConditionClosed))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse