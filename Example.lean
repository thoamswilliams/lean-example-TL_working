-- This module serves as the root of the `Example` library.
-- Import modules here that should be built as part of the library.
-- import Mathlib.LinearAlgebra.Eigenspace.Basic



-- variable {R n M : Type*} [DecidableEq n] [Fintype n]

-- open Matrix Module.End

-- section NontrivialCommRing

-- variable [CommRing R] [Nontrivial R] [AddCommGroup M] [Module R M]


-- /-- Basis vectors are eigenvectors of associated diagonal linear operator. -/
-- lemma hasEigenvector_toLin_diagonal (d : n → R) (i : n) (b : Basis n R M) :
--   HasEigenvector (toLin b b (diagonal d)) (d i) (b i) :=
--   ⟨mem_eigenspace_iff.mpr <| by simp [diagonal], Basis.ne_zero b i⟩

open Nat (add_assoc add_comm)

theorem hello_world (a b c : Nat)
  : a + b + c = a + c + b := by
  rw [add_assoc, add_comm b, ←add_assoc]

theorem foo (a : Nat) : a + 1 = Nat.succ a := by rfl
