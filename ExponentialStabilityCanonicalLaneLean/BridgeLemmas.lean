import ExponentialStabilityCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExponentialStabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse