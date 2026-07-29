import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasCanonicalLaneLean.DualSpace
import DualSpacesOperatorAlgebrasCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let D : DualSpacePackage := A.object.space
  DualSpaceClosed D

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  -- A.object.space is of type DualSpacePackage, and we need to show DualSpaceClosed it.
  -- From the AdmissibleClass, we can extract evidence that the dual space is closed.
  have h := A.dualSpaceEvidence
  -- Assuming that A.dualSpaceEvidence provides a proof of DualSpaceClosed (A.object.space)
  exact h

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedDualOperatorAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_operator_algebra_endgame (A : AdmissibleClass) :
    ConstrainedDualOperatorAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse