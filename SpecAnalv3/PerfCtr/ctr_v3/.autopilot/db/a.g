#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3/PerfCtr/ctr_v3/.autopilot/db/a.g.bc ${1+"$@"}
