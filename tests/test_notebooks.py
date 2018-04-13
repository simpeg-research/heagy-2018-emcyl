import os
import numpy as np
import testipynb
import unittest

NBDIR = os.path.sep.join(
    os.path.abspath(__file__).split(os.path.sep)[:-2] + ['notebooks']
)
n_ignore = 5  # so we don't run over-time on travis, randomly ignore 3 notebooks

class TestNotebooks(unittest.TestCase):

    def test_notebooks(self):
        Test = testipynb.TestNotebooks(directory=NBDIR, timeout=2000)
        ignore_inds = np.random.choice(len(Test._nbnames), n_ignore)
        Test.ignore = [Test._nbnames[i] for i in ignore_inds]
        self.assertTrue(Test.run_tests())

if __name__ == "__main__":
    unittest.main()
