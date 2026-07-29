import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure VariationalInequality where
  ambientSpace : Type u
  bilinearForm : ambientSpace → ambientSpace → ℝ
  convexSet : Set ambientSpace
  solution : ambientSpace
  inequality : ∀ y ∈ convexSet, bilinearForm solution (y - solution) ≥ 0

def VariationalInequalityClosed (V : VariationalInequality) : Prop :=
  V.solution ∈ V.convexSet ∧ V.inequality

structure SolutionExistenceBridge (A : AdmissibleClass) where
  vi : VariationalInequality
  bridgeClosed : VariationalInequalityClosed vi
  gateClosed : A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_variational_inequality (A : AdmissibleClass) (B : SolutionExistenceBridge A) :
    bridgeClosed A := by
  exact B.bridgeClosed

theorem gate_from_variational_inequality (A : AdmissibleClass) (B : SolutionExistenceBridge A) :
    gateClosed A := by
  exact B.gateClosed

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse