#!/bin/sh
cd ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/paraviewOutputs
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/PLA/results_hdf5/*.cfs .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/TPU/results_hdf5/*.cfs .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/PLA/results_hdf5/*.cfs .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/TPU/results_hdf5/*.cfs .
rm -rf ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/PLA/results_hdf5 ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/TPU/results_hdf5 ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/PLA/results_hdf5 ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/TPU/results_hdf5
cd ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/ProcessData 
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/PLA/history/*.hist .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/TPU/history/*.hist .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/PLA/history/*.hist .
cp ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/TPU/history/*.hist .
rm -rf ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/PLA/history ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/SchwarzP/TPU/history ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/PLA/history ~/SchwarzP_Lidinoid_GFIT_Aeroacoustic_Simulation/Lidinoid/TPU/history
