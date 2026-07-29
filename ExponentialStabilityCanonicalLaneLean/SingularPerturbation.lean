import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure SingularPerturbationPackage {L : LyapunovFunctionalPackage} (B : LinearizationPackage L) where
  fastTimeScale : Prop
  slowTimeScale : Prop
  boundaryLayerCorrection : Prop
  reducedOrderModel : Type u
  stabilityPreservedUnderTikhonov : Prop

structure SingularPerturbationEvidence {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (S : SingularPerturbationPackage B) where
  fastTimeScaleClosed : S.fastTimeScale
  slowTimeScaleClosed : S.slowTimeScale
  boundaryLayerCorrectionClosed : S.boundaryLayerCorrection
  stabilityPreservedUnderTikhonovClosed : S.stabilityPreservedUnderTikhonov

def SingularPerturbationClosed {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (S : SingularPerturbationPackage B) : Prop :=
  S.fastTimeScale ∧ S.slowTimeScale ∧ S.boundaryLayerCorrection ∧ S.stabilityPreservedUnderTikhonov

theorem singular_perturbation_closed_from_evidence {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (S : SingularPerturbationPackage B)
    (E : SingularPerturbationEvidence S) : SingularPerturbationClosed S := by
  exact And.intro E.fastTimeScaleClosed
    (And.intro E.slowTimeScaleClosed
      (And.intro E.boundaryLayerCorrectionClosed E.stabilityPreservedUnderTikhonovClosed))

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse