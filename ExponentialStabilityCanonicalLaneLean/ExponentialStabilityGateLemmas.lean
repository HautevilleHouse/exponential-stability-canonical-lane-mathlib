import ExponentialStabilityCanonicalLaneLean.ExponentialStabilityBridgeLemmas

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

def gateClosed (A : ExponentialStabilityAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ExponentialStabilityAdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse