set ModuleHierarchy {[{
"Name" : "MM", "RefName" : "MM","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "Block_entry_gmem_rd_proc_U0", "RefName" : "Block_entry_gmem_rd_proc","ID" : "2","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_readAtTiles_fu_132", "RefName" : "readAtTiles","ID" : "3","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop_fu_78", "RefName" : "readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "4","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","RefName" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "5","Type" : "pipeline"},]},]},
		{"Name" : "grp_readBTiles_fu_147", "RefName" : "readBTiles","ID" : "6","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop_fu_78", "RefName" : "readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","RefName" : "i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop","ID" : "8","Type" : "pipeline"},]},]},
		{"Name" : "grp_computeTiles_fu_159", "RefName" : "computeTiles","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "i_BLOCK_loop","RefName" : "i_BLOCK_loop","ID" : "10","Type" : "no",
			"SubLoops" : [
			{"Name" : "j_BLOCK_loop","RefName" : "j_BLOCK_loop","ID" : "11","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop_fu_279", "RefName" : "computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop","ID" : "12","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "k_BLOCK_loop_k_loop_i_loop","RefName" : "k_BLOCK_loop_k_loop_i_loop","ID" : "13","Type" : "pipeline"},]},
				{"Name" : "grp_computeTiles_Pipeline_j_output_loop_fu_320", "RefName" : "computeTiles_Pipeline_j_output_loop","ID" : "14","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "j_output_loop","RefName" : "j_output_loop","ID" : "15","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "writeTiles_U0", "RefName" : "writeTiles","ID" : "16","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop_fu_78", "RefName" : "writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "i_BLOCK_loop_j_BLOCK_loop_j_output_loop","RefName" : "i_BLOCK_loop_j_BLOCK_loop_j_output_loop","ID" : "18","Type" : "pipeline"},]},]},]
}]}