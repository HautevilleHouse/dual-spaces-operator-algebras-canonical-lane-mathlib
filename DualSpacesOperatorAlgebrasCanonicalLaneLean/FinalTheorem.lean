import DualSpacesOperatorAlgebrasCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

def ConstrainedDualOperatorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_operator_endgame (A : AdmissibleClass) :
    ConstrainedDualOperatorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse