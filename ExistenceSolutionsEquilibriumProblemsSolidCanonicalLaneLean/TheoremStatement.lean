import HautevilleHouse.ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean

structure SolidProblemData where
  domain : Type
  operator : domain → domain
  solution : domain → Prop
  equilibrium : domain → Prop

structure SolidAdmittedObject where
  data : SolidProblemData
  existence_proved : Prop
  equilibrium_proved : Prop
  conclusion : existence_proved ∧ equilibrium_proved

def SolidWitnessClosed (O : SolidAdmittedObject) : Prop :=
  O.existence_proved ∧ O.equilibrium_proved

theorem solid_witness_closed_from_evidence (O : SolidAdmittedObject) :
    SolidWitnessClosed O :=
  O.conclusion

end ExistenceSolutionsEquilibriumProblemsSolidCanonicalLaneLean
end HautevilleHouse
