from nose.tools import assert_raises, assert_almost_equal, assert_equal
import loadBrukerData.loadBrukerData as lbd
import numpy as np

def testDataType():
	time, img, real = lbd.loadBrukerData('Tests/Fixtures/testData.DTA')
	print(str(type(time)))
	assert_equal(str(type(time)), "<class 'numpy.ndarray'>")
	assert_equal(str(type(img)), "<class 'numpy.ndarray'>")
	assert_equal(str(type(real)), "<class 'numpy.ndarray'>")

def testDataLength():
	time, img, real = lbd.loadBrukerData('Tests/Fixtures/testData.DTA')
	assert_equal(len(time), len(img), len(real))

def testCorrectLoad():
	correctData = np.load('Tests/Fixtures/npFixt.npz')
	corTime = correctData['time']
	corReal = correctData['real']
	corImg = correctData['img']
	time, img, real = lbd.loadBrukerData('Tests/Fixtures/testData.DTA')
	assert_equal(time.all(), corTime.all())
	assert_equal(img.all(), corImg.all())
	assert_equal(real.all(), corReal.all())
