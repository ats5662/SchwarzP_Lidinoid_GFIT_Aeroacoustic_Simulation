#!/bin/sh
cd ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/TPU 
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ImpedanceDataNIT/SchwarzP_TPU_Reactance.txt .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ImpedanceDataNIT/SchwarzP_TPU_Resistance.txt .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Material/mat.xml .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Mesh/GFITMesh.cdb .
cfs -t2 SchwarzP_GFIT_M00_TPU -d
cfs -t2 SchwarzP_GFIT_M075_TPU -d
cfs -t2 SchwarzP_GFIT_M05_TPU -d
cfs -t2 SchwarzP_GFIT_M025_TPU -d
rm SchwarzP_TPU_Reactance.txt SchwarzP_TPU_Resistance.txt mat.xml GFITMesh.cdb 