import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumSystem where
  stateSpace : Type u
  constraintSet : stateSpace → Prop
  equilibriumCondition : (stateSpace → ℝ) → Prop
  solutionMapping : (stateSpace → ℝ) → stateSpace
  admissibleState : stateSpace → Prop

def EquilibriumClosed (E : EquilibriumSystem) : Prop :=
  ∀ (f : E.stateSpace → ℝ), E.equilibriumCondition f → E.admissibleState (E.solutionMapping f)

structure ExistenceBridge (A : AdmissibleClass) where
  system : EquilibriumSystem
  bridgeClosed : EquilibriumClosed system
  gateClosed : A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_equilibrium_system (A : AdmissibleClass) (B : ExistenceBridge A) :
    bridgeClosed A := by
  exact B.bridgeClosed

theorem gate_from_equilibrium_system (A : AdmissibleClass) (B : ExistenceBridge A) :
    gateClosed A := by
  exact B.gateClosed

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse