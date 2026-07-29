import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LinearizationPackage (L : LyapunovFunctionalPackage) where
  equilibriumPoint : L.stateSpace
  linearizedSystem : Type u
  hurwitzMatrix : Type v
  eigenvalueRealNegative : Prop

structure LinearizationEvidence {L : LyapunovFunctionalPackage} (M : LinearizationPackage L) where
  equilibriumPointClosed : True
  linearizedSystemClosed : True
  hurwitzMatrixClosed : True
  eigenvalueRealNegativeClosed : M.eigenvalueRealNegative

def LinearizationClosed {L : LyapunovFunctionalPackage} (M : LinearizationPackage L) : Prop :=
  M.eigenvalueRealNegative

theorem linearization_closed_from_evidence {L : LyapunovFunctionalPackage}
    (M : LinearizationPackage L) (E : LinearizationEvidence M) : LinearizationClosed M := by
  exact E.eigenvalueRealNegativeClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse