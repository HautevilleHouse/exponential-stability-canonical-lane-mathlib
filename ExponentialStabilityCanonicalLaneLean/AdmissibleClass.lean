import ExponentialStabilityCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure AdmissibleClass where
  object : ExponentialStabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExponentialStabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse