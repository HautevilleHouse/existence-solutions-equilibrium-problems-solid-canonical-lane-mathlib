import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure EquilibriumSolidObject where
  domain : Type u
  equilibriumField : Type v
  positionControl : Prop
  stressConstraint : Prop
  existenceCondition : Prop
  solutionBound : Prop
  equilibriumCondition : positionControl ∧ stressConstraint ∧ existenceCondition ∧ solutionBound

structure AdmissibleClass where
  object : EquilibriumSolidObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  equilibriumClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def equilibriumClosed (O : EquilibriumSolidObject) : Prop :=
  O.equilibriumCondition

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
