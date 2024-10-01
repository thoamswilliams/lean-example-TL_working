-- This module serves as the root of the `Example` library.
-- Import modules here that should be built as part of the library.
import Mathlib.LinearAlgebra.Eigenspace.Basic



variable {R n M : Type*} [DecidableEq n] [Fintype n]

open Matrix Module.End

section NontrivialCommRing

variable [CommRing R] [Nontrivial R] [AddCommGroup M] [Module R M]


/-- Basis vectors are eigenvectors of associated diagonal linear operator. -/
lemma hasEigenvector_toLin_diagonal (d : n → R) (i : n) (b : Basis n R M) :
  HasEigenvector (toLin b b (diagonal d)) (d i) (b i) :=
  ⟨mem_eigenspace_iff.mpr <| by simp [diagonal], Basis.ne_zero b i⟩
