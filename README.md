# Example
## Helpful resources

| Description | Link |
|-------------|---------|
| Introduction to basic Lean proofs through number theory - see attached progress file | https://adam.math.hhu.de/#/g/leanprover-community/NNG4 |
| Lean Linalg proof repository | https://www.jacobserfaty.com/linear-algebra-in-lean-4 |
| Mathematics In Lean - chapter on Linear Algebra | https://leanprover-community.github.io/mathematics_in_lean/C09_Linear_Algebra.html#matrices-bases-and-dimension |
|The Mechanics of Proof - chapter on Functions | https://hrmacbeth.github.io/math2001/08_Functions.html#injectivity-and-surjectivity |
| Lean repository following LADR by Axler, uncertain correctness/completeness | https://github.com/ssomayyajula/linear/blob/master/vector_space.lean|
| List of missing areas in MathLib - note that vector calculus is entirely missing | https://leanprover-community.github.io/undergrad_todo.html |
| Xena project - collaboration from ICL to formalize undergrad math in Lean, potentially useful for how to present Lean results to a general audience | https://xenaproject.wordpress.com/2019/02/11/lean-in-latex/ |
| Library of explained/informalized MathLib linear algebra proofs | https://www.overleaf.com/read/nvmgccgfhykw#3c063b |

## Lit review/papers to cite

| Title | Link | Comments/Summary | 
|-------------|---------|-----------|
| Aesop: White-Box Best-First Proof Search for Lean (2023)| https://dl.acm.org/doi/abs/10.1145/3573105.3575671 | Conventional (non-ML) automatic proof tool, uses best-first backtracking search and over an user-specified set of tactics. This is basically a more advanced version of tactics like `tidy` bundled with MathLib. The search tree could be a helpful for some use-cases, like mapping out all possible intermediate steps/states in a proof to see where a student has gone wrong. |
| Autoformalization with Large Language Models (2022)| https://arxiv.org/pdf/2205.12615 | Presents autoformalization using LLMs in Isabelle, using few-shot in-context learning (no additional model training). Success rate is low (approx 25%), authors report that most errors are from syntax errors in invoking Isabelle (e.g. being unable to invoke fact n for n!), which might be fixable with fine-tuning. Could also see better performance by using more than 2 examples in context window, or selecting examples for relevancy. Also tests informalization with good (76%) success rate. |
| LeanDojo: Theorem Proving in Lean using Language Models (2023) | https://arxiv.org/pdf/2306.15626 | Has LeanDojo, a potentially helpful tool for tracing Lean repos and interfacing with neural networks. Also has Reprover, a next-tactic suggestion tool based on context retrieval and a transformer. Suggested tactics are incorporated into best-first search to ultimately generate proofs. |
| TheoremLlama: Transforming General-Purpose LLMs into Lean4 Experts (2024) | https://arxiv.org/pdf/2407.03203v1 | Uses an end-to-end LLM approach (as opposed to next-tactic suggestion and search), tries to generate a formal Lean proof given informal proof. Has interesting work on natural language/formal language alignment (e.g. asking the model to add comments to Lean code) and a possible Mathlib deformalization approach by in-context learning. Seems less applicable because this assumes the existence of informal proofs and doesn't generate a tree-like structure, but could still be helpful.|
| Draft, Sketch, and Prove: Guiding Formal Theorem Provers with Informal Proofs (2023) | https://arxiv.org/pdf/2210.12283 | Generates a formal proof from an informal sketch (including a number of intermediate steps) using Isabelle, seems similar to what TheoremLlama does but with slightly different implementation (has human/informal LLM split the proof into distinct steps to formalize separately instead of NL/FL bootstrapping) |
| Thor: Wielding Hammers to Integrate Language Models and Automated Theorem Provers (2022) | https://arxiv.org/pdf/2205.10893 | Designs a tool that does premise selection by learning when to apply "hammers" in Isabelle, instead of doing premise selection directly with the LLM. This is incorprated into a best-first search approach. This has better success (57% on PISA/test vs 39% with LLM only), but applicability is limited because Lean does not appear to have as good of support for hammers. |
