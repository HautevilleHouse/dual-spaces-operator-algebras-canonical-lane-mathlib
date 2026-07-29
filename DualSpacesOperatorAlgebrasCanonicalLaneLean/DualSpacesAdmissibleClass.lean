import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : DualSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
