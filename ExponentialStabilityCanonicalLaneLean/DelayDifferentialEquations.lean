import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure DelayDifferentialEquationsPackage {L : LyapunovFunctionalPackage}
    (B : LinearizationPackage L) where
  delayFunctional : Prop
  delayKernel : Type u
  lyapunovKrasovskiiFunctional : L.stateSpace → ℝ
  derivativeNegativeDefiniteWithDelay : Prop

structure DelayDifferentialEquationsEvidence {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (D : DelayDifferentialEquationsPackage B) where
  delayFunctionalDefined : D.delayFunctional
  delayKernelDefined : True
  lyapunovKrasovskiiFunctionalDefined : True
  derivativeNegativeDefiniteWithDelayClosed : D.derivativeNegativeDefiniteWithDelay

def DelayDifferentialEquationsClosed {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (D : DelayDifferentialEquationsPackage B) : Prop :=
  D.delayFunctional ∧ D.derivativeNegativeDefiniteWithDelay

theorem delay_differential_equations_closed_from_evidence {L : LyapunovFunctionalPackage}
    {B : LinearizationPackage L} (D : DelayDifferentialEquationsPackage B)
    (E : DelayDifferentialEquationsEvidence D) : DelayDifferentialEquationsClosed D := by
  exact And.intro E.delayFunctionalDefined E.derivativeNegativeDefiniteWithDelayClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse