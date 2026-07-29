import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure ExistenceSolutionPackage where
  existenceResult : Prop
  solutionUniqueness : Prop
  stabilityUnderPerturbation : Prop
  existenceResultClosed : existenceResult
  solutionUniquenessClosed : solutionUniqueness
  stabilityUnderPerturbationClosed : stabilityUnderPerturbation

structure ExistenceSolutionEvidence (P : ExistenceSolutionPackage) where
  existenceResultClosed : P.existenceResult
  solutionUniquenessClosed : P.solutionUniqueness
  stabilityUnderPerturbationClosed : P.stabilityUnderPerturbation

def ExistenceSolutionClosed (P : ExistenceSolutionPackage) : Prop :=
  P.existenceResult ∧ P.solutionUniqueness ∧ P.stabilityUnderPerturbation

theorem existence_solution_closed_from_evidence (P : ExistenceSolutionPackage) (E : ExistenceSolutionEvidence P) :
    ExistenceSolutionClosed P := by
  exact And.intro E.existenceResultClosed (And.intro E.solutionUniquenessClosed E.stabilityUnderPerturbationClosed)

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
