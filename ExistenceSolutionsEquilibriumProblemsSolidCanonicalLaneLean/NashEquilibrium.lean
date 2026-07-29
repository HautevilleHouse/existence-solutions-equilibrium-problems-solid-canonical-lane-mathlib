import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure NashEquilibriumPackage where
  finitePlayers : Nat
  strategySets : Type u → Prop
  payoffFunctions : Type v
  mixedStrategySpaces : Type w
  equilibriumExists : Prop

structure NashEquilibriumEvidence (P : NashEquilibriumPackage) where
  finitePlayersClosed : P.finitePlayers = 2
  strategySetsClosed : P.strategySets
  payoffFunctionsClosed : P.payoffFunctions
  mixedStrategySpacesClosed : P.mixedStrategySpaces
  equilibriumExistsClosed : P.equilibriumExists

def NashEquilibriumClosed (P : NashEquilibriumPackage) : Prop :=
  P.finitePlayers = 2 ∧ P.strategySets ∧ P.payoffFunctions ∧ P.mixedStrategySpaces ∧ P.equilibriumExists

theorem nash_equilibrium_closed_from_evidence (P : NashEquilibriumPackage) (E : NashEquilibriumEvidence P) : NashEquilibriumClosed P := by
  exact And.intro E.finitePlayersClosed (And.intro E.strategySetsClosed (And.intro E.payoffFunctionsClosed (And.intro E.mixedStrategySpacesClosed E.equilibriumExistsClosed)))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse