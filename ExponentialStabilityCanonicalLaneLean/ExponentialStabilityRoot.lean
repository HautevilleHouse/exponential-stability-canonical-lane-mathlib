import canonicalLaneMathlib.AdmissibleClass
import ExponentialStabilityCanonicalLaneLean.DecayRates

/-!
# Root Package for Exponential Stability
-/

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure EnergyNormPackage where
  hilbertSpace : Type u
  innerProduct : Type v
  normEquivalence : Prop

structure EnergyNormEvidence (E : EnergyNormPackage) where
  normEquivalenceClosed : E.normEquivalence

def EnergyNormClosed (E : EnergyNormPackage) : Prop :=
  E.normEquivalence

theorem energy_norm_closed_from_evidence (E : EnergyNormPackage)
    (Ev : EnergyNormEvidence E) : EnergyNormClosed E := by
  exact Ev.normEquivalenceClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse
