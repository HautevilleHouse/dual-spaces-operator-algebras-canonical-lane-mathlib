import DualSpacesOperatorAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

def dualOperatorProjection : Projection DualOperatorEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dual_operator_projection_idempotent (x : DualOperatorEndgameState) :
    dualOperatorProjection.toFun (dualOperatorProjection.toFun x) = dualOperatorProjection.toFun x := by
  exact dualOperatorProjection.idempotent x

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse