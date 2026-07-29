import DualSpacesOperatorAlgebrasCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualOperatorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse