import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure SolidMechanicsPackage where
  deformationGradient : Prop
  stressTensor : Prop
  constitutiveLaw : Prop
  boundaryConditions : Prop
  equilibriumEquations : Prop

structure SolidMechanicsEvidence (S : SolidMechanicsPackage) where
  deformationGradientClosed : S.deformationGradient
  stressTensorClosed : S.stressTensor
  constitutiveLawClosed : S.constitutiveLaw
  boundaryConditionsClosed : S.boundaryConditions
  equilibriumEquationsClosed : S.equilibriumEquations

def SolidMechanicsClosed (S : SolidMechanicsPackage) : Prop :=
  S.deformationGradient ∧ S.stressTensor ∧ S.constitutiveLaw ∧ S.boundaryConditions ∧ S.equilibriumEquations

theorem solid_mechanics_closed_from_evidence (S : SolidMechanicsPackage) (E : SolidMechanicsEvidence S) : SolidMechanicsClosed S := by
  exact And.intro E.deformationGradientClosed
    (And.intro E.stressTensorClosed
      (And.intro E.constitutiveLawClosed
        (And.intro E.boundaryConditionsClosed E.equilibriumEquationsClosed)))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse