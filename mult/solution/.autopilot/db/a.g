#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/aatit/gitrepos/mult/solution/.autopilot/db/a.g.bc ${1+"$@"}
