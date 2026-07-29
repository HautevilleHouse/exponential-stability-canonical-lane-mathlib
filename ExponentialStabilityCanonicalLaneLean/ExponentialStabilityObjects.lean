import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure StableSystem where
  carrier : Type
  normedSpace : NormedAddCommGroup carrier
  dynamics : carrier → carrier
  exponentialStability : Prop
  lyapunovFunction : carrier → ℝ
  lyapunovEstimate : Prop
  conclusion : exponentialStability

structure ExponentialAdmittedObject where
  system : StableSystem
  decayRate : ℝ
  dissipationBound : ℝ
  conclusion : system.exponentialStability

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse