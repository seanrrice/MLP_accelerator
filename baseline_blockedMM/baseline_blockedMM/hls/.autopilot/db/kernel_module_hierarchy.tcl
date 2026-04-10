set ModuleHierarchy {[{
"Name" : "MM", "RefName" : "MM","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "i_BLOCK_loop","RefName" : "i_BLOCK_loop","ID" : "1","Type" : "no",
	"SubLoops" : [
	{"Name" : "j_BLOCK_loop","RefName" : "j_BLOCK_loop","ID" : "2","Type" : "no",
		"SubLoops" : [
		{"Name" : "k_BLOCK_loop","RefName" : "k_BLOCK_loop","ID" : "3","Type" : "no",
			"SubLoops" : [
			{"Name" : "k_loop","RefName" : "k_loop","ID" : "4","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_MM_Pipeline_i_loop_fu_883", "RefName" : "MM_Pipeline_i_loop","ID" : "5","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "i_loop","RefName" : "i_loop","ID" : "6","Type" : "pipeline"},]},]},]},
		{"Name" : "j_output_loop","RefName" : "j_output_loop","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "i_output_loop","RefName" : "i_output_loop","ID" : "8","Type" : "no"},]},]},]},]
}]}