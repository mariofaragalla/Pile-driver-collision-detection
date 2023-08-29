four_ramp_cases.slx model has better (cleaner) design than 06c and additional to that the
new Fuzzy Logic Controller(FLC) is introduced with the senarios of tipping over two ramps 
either upwardly or downwardly inclined and taking into consideration that the vehicle is 
driven forward or backwards.

The FL takes the velocity input by the operator and the filtered (low pass)
angular velocity along the y-axis as inputs and gives the "controlled" velocity
as an output.

There are two blocks(adjust left plane and adjust right plane) that can customize the 
two ramps where the angle of rotation and the direction of the inclination can be entered
to modify the ramps for testing all cases of the new FLC (can be found in the trial.docx file)

Another file in this folder is the with_hole.slx where a trivial hole case, by modifying the 
same four_ramp_cases.slx file, is tested.

To run the simulation:
1- open the file four_ramp_cases.slx
2- In the matlab script, write the command "fuzzy" (this step is will now open 
   automatically when the file opens)
3- Then a window will open contains the graphs of the fuzzy sets 
   (let's call it the fuzzy window)
4- Select File>Import>from File (or use the shortcut: Ctrl + O)
5- Browse to the same directory of the slx file, and select fuzzy_pile3.fis file
6- After the fuzzy window is updated with new inputs and output, then Select
   File>Export>To workspace
7- Finally now you are able to run the simulation.


Important notes: 
     - The fuzzy logic toolbox library is needed to run this simulation.
       (it can be found here: https://ch.mathworks.com/products/fuzzy-logic.html
	it requires tuhh license and it must be downloaded from inside matlab)
     - Before starting the simulation it is recomended to select the ode23s solver
       (or any other stiff solver) to make the running process take less time.
     - The file Test_fuzzy_logic_offline.slx you will find the same fuzzy logic block, 
       where you can test it with data collected from the simulation in adjustable.slx
       if we want to test various large amount of data faster without running the simulation.
     - The simulation will automatically stop after the vehicle is balanced, this
       mimics a full shutdown operation for the whole vehicle.

