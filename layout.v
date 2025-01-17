Layout

Creating Layout View of Inverter
1. From the Inverter schematic window menu execute
Launch – Layout XL. A Startup Option form appears.
2. Select Create New option. This gives a New Cell View Form
3. Check the Cellname (Inverter), Viewname (layout).
4. Click OK from the New Cellview form.
LSW and a blank layout window appear along with schematic window.
Adding Components to Layout
1. Execute Connectivity – Generate – All from Source or click the icon in the layout editor
window, Generate Layout form appears. Click OK which imports the schematic components
in to the Layout window automatically.
2. Re arrange the components with in PR-Boundary as shown in the next page.
3. To rotate a component, Select the component and execute Edit –Properties. Now select
the degree of rotation from the property edit form.
4. To Move a component, Select the component and execute Edit -Move command.
Making interconnection
1. Execute Connectivity –Nets – Show/Hide selected Incomplete Nets or click the icon in
the Layout Menu.
2. Move the mouse pointer over the device and click LMB to get the connectivity
information, which shows the guide lines (or flight lines) for the inter connections of the
components.
3. From the layout window execute Create – Shape – Path/ Create wire or Create – Shape
– Rectangle (for vdd and gnd bar) and select the appropriate Layers from the LSW window
and Vias for making the inter connections
Creating Contacts/Vias
You will use the contacts or vias to make connections between two different layers.
1. Execute Create — Via or select command to place different Contacts, as given in below
table.
Connection Contact Type
For Metal1- Poly Connection Metal1-Poly
For Metal1- Psubstrate Connection Metal1-Psub
For Metal1- Nwell Connection Metal1-Nwell
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
32
Saving the design
1. Save your design by selecting File — Save or click to save the layout, and layout
should appear as below in Fig.1.10.1.
Fig 1.10.1
 Physical Verification - Assura DRC
Running Design Rule Check ( DRC )
1. Open the Inverter layout form the CIW or library manger if
you have closed that. Press shift – f in the layout window to
display all the levels.
1. Select Assura - Run DRC from layout window.
The DRC form appears. The Library and Cell name are taken from the current design window,
but rule file may be missing. Select the Technology as gpdk180. This automatically loads the
rule file. Your DRC form should appear like this (Fig. 1.10.2)
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
33
 Fig. 1.10.2
2. Click OK to start DRC.
3. A Progress form will appears. You can click on the watch log file to see the log
file.
4. When DRC finishes, a dialog box appears asking you if you want to view your
DRC results, and then click Yes to view the results of this run.
5. If there any DRC error exists in the design View Layer Window (VLW) and Error
Layer Window (ELW) appears. Also the errors highlight in the design itself.
6. Click View – Summary in the ELW to find the details of errors.
7. You can refer to rule file also for more information, correct all the DRC errors and
Re – run the DRC.
8. If there are no errors in the layout then a dialog box appears with No DRC errors
found written in it, click on close to terminate the DRC run.
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
34
ASSURA LVS
In this section we will perform the LVS check that will compare the schematic netlist and
the layout netlist.
Running LVS
1. Select Assura – Run LVS from the layout window.
The Assura Run LVS form appears. It will automatically load both the schematic and layout
view of the cell.
2. Change the following in the form and click OK.
Fig. 1.10.3
3. The LVS begins and a Progress form appears.
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
35
4. If the schematic and layout matches completely, you will get the form displaying
Schematic and Layout Match. 5. If the schematic and layout do not matches, a form informs that the LVS completed
successfully and asks if you want to see the results of this run.
6. Click Yes in the form.
 LVS debug form appears, and you are directed into LVS debug environment.
7. In the LVS debug form you can find the details of mismatches and you need to
correct all those mismatches and Re – run the LVS till you will be able to match the
schematic with layout.
Assura RCX
In this section, we will extract the RC values from the layout and perform analog circuit
simulation on the designs extracted with RCX (Resistor Capacitor Extraction).
Before using RCX to extract parasitic devices for simulation, the layout should match with
schematic completely to ensure that all Parasitics will be back annotated to the correct schematic
nets.
Running RCX
1. From the layout window execute Assura – Run RCX. 2. Change the following in the Assura parasitic extraction form. Select output type under
Setup tab of the form.
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
36
Fig. 1.10.4
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
37
3. In the Extraction tab of the form, choose Extraction type, Cap Coupling Mode and specify
Fig. 1.10.5
4. Click OK in the Assura parasitic extraction form when done.
The RCX progress form appears, in the progress form click Watch log file to see
the output log file.
5. When RCX completes, a dialog box appears, informs you that Assura RCX run
Completed successfully.
6. You can open the av_extracted view from the library manager and view the parasitic as
shown in figure below.
Fig. 1.10.6
RESULT:
a. The schematic for the Inverter is drawn and verified the DC and Transient Analysis.
b. The Layout for the same is drawn and verified for the following correctness: DRC, LVS, RC
ExtractLayout

Creating Layout View of Inverter
1. From the Inverter schematic window menu execute
Launch – Layout XL. A Startup Option form appears.
2. Select Create New option. This gives a New Cell View Form
3. Check the Cellname (Inverter), Viewname (layout).
4. Click OK from the New Cellview form.
LSW and a blank layout window appear along with schematic window.
Adding Components to Layout
1. Execute Connectivity – Generate – All from Source or click the icon in the layout editor
window, Generate Layout form appears. Click OK which imports the schematic components
in to the Layout window automatically.
2. Re arrange the components with in PR-Boundary as shown in the next page.
3. To rotate a component, Select the component and execute Edit –Properties. Now select
the degree of rotation from the property edit form.
4. To Move a component, Select the component and execute Edit -Move command.
Making interconnection
1. Execute Connectivity –Nets – Show/Hide selected Incomplete Nets or click the icon in
the Layout Menu.
2. Move the mouse pointer over the device and click LMB to get the connectivity
information, which shows the guide lines (or flight lines) for the inter connections of the
components.
3. From the layout window execute Create – Shape – Path/ Create wire or Create – Shape
– Rectangle (for vdd and gnd bar) and select the appropriate Layers from the LSW window
and Vias for making the inter connections
Creating Contacts/Vias
You will use the contacts or vias to make connections between two different layers.
1. Execute Create — Via or select command to place different Contacts, as given in below
table.
Connection Contact Type
For Metal1- Poly Connection Metal1-Poly
For Metal1- Psubstrate Connection Metal1-Psub
For Metal1- Nwell Connection Metal1-Nwell
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
32
Saving the design
1. Save your design by selecting File — Save or click to save the layout, and layout
should appear as below in Fig.1.10.1.
Fig 1.10.1
 Physical Verification - Assura DRC
Running Design Rule Check ( DRC )
1. Open the Inverter layout form the CIW or library manger if
you have closed that. Press shift – f in the layout window to
display all the levels.
1. Select Assura - Run DRC from layout window.
The DRC form appears. The Library and Cell name are taken from the current design window,
but rule file may be missing. Select the Technology as gpdk180. This automatically loads the
rule file. Your DRC form should appear like this (Fig. 1.10.2)
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
33
 Fig. 1.10.2
2. Click OK to start DRC.
3. A Progress form will appears. You can click on the watch log file to see the log
file.
4. When DRC finishes, a dialog box appears asking you if you want to view your
DRC results, and then click Yes to view the results of this run.
5. If there any DRC error exists in the design View Layer Window (VLW) and Error
Layer Window (ELW) appears. Also the errors highlight in the design itself.
6. Click View – Summary in the ELW to find the details of errors.
7. You can refer to rule file also for more information, correct all the DRC errors and
Re – run the DRC.
8. If there are no errors in the layout then a dialog box appears with No DRC errors
found written in it, click on close to terminate the DRC run.
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
34
ASSURA LVS
In this section we will perform the LVS check that will compare the schematic netlist and
the layout netlist.
Running LVS
1. Select Assura – Run LVS from the layout window.
The Assura Run LVS form appears. It will automatically load both the schematic and layout
view of the cell.
2. Change the following in the form and click OK.
Fig. 1.10.3
3. The LVS begins and a Progress form appears.
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
35
4. If the schematic and layout matches completely, you will get the form displaying
Schematic and Layout Match. 5. If the schematic and layout do not matches, a form informs that the LVS completed
successfully and asks if you want to see the results of this run.
6. Click Yes in the form.
 LVS debug form appears, and you are directed into LVS debug environment.
7. In the LVS debug form you can find the details of mismatches and you need to
correct all those mismatches and Re – run the LVS till you will be able to match the
schematic with layout.
Assura RCX
In this section, we will extract the RC values from the layout and perform analog circuit
simulation on the designs extracted with RCX (Resistor Capacitor Extraction).
Before using RCX to extract parasitic devices for simulation, the layout should match with
schematic completely to ensure that all Parasitics will be back annotated to the correct schematic
nets.
Running RCX
1. From the layout window execute Assura – Run RCX. 2. Change the following in the Assura parasitic extraction form. Select output type under
Setup tab of the form.
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
36
Fig. 1.10.4
Dayananda Sagar College of Engineering, Bangalore VLSI Laboratory
37
3. In the Extraction tab of the form, choose Extraction type, Cap Coupling Mode and specify
Fig. 1.10.5
4. Click OK in the Assura parasitic extraction form when done.
The RCX progress form appears, in the progress form click Watch log file to see
the output log file.
5. When RCX completes, a dialog box appears, informs you that Assura RCX run
Completed successfully.
6. You can open the av_extracted view from the library manager and view the parasitic as
shown in figure below.
Fig. 1.10.6
RESULT:
a. The schematic for the Inverter is drawn and verified the DC and Transient Analysis.
b. The Layout for the same is drawn and verified for the following correctness: DRC, LVS, RC
Extract