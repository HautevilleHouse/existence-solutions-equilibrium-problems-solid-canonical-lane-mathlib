import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumPrinciplePackage where
  energyMinimization : Prop
  stressBalance : Prop
  variationalPrinciple : Prop
  energyMinimizationClosed : energyMinimization
  stressBalanceClosed : stressBalance
  variationalPrincipleClosed : variationalPrinciple

structure EquilibriumPrincipleEvidence (P : EquilibriumPrinciplePackage) where
  energyMinimizationClosed : P.energyMinimization
  stressBalanceClosed : P.stressBalance
  variationalPrincipleClosed : P.variationalPrinciple

def EquilibriumPrincipleClosed (P : EquilibriumPrinciplePackage) : Prop :=
  P.energyMinimization ∧ P.stressBalance ∧ P.variationalPrinciple

theorem equilibrium_principle_closed_from_evidence (P : EquilibriumPrinciplePackage) (E : EquilibriumPrincipleEvidence P) :
    EquilibriumPrincipleClosed P := by
  exact And.intro E.energyMinimizationClosed (And.intro E.stressBalanceClosed E.variationalPrincipleClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
