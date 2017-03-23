# loadBrukerData

This is a simple program to load the output of Bruker spectrometers (.DTA format) into Python in the form of a numpy array. 

The function is called by calling loadBrukerData("file.dta"). The output is 3 numpy arrays, xdata, ydataReal, ydataImg. The corresponding .DSC file must be in the same folder as the .DTA file to allow the xdata to be calculated from experimental parameters. 