import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure ProximalPointPackage where
  convexFunction : Type u → Prop
  proximalMapping : Type v
  iterationConvergence : Prop
  rateOfConvergence : Prop
  resolventProperties : Prop

structure ProximalPointEvidence (P : ProximalPointPackage) where
  convexFunctionClosed : P.convexFunction
  proximalMappingClosed : P.proximalMapping
  iterationConvergenceClosed : P.iterationConvergence
  rateOfConvergenceClosed : P.rateOfConvergence
  resolventPropertiesClosed : P.resolventProperties

def ProximalPointClosed (P : ProximalPointPackage) : Prop :=
  P.convexFunction ∧ P.proximalMapping ∧ P.iterationConvergence ∧ P.rateOfConvergence ∧ P.resolventProperties

theorem proximal_point_closed_from_evidence (P : ProximalPointPackage) (E : ProximalPointEvidence P) : ProximalPointClosed P := by
  exact And.intro E.convexFunctionClosed (And.intro E.proximalMappingClosed (And.intro E.iterationConvergenceClosed (And.intro E.rateOfConvergenceClosed E.resolventPropertiesClosed)))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse