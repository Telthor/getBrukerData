import os
import numpy as np
import struct

def loadBrukerData(file):
    #Split file from path and add .dsc ext for paramsfile
    filename, ext = os.path.splitext(file)
    datFile = file
    paramsFile = filename + ".dsc"
    
    #Open binary data file
    ydat = open(file, "rb")
    ydataBin = ydat.read()
    
    ydataReal = []
    ydataImg = []
    
    #Loop through binary data and add to real and imaginary y data 
    #real in even bytes [0,2...], img in odd bytes [1,3...]
    
    for i in range(0, len(ydataBin), 16):
        ydataReal.append(struct.unpack('>d', ydataBin[i:i+8]))
        # np.append(ydataReal, struct.unpack('>d', ydataBin[i:i+8]))
    for i in range(8, len(ydataBin), 16):
        ydataImg.append(struct.unpack('>d', ydataBin[i:i+8]))
        # np.append(ydataImg, struct.unpack('>d', ydataBin[i:i+8])c)
    #Load params file to extract x data
    
    params = open(paramsFile, 'r')
    
    # Loop through the lines in params file and extract the x data (start, pts, width)
    for line in params:
        
        param = line[0:4]
        
        if param == "XPTS":
            xpoints = float(line[5:len(line)])
        if param == "XMIN":
            xstart = float(line[5:len(line)])
        if param == "XWID":
            xrange = float(line[5:len(line)])
        if param == "XNAM":
            sweepType = line[5:len(line)]
        if param == "XUNI":
            sweepUnit = line[5:len(line)]
    
    # Use parameters to generate an xdata set
    xdata = np.linspace(xstart, xstart+xrange, xpoints)
    
    return xdata, np.array(ydataReal)[:,0], np.array(ydataImg)[:,0], sweepType, sweepUnit
            