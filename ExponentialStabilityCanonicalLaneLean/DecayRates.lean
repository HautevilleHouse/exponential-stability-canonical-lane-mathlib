import canonicalLaneMathlib.AdmissibleClass

/-!
# Decay Rates Package
-/

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure DecayRatesPackage {P : PerturbationEstimatesPackage} where
  exponentialRate : ℝ
  ratePositive : Prop
  normDecayEstimate : Prop

structure DecayRatesEvidence {P : PerturbationEstimatesPackage}
    (D : DecayRatesPackage P) where
  ratePositiveClosed : D.ratePositive
  normDecayEstimateClosed : D.normDecayEstimate

def DecayRatesClosed {P : PerturbationEstimatesPackage}
    (D : DecayRatesPackage P) : Prop :=
  D.ratePositive ∧ D.normDecayEstimate

theorem decay_rates_closed_from_evidence
    {P : PerturbationEstimatesPackage} (D : DecayRatesPackage P)
    (Ev : DecayRatesEvidence D) : DecayRatesClosed D := by
  exact And.intro Ev.ratePositiveClosed Ev.normDecayEstimateClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse
