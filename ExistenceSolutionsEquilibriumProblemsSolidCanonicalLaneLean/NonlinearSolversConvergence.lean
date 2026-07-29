import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure NonlinearSolversConvergencePackage where
  iterationScheme : Type
  residualNorm : Type
  convergenceCondition : Prop
  rateOfConvergence : Prop

structure NonlinearSolversConvergenceEvidence (N : NonlinearSolversConvergencePackage) where
  convergenceConditionClosed : N.convergenceCondition
  rateOfConvergenceClosed : N.rateOfConvergence

def NonlinearSolversConvergenceClosed (N : NonlinearSolversConvergencePackage) : Prop :=
  N.convergenceCondition ∧ N.rateOfConvergence

theorem nonlinear_solvers_convergence_closed_from_evidence
    (N : NonlinearSolversConvergencePackage) (Ev : NonlinearSolversConvergenceEvidence N) :
    NonlinearSolversConvergenceClosed N := by
  exact And.intro Ev.convergenceConditionClosed Ev.rateOfConvergenceClosed

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse