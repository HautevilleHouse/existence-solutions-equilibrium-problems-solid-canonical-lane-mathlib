import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure VariationalPrinciple where
  energyFunctional : (SolidBody → ℝ) → ℝ
  equilibriumIsCriticalPoint : Prop
  convexityCondition : Prop
  existenceMinimizer : Prop

structure VariationalEvidence (V : VariationalPrinciple) where
  equilibriumIsCriticalPointClosed : V.equilibriumIsCriticalPoint
  convexityConditionClosed : V.convexityCondition
  existenceMinimizerClosed : V.existenceMinimizer

def VariationalClosed (V : VariationalPrinciple) : Prop :=
  V.equilibriumIsCriticalPoint ∧ V.convexityCondition ∧ V.existenceMinimizer

theorem variational_closed_from_evidence (V : VariationalPrinciple) (E : VariationalEvidence V) : VariationalClosed V := by
  exact And.intro E.equilibriumIsCriticalPointClosed (And.intro E.convexityConditionClosed E.existenceMinimizerClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse