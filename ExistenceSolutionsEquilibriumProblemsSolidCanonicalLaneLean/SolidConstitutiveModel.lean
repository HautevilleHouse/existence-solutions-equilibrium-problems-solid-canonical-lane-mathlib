import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure SolidConstitutiveModelPackage where
  linearElasticity : Prop
  hyperelasticLaw : Prop
  materialStability : Prop
  linearElasticityClosed : linearElasticity
  hyperelasticLawClosed : hyperelasticLaw
  materialStabilityClosed : materialStability

structure SolidConstitutiveModelEvidence (P : SolidConstitutiveModelPackage) where
  linearElasticityClosed : P.linearElasticity
  hyperelasticLawClosed : P.hyperelasticLaw
  materialStabilityClosed : P.materialStability

def SolidConstitutiveModelClosed (P : SolidConstitutiveModelPackage) : Prop :=
  P.linearElasticity ∧ P.hyperelasticLaw ∧ P.materialStability

theorem solid_constitutive_model_closed_from_evidence (P : SolidConstitutiveModelPackage) (E : SolidConstitutiveModelEvidence P) :
    SolidConstitutiveModelClosed P := by
  exact And.intro E.linearElasticityClosed (And.intro E.hyperelasticLawClosed E.materialStabilityClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
