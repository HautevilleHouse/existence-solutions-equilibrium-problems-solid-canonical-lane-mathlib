import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure ExistenceSolutionEquilibriumAdmittedObject where
  solidBody : Type
  topology : TopologicalSpace solidBody
  boundaryConditions : Prop
  existenceProof : Prop
  conclusion : existenceProof

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse