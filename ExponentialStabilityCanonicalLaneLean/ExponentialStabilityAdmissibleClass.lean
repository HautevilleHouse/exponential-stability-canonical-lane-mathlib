import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure ExponentialStabilityAdmittedObject where
  system : Type u
  lyapunovFunction : Type v
  equilibriumPoint : system
  stabilityCondition : Prop
  conclusion : stabilityCondition

structure ExponentialStabilityAdmissibleClass where
  object : ExponentialStabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ExponentialStabilityAdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (gateClosed A)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse