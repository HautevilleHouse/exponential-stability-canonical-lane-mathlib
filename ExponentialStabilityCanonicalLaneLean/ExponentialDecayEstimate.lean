import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure ExponentialDecayEstimatePackage where
  initialState : ℝ
  decayRate : ℝ
  solution : ℕ → ℝ
  exponentialBound : ∀ n : ℕ, |solution n| ≤ |initialState| * Real.exp (- decayRate * (n : ℝ))

def ExponentialDecayEstimateClosed (E : ExponentialDecayEstimatePackage) : Prop :=
  E.decayRate > 0 ∧ E.exponentialBound

theorem exponential_decay_closed_from_package (E : ExponentialDecayEstimatePackage) :
    ExponentialDecayEstimateClosed E := by
  refine And.intro ?_ E.exponentialBound
  exact by
    have hpos : E.decayRate > 0 := E.decayRate_pos
    exact hpos

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse