import canonicalLaneMathlib.AdmissibleClass

/-!
# Perturbation Estimates Package
-/

namespace HautevilleHouse
namespace ExponentialStabilityCanonicalLaneLean

structure PerturbationEstimatesPackage {O : LinearizedOperatorPackage} where
  nonlinearBound : Prop
  remainderEstimate : Prop
  stabilityMargin : Prop

structure PerturbationEstimatesEvidence {O : LinearizedOperatorPackage}
    (P : PerturbationEstimatesPackage O) where
  nonlinearBoundClosed : P.nonlinearBound
  remainderEstimateClosed : P.remainderEstimate
  stabilityMarginClosed : P.stabilityMargin

def PerturbationEstimatesClosed {O : LinearizedOperatorPackage}
    (P : PerturbationEstimatesPackage O) : Prop :=
  P.nonlinearBound ∧ P.remainderEstimate ∧ P.stabilityMargin

theorem perturbation_estimates_closed_from_evidence
    {O : LinearizedOperatorPackage} (P : PerturbationEstimatesPackage O)
    (Ev : PerturbationEstimatesEvidence P) : PerturbationEstimatesClosed P := by
  exact And.intro Ev.nonlinearBoundClosed
    (And.intro Ev.remainderEstimateClosed Ev.stabilityMarginClosed)

end ExponentialStabilityCanonicalLaneLean
end HautevilleHouse
