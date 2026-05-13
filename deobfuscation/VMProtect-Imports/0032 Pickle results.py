import pickle

with open('results.bin', 'wb') as f:
    results = [modules, main_module, obfs_apis]
    pickle.dump(results, f)