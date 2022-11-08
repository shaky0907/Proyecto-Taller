transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto {C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto/ImageROM.v}
vlog -sv -work work +incdir+C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto {C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto/ImageROMC.sv}
vlog -sv -work work +incdir+C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto {C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto/ImageCounter.sv}
vlog -sv -work work +incdir+C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto {C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto/CPU.sv}
vlog -sv -work work +incdir+C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto {C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto/DataMemory.sv}

vlog -sv -work work +incdir+C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto {C:/Users/david/OneDrive/Documents/TEC/Taller-D/Proyecto-Taller/Proyecto/ImageROMTB.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  IMAGEROMTB

add wave *
view structure
view signals
run -all
