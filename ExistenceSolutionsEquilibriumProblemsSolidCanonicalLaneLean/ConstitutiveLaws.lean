import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure ConstitutiveLawsPackage where
  materialModel : Type
  hookesLaw : Prop
  nonlinearElasticity : Prop
  plasticityThreshold : Prop

structure ConstitutiveLawsEvidence (C : ConstitutiveLawsPackage) where
  hookesLawClosed : C.hookesLaw
  nonlinearElasticityClosed : C.nonlinearElasticity
  plasticityThresholdClosed : C.plasticityThreshold

def ConstitutiveLawsClosed (C : ConstitutiveLawsPackage) : Prop :=
  C.hookesLaw ∧ C.nonlinearElasticity ∧ C.plasticityThreshold

theorem constitutive_laws_closed_from_evidence
    (C : ConstitutiveLawsPackage) (Ev : ConstitutiveLawsEvidence C) :
    ConstitutiveLawsClosed C := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.nonlinearElasticityClosed Ev.plasticityThresholdClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse