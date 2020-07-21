transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/xorgate.sv}
vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/mul.sv}
vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/overFlowDetector.sv}
vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/mulUnit.sv}
vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/signInverter.sv}
vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/mulUnitTest.sv}
vlog -sv -work work +incdir+C:/Users/kenne/OneDrive/Desktop/Taller {C:/Users/kenne/OneDrive/Desktop/Taller/extender.sv}

