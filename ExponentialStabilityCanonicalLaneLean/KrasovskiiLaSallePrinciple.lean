import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure KrasovskiiLaSallePackage where
  invariantSet : Type u
  lyapunovFunctionNonincreasing : Prop
  largestInvariantSubset : Prop
  asymptoticConvergence : Prop

structure KrasovskiiLaSalleEvidence (K : KrasovskiiLaSallePackage) where
  lyapunovFunctionNonincreasingClosed : K.lyapunovFunctionNonincreasing
  largestInvariantSubsetClosed : K.largestInvariantSubset
  asymptoticConvergenceClosed : K.asymptoticConvergence

def KrasovskiiLaSalleClosed (K : KrasovskiiLaSallePackage) : Prop :=
  K.lyapunovFunctionNonincreasing ∧ K.largestInvariantSubset ∧ K.asymptoticConvergence

theorem krasovskii_la_salle_closed_from_evidence (K : KrasovskiiLaSallePackage)
    (E : KrasovskiiLaSalleEvidence K) : KrasovskiiLaSalleClosed K := by
  exact And.intro E.lyapunovFunctionNonincreasingClosed
    (And.intro E.largestInvariantSubsetClosed E.asymptoticConvergenceClosed)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse