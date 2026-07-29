import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure FixedPointProblem where
  mapping : SolidBody → SolidBody
  continuityAssumption : Prop
  compactnessAssumption : Prop
  fixedPointExists : Prop

structure FixedPointEvidence (F : FixedPointProblem) where
  continuityAssumptionClosed : F.continuityAssumption
  compactnessAssumptionClosed : F.compactnessAssumption
  fixedPointExistsClosed : F.fixedPointExists

def FixedPointClosed (F : FixedPointProblem) : Prop :=
  F.continuityAssumption ∧ F.compactnessAssumption ∧ F.fixedPointExists

theorem fixed_point_closed_from_evidence (F : FixedPointProblem) (E : FixedPointEvidence F) : FixedPointClosed F := by
  exact And.intro E.continuityAssumptionClosed (And.intro E.compactnessAssumptionClosed E.fixedPointExistsClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse