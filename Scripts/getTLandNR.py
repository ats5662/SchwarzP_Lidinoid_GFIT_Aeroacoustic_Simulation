import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import os
f = np.linspace(377, 3400, 150)

path = "../ProcessData/"
hist_files_excite = np.array([a for a in os.listdir(path) if a.endswith('Excite.hist')])
hist_files_end = np.array([u for u in os.listdir(path) if u.endswith('EndTube.hist')])
hist_files_Inlet = np.array([b for b in os.listdir(path) if b.endswith('Inlet.hist')])
hist_files_Outlet = np.array([c for c in os.listdir(path) if c.endswith('Outlet.hist')])

for x in range(0,16):
    wi = np.loadtxt(path + hist_files_excite[x], usecols=[1, 2])
    wt = np.loadtxt(path + hist_files_end[x], usecols=[1, 2])
    wi = wi[:, 0] + wi[:, 1] * 1j
    wt = wt[:, 0] + wt[:, 1] * 1j
    TL = 10*np.log10(np.abs(wi)/np.abs(wt))
    df = pd.DataFrame(np.c_[f, TL], columns = ['f','TL'])
    df.to_csv(hist_files_excite[x][:len(hist_files_excite[x])-5]+".csv")
    plt.rcParams["figure.figsize"] = (20,8)
    fig = plt.figure()
    ax = plt.axes()
    plt.xlim([377, 3400])
    plt.ylabel("Transmission Loss (dB)")
    plt.xlabel("Frequrency (Hz)")
    ax.plot(f, TL)
    plt.savefig(hist_files_excite[x][:len(hist_files_excite[x])-5]+".png")
    plt.close()
    
for y in range(0,16):
    pi = np.loadtxt(path + hist_files_Inlet[y], usecols=[1, 2])
    pt = np.loadtxt(path + hist_files_Outlet[y], usecols=[1, 2])
    pi = pi[:, 0] + pi[:, 1] * 1j
    pt = pt[:, 0] + pt[:, 1] * 1j
    NR = 20*np.log10(np.abs(pi)/2e-05) - 20*np.log10(np.abs(pt)/2e-05)
    df = pd.DataFrame(np.c_[f, NR], columns = ['f','NR'])
    df.to_csv(hist_files_Inlet[y][:len(hist_files_Inlet[y])-5]+"NR"+".csv")
    plt.rcParams["figure.figsize"] = (20,8)
    fig = plt.figure()
    ax = plt.axes()
    plt.xlim([377, 3400])
    plt.ylabel("Noise Reduction (dB)")
    plt.xlabel("Frequrency (Hz)")
    ax.plot(f, NR)
    plt.savefig(hist_files_Inlet[y][:len(hist_files_Inlet[y])-5]+".png")
    plt.close()
