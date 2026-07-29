import ExponentialStabilityCanonicalLaneLean.ExponentialStabilityObjects

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure LyapunovEquationPackage where
  system : StableSystem
  lyapunovFunction : system.carrier → ℝ
  derivativeAlongFlow : system.carrier → ℝ
  negativeDefiniteBound : Prop
  quadraticStructure : Prop
  dissipationInequality : Prop

structure LyapunovEquationEvidence (L : LyapunovEquationPackage) where
  negativeDefiniteBoundClosed : L.negativeDefiniteBound
  quadraticStructureClosed : L.quadraticStructure
  dissipationInequalityClosed : L.dissipationInequality

def LyapunovEquationClosed (L : LyapunovEquationPackage) : Prop :=
  L.negativeDefiniteBound ∧ L.quadraticStructure ∧ L.dissipationInequality

theorem lyapunov_equation_closed_from_evidence (L : LyapunovEquationPackage) (E : LyapunovEquationEvidence L) :
    LyapunovEquationClosed L := by
  exact And.intro E.negativeDefiniteBoundClosed (And.intro E.quadraticStructureClosed E.dissipationInequalityClosed)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse