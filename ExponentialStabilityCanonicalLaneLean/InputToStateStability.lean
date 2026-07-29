import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure InputToStateStabilityPackage {L : LyapunovFunctionalPackage} (B : LinearizationPackage L) where
  inputSpace : Type u
  issLyapunovFunction : L.stateSpace → ℝ
  gainFunction : ℝ → ℝ
  comparisonFunctions : ℕ → (ℝ → ℝ)
  issInequalitySatisfied : Prop

structure InputToStateStabilityEvidence {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (I : InputToStateStabilityPackage B) where
  issLyapunovFunctionDefined : True
  gainFunctionDefined : True
  comparisonFunctionsDefined : True
  issInequalitySatisfiedClosed : I.issInequalitySatisfied

def InputToStateStabilityClosed {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (I : InputToStateStabilityPackage B) : Prop :=
  I.issInequalitySatisfied

theorem input_to_state_stability_closed_from_evidence {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (I : InputToStateStabilityPackage B)
    (E : InputToStateStabilityEvidence I) : InputToStateStabilityClosed I := by
  exact E.issInequalitySatisfiedClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse