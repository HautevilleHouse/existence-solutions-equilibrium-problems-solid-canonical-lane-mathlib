import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure KakutaniFixedPointPackage where
  convexCompactSet : Type u → Prop
  upperHemicontinuousCorrespondence : Prop
  nonemptyClosedConvexValues : Prop
  fixedPointExists : Prop
  topologicalConditions : Prop

structure KakutaniFixedPointEvidence (P : KakutaniFixedPointPackage) where
  convexCompactSetClosed : P.convexCompactSet
  upperHemicontinuousCorrespondenceClosed : P.upperHemicontinuousCorrespondence
  nonemptyClosedConvexValuesClosed : P.nonemptyClosedConvexValues
  fixedPointExistsClosed : P.fixedPointExists
  topologicalConditionsClosed : P.topologicalConditions

def KakutaniFixedPointClosed (P : KakutaniFixedPointPackage) : Prop :=
  P.convexCompactSet ∧ P.upperHemicontinuousCorrespondence ∧ P.nonemptyClosedConvexValues ∧ P.fixedPointExists ∧ P.topologicalConditions

theorem kakutani_fixed_point_closed_from_evidence (P : KakutaniFixedPointPackage) (E : KakutaniFixedPointEvidence P) : KakutaniFixedPointClosed P := by
  exact And.intro E.convexCompactSetClosed (And.intro E.upperHemicontinuousCorrespondenceClosed (And.intro E.nonemptyClosedConvexValuesClosed (And.intro E.fixedPointExistsClosed E.topologicalConditionsClosed)))

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse