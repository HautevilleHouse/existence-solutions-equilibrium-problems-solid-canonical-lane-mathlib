import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure BoundaryValueProblemPackage where
  dirichletCondition : Prop
  neumannCondition : Prop
  mixedCondition : Prop
  compatibility : Prop
  dirichletConditionClosed : dirichletCondition
  neumannConditionClosed : neumannCondition
  mixedConditionClosed : mixedCondition
  compatibilityClosed : compatibility

structure BoundaryValueProblemEvidence (P : BoundaryValueProblemPackage) where
  dirichletConditionClosed : P.dirichletCondition
  neumannConditionClosed : P.neumannCondition
  mixedConditionClosed : P.mixedCondition
  compatibilityClosed : P.compatibility

def BoundaryValueProblemClosed (P : BoundaryValueProblemPackage) : Prop :=
  P.dirichletCondition ∧ P.neumannCondition ∧ P.mixedCondition ∧ P.compatibility

theorem boundary_value_problem_closed_from_evidence (P : BoundaryValueProblemPackage) (E : BoundaryValueProblemEvidence P) :
    BoundaryValueProblemClosed P := by
  exact And.intro E.dirichletConditionClosed (And.intro E.neumannConditionClosed (And.intro E.mixedConditionClosed E.compatibilityClosed))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
