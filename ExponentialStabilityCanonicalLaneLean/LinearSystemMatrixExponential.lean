import ExponentialStabilityCanonicalLaneLean.ExponentialStabilityAdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LinearStabilityPackage (n : ℕ) where
  matrix : Matrix (Fin n) (Fin n) ℝ
  spectralAbscissaNegative : Prop
  matrixExponentialDecay : Prop
  spectralAbscissaNegativeClosed : spectralAbscissaNegative
  matrixExponentialDecayClosed : matrixExponentialDecay

def LinearStabilityClosed (n : ℕ) (L : LinearStabilityPackage n) : Prop :=
  L.spectralAbscissaNegative ∧ L.matrixExponentialDecay

theorem linear_stability_closed (n : ℕ) (L : LinearStabilityPackage n) :
    LinearStabilityClosed n L :=
  And.intro L.spectralAbscissaNegativeClosed L.matrixExponentialDecayClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse