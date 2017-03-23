from nose.tools import assert_raises, assert_almost_equal, assert_equal
from loadBrukerData.py import loadBrukerData

def testDataType():
	time, img, real = loadBrukerData('Fixtures/testData.dta')
	assert_equal(type(time), 'numpy.ndarray')