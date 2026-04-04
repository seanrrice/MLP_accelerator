set SynModuleInfo {
  {SRCNAME MM_Pipeline_VITIS_LOOP_35_2 MODELNAME MM_Pipeline_VITIS_LOOP_35_2 RTLNAME MM_MM_Pipeline_VITIS_LOOP_35_2
    SUBMODULES {
      {MODELNAME MM_flow_control_loop_pipe_sequential_init RTLNAME MM_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MM_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MM_Pipeline_VITIS_LOOP_46_6_VITIS_LOOP_47_7_VITIS_LOOP_50_8 MODELNAME MM_Pipeline_VITIS_LOOP_46_6_VITIS_LOOP_47_7_VITIS_LOOP_50_8 RTLNAME MM_MM_Pipeline_VITIS_LOOP_46_6_VITIS_LOOP_47_7_VITIS_LOOP_50_8
    SUBMODULES {
      {MODELNAME MM_mul_32s_32s_32_2_1 RTLNAME MM_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME MM_mul_62s_32s_62_5_1 RTLNAME MM_mul_62s_32s_62_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MM MODELNAME MM RTLNAME MM IS_TOP 1
    SUBMODULES {
      {MODELNAME MM_mul_32ns_32ns_62_2_1 RTLNAME MM_mul_32ns_32ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME MM_mul_64ns_64ns_128_5_1 RTLNAME MM_mul_64ns_64ns_128_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME MM_mul_64ns_128ns_192_5_1 RTLNAME MM_mul_64ns_128ns_192_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME MM_gmem_m_axi RTLNAME MM_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME MM_control_s_axi RTLNAME MM_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
