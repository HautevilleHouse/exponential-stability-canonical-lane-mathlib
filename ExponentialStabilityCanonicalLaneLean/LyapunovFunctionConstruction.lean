import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LyapunovFunctionPackage where
  stateSpace : Type u
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : Prop
  derivativeNegative : Prop
  radialUnbounded : Prop

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNegativeClosed : L.derivativeNegative
  radialUnboundedClosed : L.radialUnbounded

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegative ∧ L.radialUnbounded

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.derivativeNegativeClosed E.radialUnboundedClosed)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse