# Simulation-of-Photocatalytic-reduction and Kinetic Reaction Modelling of Photo Catalytic Reactions
This study presents the simulation of modelled simultaneous photo chemical reactions using the ode solver (ode15s) of MATLAB and finding the best reaction constant value using nonlinear regression (lsqnonlin, nonlinear least square fit).

Introduction: Organic Phenolic pollutant and metal ions in their toxic state pose an acute threat to the environment, so their degradation to nontoxic state is quite important. Studies proved that TiO2 can degrade phenolic compounds as well as metal ions. Reaction constant i.e. k depends on certain factors such as temperature, concentration of reactants and others. We can infer that we can vary k accordingly and find the k (best k) at which degradation is maximum of phenolic compounds and metal ions. In this study we modelled all the simultaneous reactions occurring during the process in photochemical reactor to find the optimum k.

Methodology: Initial concentration of TiO2, Metal ion, phenol is specified as respectively [0.01252, 250e-6, 5.058e-4]. Using the elementary rate equation, rate is written for each equation. Rate of consumption and generation for each compound is written using material balance.

TiO2 + Ph  Ph-TiO2  
r4 = k4 [TiO2] [Ph] – k-4[TiO2-Ph]
TiO2 is not appearing in any other reaction so by material balance
d [TiO2]/dt = -r4

This method applied to all the other 15 compounds specified in the reaction.
After doing this we got a 15*1 matrix of differential equations. These 15 reaction solved using the ode solver of MATLAB. 5 MATLAB files were created. Driver.m is the file from where the implementation of code will start. Some initial guess is given for k matrix (it contains rate constant for all of the simultaneous reactions). Solver.m is the file where the solving of ode will take place using the initial k matrix, time limits for the reaction specified as 0 to 120 min. Each of the ode is defined in the odefun.m file. It will be very tiring process to manually use hit and trial method and find the best k value so we used the nonlinear fit to do it for us. Experimental data is extracted from the 6 points given in the paper using the cubic interpolation (spline function) for points in range 0:120. This data stored in TiO2expdata.m file. Now our aim is to minimise the error i.e. yexp - ytheoretical. Upper bounds and lower bounds for k values are specified under which the odesolver will run and solve for concentration of compounds. yexp - ytheoretical is calculated in the file fun.m using the results by solving ode which is solved by using all the k values within the range specified. yexp - ytheoretical is passed as argument in lsqnonlin function and using this it gave us k_optimized or best k.

