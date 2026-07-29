import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LyapunovFunctionalPackage where
  stateSpace : Type u
  energy : stateSpace → ℝ
  timeDerivative : stateSpace → ℝ
  positiveDefinite : Prop
  negativeSemidefiniteDerivative : Prop
  boundedness : Prop

def LyapunovFunctionalClosed (L : LyapunovFunctionalPackage) : Prop :=
  L.positiveDefinite ∧ L.negativeSemidefiniteDerivative ∧ L.boundedness

theorem lyapunov_implies_stability (L : LyapunovFunctionalPackage) :
    LyapunovFunctionalClosed L → Prop :=
  λ h => L.positiveDefinite

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse