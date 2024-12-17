VERILOG

cd
vi inv.v
(esc :wq!)
vi inv_tb.v
(esc :wq!)

vi cds.lib
Define inv_lib ./inv.lib
mkdir inv.lib
vi hdl.var
Define WORK inv_lib

ncvlog inv.v -mess
ncvlog inv_tb.v -mess
ncelab inv_tb -access +rwc -mess
ncsim inv_tb -gui