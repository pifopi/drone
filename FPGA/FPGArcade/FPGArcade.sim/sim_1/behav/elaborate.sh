#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2014.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 7b85bb773fc14cd58ce181960524534c -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot top_behav xil_defaultlib.top -log elaborate.log
