import DualSpacesOperatorAlgebrasCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : DualOperatorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualOperatorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse