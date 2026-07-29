import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LinearizationPackage where
  equilibriumPoint : Type u
  linearizedSystem : Type v
  spectrumInLeftHalfPlane : Prop
  hartmanGrobmanCondition : Prop

structure LinearizationEvidence (L : LinearizationPackage) where
  spectrumInLeftHalfPlaneClosed : L.spectrumInLeftHalfPlane
  hartmanGrobmanConditionClosed : L.hartmanGrobmanCondition

def LinearizationClosed (L : LinearizationPackage) : Prop :=
  L.spectrumInLeftHalfPlane ∧ L.hartmanGrobmanCondition

theorem linearization_closed_from_evidence (L : LinearizationPackage)
    (E : LinearizationEvidence L) : LinearizationClosed L := by
  exact And.intro E.spectrumInLeftHalfPlaneClosed E.hartmanGrobmanConditionClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse