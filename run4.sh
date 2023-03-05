#!/bin/sh
cd ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/TPU 
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ImpedanceDataNIT/Lidinoid_TPU_Reactance.txt .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ImpedanceDataNIT/Lidinoid_TPU_Resistance.txt .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Material/mat.xml .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Mesh/GFITMesh.cdb .
cfs -t2 Lidinoid_GFIT_M00_TPU -d
cfs -t2 Lidinoid_GFIT_M075_TPU -d
cfs -t2 Lidinoid_GFIT_M05_TPU -d
cfs -t2 Lidinoid_GFIT_M025_TPU -d
rm Lidinoid_TPU_Reactance.txt Lidinoid_TPU_Resistance.txt mat.xml GFITMesh.cdb 