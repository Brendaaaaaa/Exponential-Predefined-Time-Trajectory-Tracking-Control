# Exponential Predefined Time Stabilized Trajectory Tracking Control For Fixed-wing UAV With Input Saturation

This project contains 1 '.slx' file and 4 '.m' files as follows:  
1. 'paper_Exponential_Predefined_102.slx' is the main file.  
2. 'Exponential_predefined.m' is the algorithm in this paper (without the input constraint).  
3. 'Exponential_predefined_sat.m' is the method proposed in this paper (with the input constraints).  
4. 'im_predefined.m' is the method of literature [11].  
5. 'plot_figure.m' is used for ploting.

And a related video has been posted at https://www.bilibili.com/video/BV1mv4y1E7pE/?vd\_source=74ca5ae09a4dea0501029dd8206eef3a

## Usage
The simulation environment is set as follows:  
1. Matlab2019a.
2. Type: Fixed-step.
3. Solver: ode4.
4. Fixed-step size: 0.001

### Step 1
Create a folder containing all the above files, open 'paper_Exponential_Predefined_102.slx' and run directly.

### Step 2
Modify (as you need) and run 'plot_figure.m', then you can get the corresponding figures. 

## About 'paper_Exponential_Predefined_102.slx'
1. There are 6 systems built in this Simulink program. The upper three correspond to *Case 1* in $\mathit{V}-\mathit{A}$ Numerical simulations, and the lower three correspond to *Case 2*.
2. Each system uses the same fixed-wing UAV model.
3. Annotations of each matlab function are given in the lower right corner of the system named 'Exponential predefined time [This paper]'.
