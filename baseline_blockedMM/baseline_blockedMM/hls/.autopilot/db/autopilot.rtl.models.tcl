set SynModuleInfo {
  {SRCNAME MM_Pipeline_i_loop MODELNAME MM_Pipeline_i_loop RTLNAME MM_MM_Pipeline_i_loop
    SUBMODULES {
      {MODELNAME MM_mul_32s_32s_32_1_1 RTLNAME MM_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MM_sparsemux_33_4_32_1_1 RTLNAME MM_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME MM_flow_control_loop_pipe_sequential_init RTLNAME MM_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MM_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MM MODELNAME MM RTLNAME MM IS_TOP 1
    SUBMODULES {
      {MODELNAME MM_mul_31ns_32s_32_1_1 RTLNAME MM_mul_31ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME MM_gmem_m_axi RTLNAME MM_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME MM_control_s_axi RTLNAME MM_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
