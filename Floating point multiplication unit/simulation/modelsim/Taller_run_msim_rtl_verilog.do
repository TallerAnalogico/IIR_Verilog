transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/fixedPointAdder.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/xorgate.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/mul.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/overFlowDetector.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/mulUnit.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/signInverter.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/extender.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/onebitExtender.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/to32extender.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/high.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/bit32Adder.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/mid.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/low.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/floatingpPointMult.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/leftShifter.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/rightShifter.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/outSelector.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/bit32OverflowDetector.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/IIR.sv}
vlog -sv -work work +incdir+/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating\ point\ multiplication\ unit {/home/gsegura/Documents/TEC/2020/analogico/ProyectoFinal/IIR_Verilog/Floating point multiplication unit/simpleRegister.sv}

