import canonicalLaneMathlib.AdmissibleClass

/-!
# Linearized Operator Package
-/

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LinearizedOperatorPackage {L : LyapunovFunctionalPackage} where
  operatorDomain : Type u
  spectrumGap : Prop
  coercivity : Prop

structure LinearizedOperatorEvidence {L : LyapunovFunctionalPackage}
    (O : LinearizedOperatorPackage L) where
  spectrumGapClosed : O.spectrumGap
  coercivityClosed : O.coercivity

def LinearizedOperatorClosed {L : LyapunovFunctionalPackage}
    (O : LinearizedOperatorPackage L) : Prop :=
  O.spectrumGap ∧ O.coercivity

theorem linearized_operator_closed_from_evidence
    {L : LyapunovFunctionalPackage} (O : LinearizedOperatorPackage L)
    (Ev : LinearizedOperatorEvidence O) : LinearizedOperatorClosed O := by
  exact And.intro Ev.spectrumGapClosed Ev.coercivityClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse
