import ExponentialStabilityCanonicalLaneLean.ExponentialDecayEstimate

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure BoundedRealGainPackage where
  system : StableSystem
  inputOutputMap : system.carrier → system.carrier
  gainBound : ℝ
  finiteGainCondition : Prop
  stabilityPreserved : Prop

structure BoundedRealGainEvidence (B : BoundedRealGainPackage) where
  finiteGainConditionClosed : B.finiteGainCondition
  stabilityPreservedClosed : B.stabilityPreserved

def BoundedRealGainClosed (B : BoundedRealGainPackage) : Prop :=
  B.finiteGainCondition ∧ B.stabilityPreserved

theorem bounded_real_gain_closed_from_evidence (B : BoundedRealGainPackage) (E : BoundedRealGainEvidence B) :
    BoundedRealGainClosed B := by
  exact And.intro E.finiteGainConditionClosed E.stabilityPreservedClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse