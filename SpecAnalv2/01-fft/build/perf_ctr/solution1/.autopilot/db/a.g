#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/teach-fpga/01-fft/build/perf_ctr/solution1/.autopilot/db/a.g.bc ${1+"$@"}