import ExponentialStabilityCanonicalLaneLean.ExponentialStabilityAdmissibleClass

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure ISSPackage (A : ExponentialStabilityAdmissibleClass) where
  inputSpace : Type u
  comparisonFunctions : Type v
  issInequality : Prop
  gainFunctionDecay : Prop
  issInequalityClosed : issInequality
  gainFunctionDecayClosed : gainFunctionDecay

def ISSClosed {A : ExponentialStabilityAdmissibleClass} (I : ISSPackage A) : Prop :=
  I.issInequality ∧ I.gainFunctionDecay

theorem iss_closed {A : ExponentialStabilityAdmissibleClass}
    (I : ISSPackage A) : ISSClosed I :=
  And.intro I.issInequalityClosed I.gainFunctionDecayClosed

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse