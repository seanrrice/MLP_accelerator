xsim {MM} -testplusarg UVM_VERBOSITY=UVM_NONE -testplusarg UVM_TESTNAME=MM_test_lib -testplusarg UVM_TIMEOUT=20000000000000 -view {{MM_dataflow_ana.wcfg}} -tclbatch {MM.tcl} -protoinst {MM.protoinst}
