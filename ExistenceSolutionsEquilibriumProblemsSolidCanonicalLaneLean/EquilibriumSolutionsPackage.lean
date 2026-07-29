import ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean.ExistenceTheoryPackage

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumSolutionsPackage {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} {E : ExistenceTheoryPackage SM}
    (ET : ExistenceTheoryEvidence E) where
  equilibriumConfigurationSet : Prop
  energyMinimizationPrinciple : Prop
  eulerLagrangeEquations : Prop
  boundaryConditionSatisfaction : Prop

structure EquilibriumSolutionsEvidence {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} {E : ExistenceTheoryPackage SM}
    {ET : ExistenceTheoryEvidence E} (Eq : EquilibriumSolutionsPackage ET) where
  equilibriumConfigurationSetClosed : Eq.equilibriumConfigurationSet
  energyMinimizationPrincipleClosed : Eq.energyMinimizationPrinciple
  eulerLagrangeEquationsClosed : Eq.eulerLagrangeEquations
  boundaryConditionSatisfactionClosed : Eq.boundaryConditionSatisfaction

def EquilibriumSolutionsClosed {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} {E : ExistenceTheoryPackage SM}
    {ET : ExistenceTheoryEvidence E} (Eq : EquilibriumSolutionsPackage ET) : Prop :=
  Eq.equilibriumConfigurationSet ∧ Eq.energyMinimizationPrinciple ∧ Eq.eulerLagrangeEquations ∧ Eq.boundaryConditionSatisfaction

theorem equilibrium_solutions_closed_from_evidence {S : SolidMechanicsPackage} {SM : SolidMechanicsEvidence S} {E : ExistenceTheoryPackage SM}
    {ET : ExistenceTheoryEvidence E} (Eq : EquilibriumSolutionsPackage ET) (Ev : EquilibriumSolutionsEvidence Eq) :
    EquilibriumSolutionsClosed Eq := by
  exact And.intro Ev.equilibriumConfigurationSetClosed
    (And.intro Ev.energyMinimizationPrincipleClosed
      (And.intro Ev.eulerLagrangeEquationsClosed Ev.boundaryConditionSatisfactionClosed))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse