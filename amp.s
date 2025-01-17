Differential Amp

Vdd : vdc (analogLib)
Gnd : vdc (analogLib)
Vbias : no connection
v2 : gnd (analogLib)
v1 : vsin (analogLib) – V1 DC Voltage: 0 V
AC Magnitude : 1 V
Offset Voltage : 0 V
Amplitude : 5m V
Frequency : 1K Hz
Idc : idc (analogLib) – I1 DC Current: 30u A

Analysis: tran
Stop Time : 5m
Accuracy Defaults : moderate
Enabled : checked

Analysis: dc
Save DC Operating Point : checked
Component : /V1 (select vsin)
Component Parameter : dc
Sweep Range : Start-Stop
Start : -5
Stop : 5
Sweep Type : Automatic
Enabled : checked

Analysis: ac
Sweep Variable : Frequency
Sweep Range : Start-Stop
Start : 0.1
Stop : 100
Sweep Type : Logarithmic
Points Per Decade : 20
Enabled : checked