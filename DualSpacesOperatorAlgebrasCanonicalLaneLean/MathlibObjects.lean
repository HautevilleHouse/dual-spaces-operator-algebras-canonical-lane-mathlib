import DualSpacesOperatorAlgebrasCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualSpace where
  carrier : Type*
  topology : TopologicalSpace carrier
  dualSpace : Type*
  dualTopology : TopologicalSpace dualSpace
  pairing : carrier → dualSpace → ℝ
  isBilinear : Prop
  isSeparating : Prop

structure DualOperatorAdmittedObject where
  space : DualSpace
  isBanach : Prop
  dualIsBanach : Prop
  operatorAlgebra : Type*
  operatorAlgebraTopology : TopologicalSpace operatorAlgebra
  isClosedUnderAdjoint : Prop
  conclusion : isClosedUnderAdjoint

structure DualOperatorEndgameState where
  object : DualOperatorAdmittedObject

def DualOperatorWitnessClosed (O : DualOperatorAdmittedObject) : Prop :=
  O.isClosedUnderAdjoint

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse