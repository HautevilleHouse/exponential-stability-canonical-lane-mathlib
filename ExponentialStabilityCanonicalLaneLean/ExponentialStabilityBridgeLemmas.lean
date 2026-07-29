import ExponentialStabilityCanonicalLaneLean.ExponentialStabilityAdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

def bridgeClosed (A : ExponentialStabilityAdmissibleClass) : Prop :=
  A.object.stabilityCondition

theorem bridge_from_admissible_class (A : ExponentialStabilityAdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse