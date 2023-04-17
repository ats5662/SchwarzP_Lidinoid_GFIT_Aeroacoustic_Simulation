#!/bin/sh
cd ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/PLA
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ImpedanceDataNIT/SchwarzP_PLA_Reactance.txt .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ImpedanceDataNIT/SchwarzP_PLA_Resistance.txt .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Material/mat.xml .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Mesh/GFITMesh.cdb .
cfs -t2 SchwarzP_GFIT_M075_PLA -d
cfs -t2 SchwarzP_GFIT_M00_PLA -d
cfs -t2 SchwarzP_GFIT_M05_PLA -d
cfs -t2 SchwarzP_GFIT_M025_PLA -d
rm SchwarzP_PLA_Reactance.txt SchwarzP_PLA_Resistance.txt mat.xml GFITMesh.cdb 