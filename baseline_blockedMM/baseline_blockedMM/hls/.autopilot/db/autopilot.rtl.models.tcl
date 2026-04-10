set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME MM_entry_proc}
  {SRCNAME readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop MODELNAME readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop RTLNAME MM_readAtTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop
    SUBMODULES {
      {MODELNAME MM_mul_32s_32s_32_1_1 RTLNAME MM_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MM_flow_control_loop_pipe_sequential_init RTLNAME MM_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MM_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME readAtTiles MODELNAME readAtTiles RTLNAME MM_readAtTiles
    SUBMODULES {
      {MODELNAME MM_mul_27ns_31ns_58_1_1 RTLNAME MM_mul_27ns_31ns_58_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop MODELNAME readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop RTLNAME MM_readBTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_k_BLOCK_loop_k_loop}
  {SRCNAME readBTiles MODELNAME readBTiles RTLNAME MM_readBTiles}
  {SRCNAME computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop MODELNAME computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop RTLNAME MM_computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop
    SUBMODULES {
      {MODELNAME MM_sparsemux_33_4_32_1_1 RTLNAME MM_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME computeTiles_Pipeline_j_output_loop MODELNAME computeTiles_Pipeline_j_output_loop RTLNAME MM_computeTiles_Pipeline_j_output_loop}
  {SRCNAME computeTiles MODELNAME computeTiles RTLNAME MM_computeTiles}
  {SRCNAME Block_entry_gmem_rd_proc MODELNAME Block_entry_gmem_rd_proc RTLNAME MM_Block_entry_gmem_rd_proc
    SUBMODULES {
      {MODELNAME MM_mul_27ns_58ns_85_2_1 RTLNAME MM_mul_27ns_58ns_85_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME MM_fifo_w512_d32_A RTLNAME MM_fifo_w512_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME B_stream_U}
      {MODELNAME MM_fifo_w512_d32_A RTLNAME MM_fifo_w512_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME A_stream_U}
    }
  }
  {SRCNAME writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop MODELNAME writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop RTLNAME MM_writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop}
  {SRCNAME writeTiles MODELNAME writeTiles RTLNAME MM_writeTiles}
  {SRCNAME MM MODELNAME MM RTLNAME MM IS_TOP 1
    SUBMODULES {
      {MODELNAME MM_fifo_w64_d3_S RTLNAME MM_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ABC_c_U}
      {MODELNAME MM_fifo_w512_d32_A_x RTLNAME MM_fifo_w512_d32_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME AB_stream_U}
      {MODELNAME MM_fifo_w32_d2_S RTLNAME MM_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME N_c_U}
      {MODELNAME MM_fifo_w32_d2_S RTLNAME MM_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME P_c_U}
      {MODELNAME MM_start_for_writeTiles_U0 RTLNAME MM_start_for_writeTiles_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_writeTiles_U0_U}
      {MODELNAME MM_gmem_m_axi RTLNAME MM_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME MM_control_s_axi RTLNAME MM_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
