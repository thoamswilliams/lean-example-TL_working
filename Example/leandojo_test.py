from lean_dojo import LeanGitRepo, trace

''' Test 1: My Repo'''
repo = LeanGitRepo("https://github.com/manooshree/lean-example", "061e07dbd3a02d9e1225e218359704e30e83139f")
trace(repo, dst_dir="Test4_traced_lean4-example")


'''Test 2: Example Repo from Kaiyu Yang'''
# repo = LeanGitRepo("https://github.com/yangky11/lean4-example", "7b6ecb9ad4829e4e73600a3329baeb3b5df8d23f")
# trace(repo, dst_dir="Test2_traced_lean4-example")