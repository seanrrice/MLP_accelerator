set ModuleHierarchy {[{
"Name" : "MM", "RefName" : "MM","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "readAtTiles_U0", "RefName" : "readAtTiles","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop_fu_80", "RefName" : "readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","RefName" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "4","Type" : "pipeline"},]},]},
	{"Name" : "readBTiles_U0", "RefName" : "readBTiles","ID" : "5","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop_fu_80", "RefName" : "readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","RefName" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "computeTiles_U0", "RefName" : "computeTiles","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "i_BLOCK_loop","RefName" : "i_BLOCK_loop","ID" : "9","Type" : "no",
		"SubLoops" : [
		{"Name" : "j_BLOCK_loop","RefName" : "j_BLOCK_loop","ID" : "10","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop_fu_243", "RefName" : "computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop","ID" : "11","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "k_BLOCK_loop_k_loop_i_loop","RefName" : "k_BLOCK_loop_k_loop_i_loop","ID" : "12","Type" : "pipeline"},]},
			{"Name" : "grp_computeTiles_Pipeline_j_output_loop_fu_284", "RefName" : "computeTiles_Pipeline_j_output_loop","ID" : "13","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "j_output_loop","RefName" : "j_output_loop","ID" : "14","Type" : "pipeline"},]},]},]},]},
	{"Name" : "writeTiles_U0", "RefName" : "writeTiles","ID" : "15","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop_fu_80", "RefName" : "writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop","ID" : "16","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "i_BLOCK_loop_j_BLOCK_loop_j_output_loop","RefName" : "i_BLOCK_loop_j_BLOCK_loop_j_output_loop","ID" : "17","Type" : "pipeline"},]},]},]
}]}