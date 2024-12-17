Common Source

Vdd : vdc (analogLib) – V0 DC Voltage: 1.8 V
Gnd : vdc (analogLib) – V1 DC Voltage: -1.8 V
Vbias : vdc (analogLib) – V2 DC Voltage: 1.8 V
Vin : vsin (analogLib) – V3 DC Voltage: 0 V
AC Magnitude : 1 V
Offset Voltage : 0 V
Amplitude : 5m V
Frequency : 1K Hz

Analysis: transient
Stop Time : 5m
Accuracy Defaults : moderate
Enabled : checked
Analysis: dc
Save DC Operating Point : checked
Component : /V3 (select vsin)
Component Parameter : dc
Sweep Range : Start-Stop
Start : -5
Stop : 5
Sweep Type : Automatic
Enabled : checked
Analysis: ac
Sweep Variabl e : Frequency
Sweep Range : Start-Stop
Start : 100
Stop : 100M
Sweep Type : Logarithmic
Points Per Decade : 20
Enabled : checked