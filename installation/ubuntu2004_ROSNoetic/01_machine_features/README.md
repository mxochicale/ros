# Machine Features
# machine-info


```
$ bash machineinfo.sh 
```

output

```

#################################################################
## Date and time
Mon  9 Aug 00:49:53 BST 2021
#################################################################
## Ubuntu Version: $lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 20.04.2 LTS
Release:	20.04
Codename:	focal
#################################################################
## Machine Arquitecture: $uname -a
Linux sie085-lap 5.4.0-80-generic #90-Ubuntu SMP Fri Jul 9 22:49:44 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
#################################################################
## CPU INFO: $grep -E: (^model name|^vendor_id|^flags) /proc/cpuinfo | sort | uniq
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d
model name	: Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz
vendor_id	: GenuineIntel
#################################################################
#GRAPHIC CARD INFO:  $lspci -vnn | grep VGA -A 12

01:00.0 VGA compatible controller [0300]: NVIDIA Corporation TU106BM [GeForce RTX 2070 Mobile] [10de:1f50] (rev a1) (prog-if 00 [VGA controller])
	Subsystem: Dell TU106BM [GeForce RTX 2070 Mobile] [1028:08ed]
	Flags: bus master, fast devsel, latency 0, IRQ 173
	Memory at ec000000 (32-bit, non-prefetchable) [size=16M]
	Memory at c0000000 (64-bit, prefetchable) [size=256M]
	Memory at d0000000 (64-bit, prefetchable) [size=32M]
	I/O ports at 4000 [size=128]
	Expansion ROM at 000c0000 [virtual] [disabled] [size=128K]
	Capabilities: <access denied>
	Kernel driver in use: nvidia
	Kernel modules: nvidiafb, nouveau, nvidia_drm, nvidia

01:00.1 Audio device [0403]: NVIDIA Corporation TU106 High Definition Audio Controller [10de:10f9] (rev a1)


```


