<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="mac_vivado_dma64_w32" top="top">
    <files>
        <file name="../../../tb/tb.cc" sc="0" tb="1" cflags=" -I../../../inc  -Wno-unknown-pragmas -DDMA_SIZE=64 -DDATA_BITWIDTH=32 -std=c++0x -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../src/espacc.cc" sc="0" tb="false" cflags="-I../inc -DDMA_SIZE=64 -DDATA_BITWIDTH=32 -std=c++0x" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="mac_vivado_acc" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

