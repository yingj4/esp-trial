
##############################################################################
# Library Makefile generated by Behavioral Design Workbench Makefile Generator V1.0
# Cadence Design Systems
#  Library: <bdw_work/modules/mac/BASIC_DMA64>
#  Library catalogue: <bdw_work/modules/mac/BASIC_DMA64/stratus_hls.bdl>
##############################################################################

MAKE			   = make --no-print-directory $(firstword $(MAKEFILE_LIST))
PERL			   = perl
CYNTHVLG		   = ${STRATUS_HOME}/bin/stratus_vlg --output_style_starc=off

ifeq ($(BDW_DEBUG),1)
BDW_DEBUG_OPT              = -g
else
BDW_DEBUG_OPT              = 
endif

VLG_FLAGS          = -DBDW_RTL=1 
BDW_USECYNTH	   = 1
BDW_CCFLAGS        = $(BDW_DEBUG_OPT) -c -I. -I../../../../../memlib/c_parts -I../../../../../bdw_work/modules/mac/BASIC_DMA64/c_parts -I../../../../..

BDW_CDSLIB = cds.lib
BDW_HDLVAR = hdl.var

include ${STRATUS_HOME}/share/stratus/source/bdw.mak

BDW_mac_BASIC_DMA64_SRCLIB = ..
BDW_mac_BASIC_DMA64_C_PARTS_A = objs/libmac_BASIC_DMA64.a

#
# RTL Verilog models that must be built with stratus_vlg.
#

BDW_mac_BASIC_DMA64_BUILD_RTL_V =
	
#
# Objects for RTL C++ simulation.
#

BDW_mac_BASIC_DMA64_RTL_O =
#
# Build RTL Verilog models with stratus_vlg
#

#
# The 'prep' target is used to prepare the archive library for C++ RTL simulation
# and any RTL Verilog models that are not a part of the source library.
#
prep: prep_vlog prep_c

#
# The 'prep_c' target is used to prepare the archive library for RTL
# C++ simulation.
#
prep_c: obj_dir 
	+make $(BDW_mac_BASIC_DMA64_C_PARTS_A)

#
# The 'prep_vlog' target is used to prepare the archive library for RTL
# Verilog simulation.
#

prep_vlog: $(BDW_mac_BASIC_DMA64_BUILD_RTL_V)
	
	


	@if [ ! -h ../v_rtl ] ; then mkdir -p ../v_rtl ; fi


#
# Build archive library for BEH and RTL C++ simulation.
#
$(BDW_mac_BASIC_DMA64_C_PARTS_A) : $(BDW_mac_BASIC_DMA64_RTL_O)
	@rm -f $@
	$(BDW_AR) $@ $^ 


#
# Build models for RTL BEH and C++ simulation.
#


obj_dir:
	@echo "DEFINE mac_BASIC_DMA64_worklib INCA_libs/mac_BASIC_DMA64_worklib" > $(BDW_CDSLIB)
	@echo "DEFINE WORK mac_BASIC_DMA64_worklib" > $(BDW_HDLVAR)
	@mkdir -p INCA_libs/mac_BASIC_DMA64_worklib
	@if [ ! -d objs ] ; then mkdir objs ; fi
	
always:


