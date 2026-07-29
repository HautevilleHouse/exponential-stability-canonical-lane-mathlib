import ExponentialStabilityCanonicalLaneLean.BoundedRealGain

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure SmallGainTheoremPackage where
  systemA : StableSystem
  systemB : StableSystem
  interconnection : systemA.carrier × systemB.carrier → systemA.carrier × systemB.carrier
  gainProductCondition : Prop
  closedLoopStability : Prop

structure SmallGainTheoremEvidence (S : SmallGainTheoremPackage) where
  gainProductConditionClosed : S.gainProductCondition
  closedLoopStabilityClosed : S.closedLoopStability

def SmallGainTheoremClosed (S : SmallGainTheoremPackage) : Prop :=
  S.gainProductCondition ∧ S.closedLoopStability

theorem small_gain_theorem_closed_from_evidence (S : SmallGainTheoremPackage) (E : SmallGainTheoremEvidence S) :
    SmallGainTheoremClosed S := by
  exact And.intro E.gainProductConditionClosed E.closedLoopStabilityClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse