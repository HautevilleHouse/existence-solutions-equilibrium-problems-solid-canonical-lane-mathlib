import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure SolidBody where
  materialDomain : Type u
  displacementField : materialDomain → ℝ^3
  stressTensor : materialDomain → Matrices.Matrix ℝ 3 3
  equilibriumEquation : Prop
  boundaryCondition : Prop

structure SolidBodyEvidence (B : SolidBody) where
  equilibriumEquationClosed : B.equilibriumEquation
  boundaryConditionClosed : B.boundaryCondition

def SolidBodyClosed (B : SolidBody) : Prop :=
  B.equilibriumEquation ∧ B.boundaryCondition

theorem solid_body_closed_from_evidence (B : SolidBody) (E : SolidBodyEvidence B) : SolidBodyClosed B := by
  exact And.intro E.equilibriumEquationClosed E.boundaryConditionClosed

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse