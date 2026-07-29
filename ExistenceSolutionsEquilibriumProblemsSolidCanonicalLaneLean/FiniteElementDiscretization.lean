import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure FiniteElementDiscretizationPackage where
  mesh : Type
  shapeFunctions : Type
  stiffnessMatrix : Prop
  loadVector : Prop
  solutionApproximation : Prop

structure FiniteElementDiscretizationEvidence (F : FiniteElementDiscretizationPackage) where
  stiffnessMatrixClosed : F.stiffnessMatrix
  loadVectorClosed : F.loadVector
  solutionApproximationClosed : F.solutionApproximation

def FiniteElementDiscretizationClosed (F : FiniteElementDiscretizationPackage) : Prop :=
  F.stiffnessMatrix ∧ F.loadVector ∧ F.solutionApproximation

theorem finite_element_discretization_closed_from_evidence
    (F : FiniteElementDiscretizationPackage) (Ev : FiniteElementDiscretizationEvidence F) :
    FiniteElementDiscretizationClosed F := by
  exact And.intro Ev.stiffnessMatrixClosed
    (And.intro Ev.loadVectorClosed Ev.solutionApproximationClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse