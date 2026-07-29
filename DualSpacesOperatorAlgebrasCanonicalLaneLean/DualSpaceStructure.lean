import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure DualSpacePackage where
  primalSpace : Type u
  dualSpace : Type v
  pairing : primalSpace → dualSpace → ℝ
  isLocallyConvex : Prop
  weakDualTopology : Prop
  isBanachDual : Prop

def dualSpaceClosed (D : DualSpacePackage) : Prop := D.isLocallyConvex ∧ D.weakDualTopology ∧ D.isBanachDual

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse