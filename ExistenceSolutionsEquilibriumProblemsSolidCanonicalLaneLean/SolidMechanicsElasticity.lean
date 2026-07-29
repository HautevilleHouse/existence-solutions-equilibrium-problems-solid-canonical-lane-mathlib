import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure SolidMechanicsElasticityPackage where
  elasticBody : Type
  smallStrainTensor : Type
  stressStrainRelation : Prop
  equilibriumEquation : Prop
  boundaryConditions : Prop

structure SolidMechanicsElasticityEvidence (S : SolidMechanicsElasticityPackage) where
  stressStrainRelationClosed : S.stressStrainRelation
  equilibriumEquationClosed : S.equilibriumEquation
  boundaryConditionsClosed : S.boundaryConditions

def SolidMechanicsElasticityClosed (S : SolidMechanicsElasticityPackage) : Prop :=
  S.stressStrainRelation ∧ S.equilibriumEquation ∧ S.boundaryConditions

theorem solid_mechanics_elasticity_closed_from_evidence
    (S : SolidMechanicsElasticityPackage) (Ev : SolidMechanicsElasticityEvidence S) :
    SolidMechanicsElasticityClosed S := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.equilibriumEquationClosed Ev.boundaryConditionsClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse