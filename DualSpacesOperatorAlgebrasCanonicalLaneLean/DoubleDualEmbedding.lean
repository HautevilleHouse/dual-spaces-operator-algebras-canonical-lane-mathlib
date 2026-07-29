import DualSpacesOperatorAlgebrasCanonicalLaneLean.OperatorAlgebraPackage

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure DoubleDualEmbeddingPackage {B : BanachDualPackage}
    (A : OperatorAlgebraPackage B) where
  doubleDual : Type u
  embedding : B.space → doubleDual
  isometric : Prop
  homeomorphicImage : Prop
  closureProperties : Prop
  isometricClosed : isometric
  homeomorphicImageClosed : homeomorphicImage
  closurePropertiesClosed : closureProperties

structure DoubleDualEmbeddingEvidence {B : BanachDualPackage}
    {A : OperatorAlgebraPackage B} (D : DoubleDualEmbeddingPackage A) where
  isometricClosed : D.isometric
  homeomorphicImageClosed : D.homeomorphicImage
  closurePropertiesClosed : D.closureProperties

def DoubleDualEmbeddingClosed {B : BanachDualPackage}
    {A : OperatorAlgebraPackage B} (D : DoubleDualEmbeddingPackage A) : Prop :=
  D.isometric ∧ D.homeomorphicImage ∧ D.closureProperties

theorem double_dual_embedding_closed_from_evidence
    {B : BanachDualPackage} {A : OperatorAlgebraPackage B}
    (D : DoubleDualEmbeddingPackage A) (E : DoubleDualEmbeddingEvidence D) :
    DoubleDualEmbeddingClosed D := by
  exact And.intro E.isometricClosed
    (And.intro E.homeomorphicImageClosed E.closurePropertiesClosed)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse