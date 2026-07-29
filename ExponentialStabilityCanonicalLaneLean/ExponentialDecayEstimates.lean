import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure ExponentialDecayPackage where
  decayRate : ℝ
  decayRatePositive : Prop
  normBound : Prop
  exponentialInequality : Prop

structure ExponentialDecayEvidence (E : ExponentialDecayPackage) where
  decayRatePositiveClosed : E.decayRatePositive
  normBoundClosed : E.normBound
  exponentialInequalityClosed : E.exponentialInequality

def ExponentialDecayClosed (E : ExponentialDecayPackage) : Prop :=
  E.decayRatePositive ∧ E.normBound ∧ E.exponentialInequality

theorem exponential_decay_closed_from_evidence (E : ExponentialDecayPackage)
    (Ev : ExponentialDecayEvidence E) : ExponentialDecayClosed E := by
  exact And.intro Ev.decayRatePositiveClosed
    (And.intro Ev.normBoundClosed Ev.exponentialInequalityClosed)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse