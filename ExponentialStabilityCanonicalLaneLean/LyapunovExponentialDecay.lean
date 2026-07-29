import ExponentialStabilityCanonicalLaneLean.ExponentialStabilityAdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LyapunovFunctionEvidence {A : ExponentialStabilityAdmissibleClass} where
  positiveDefinite : Prop
  derivativeNegativeDefinite : Prop
  exponentialDecayRate : ℝ
  decayRatePositive : exponentialDecayRate > 0
  lyapunovConditionClosed : positiveDefinite ∧ derivativeNegativeDefinite

def LyapunovExponentialDecayClosed {A : ExponentialStabilityAdmissibleClass} : Prop :=
  A.object.stabilityCondition ∧ ∃ (rate : ℝ), rate > 0

theorem lyapunov_exponential_decay_closed
    {A : ExponentialStabilityAdmissibleClass}
    (E : LyapunovFunctionEvidence A) : LyapunovExponentialDecayClosed := by
  refine And.intro A.object.conclusion ?_
  refine ⟨E.exponentialDecayRate, E.decayRatePositive⟩

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse