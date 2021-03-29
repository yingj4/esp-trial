#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /scratch/projects/yingj4/esp/accelerators/vivado_hls/mac_vivado/hw/hls-work-virtex7/mac_vivado_dma32_w32/mac_vivado_acc/.autopilot/db/a.g.bc ${1+"$@"}
