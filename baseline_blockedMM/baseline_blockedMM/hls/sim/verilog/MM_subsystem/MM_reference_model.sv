//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef MM_REFERENCE_MODEL_SV
`define MM_REFERENCE_MODEL_SV
typedef class MM_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    MM_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="gmem") refm.mem_blk_pages_gmem.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class MM_reference_model extends uvm_component;
`define TV_IN_gmem "../tv/cdatafile/c.MM.autotvin_gmem.dat"
`define TV_OUT_gmem "../tv/rtldatafile/rtl.MM.autotvout_gmem.dat"
`define TV_IN_OFFSET_AT "../tv/cdatafile/c.MM.autotvin_AT.dat"
`define TV_IN_OFFSET_B "../tv/cdatafile/c.MM.autotvin_B.dat"
`define TV_IN_OFFSET_C "../tv/cdatafile/c.MM.autotvin_C.dat"
`define TV_IN_OFFSET_ABC "../tv/cdatafile/c.MM.autotvin_ABC.dat"
`define TV_IN_AT "../tv/cdatafile/c.MM.autotvin_AT.dat"
`define TV_OUT_AT ""
`define TV_IN_B "../tv/cdatafile/c.MM.autotvin_B.dat"
`define TV_OUT_B ""
`define TV_IN_C "../tv/cdatafile/c.MM.autotvin_C.dat"
`define TV_OUT_C ""
`define TV_IN_ABC "../tv/cdatafile/c.MM.autotvin_ABC.dat"
`define TV_OUT_ABC ""
`define TV_IN_N "../tv/cdatafile/c.MM.autotvin_N.dat"
`define TV_OUT_N ""
`define TV_IN_M "../tv/cdatafile/c.MM.autotvin_M.dat"
`define TV_OUT_M ""
`define TV_IN_P "../tv/cdatafile/c.MM.autotvin_P.dat"
`define TV_OUT_P ""
    bit  write_data_finish_control;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 1;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    MM_config MM_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(512,8) mem_blk_pages_gmem;
    int blk_id_gmem = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem;

    mem_model_pages#(32,8) mem_blk_pages_control_N;
    mem_model_pages#(32,8) mem_blk_pages_control_M;
    mem_model_pages#(32,8) mem_blk_pages_control_P;
    
    `uvm_component_utils_begin(MM_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_gmem = new;
        axi_memaccess_cb_gmem.refm = this;
        axi_memaccess_cb_gmem.memid = "gmem";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;

        fpath.push_back(`TV_IN_N);
        mem_blk_pages_control_N = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_N");
        mem_blk_pages_control_N.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 64);
        fpath.delete;


        fpath.push_back(`TV_IN_M);
        mem_blk_pages_control_M = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_M");
        mem_blk_pages_control_M.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 72);
        fpath.delete;


        fpath.push_back(`TV_IN_P);
        mem_blk_pages_control_P = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_P");
        mem_blk_pages_control_P.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 80);
        fpath.delete;

        fpath.push_back(`TV_IN_gmem);
        mem_blk_pages_gmem = mem_model_pages_with_diffofst#(512,8)::type_id::create("mem_blk_pages_gmem");
        mem_blk_pages_gmem.whole_page_size=13440;
        mem_blk_pages_gmem.maxi_bundlevar_fpath["AT"]=`TV_IN_OFFSET_AT;
        mem_blk_pages_gmem.maxi_bundlevar_fpath["B"]=`TV_IN_OFFSET_B;
        mem_blk_pages_gmem.maxi_bundlevar_fpath["C"]=`TV_IN_OFFSET_C;
        mem_blk_pages_gmem.maxi_bundlevar_fpath["ABC"]=`TV_IN_OFFSET_ABC;
        mem_blk_pages_gmem.set_binary(1);
        mem_blk_pages_gmem.tvinload_pagechk_atinit(fpath, 194*((512+7)/8), 0, 0);
        mem_blk_pages_gmem.tvoutdump_atinit(`TV_OUT_gmem);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            for(int i=1; i<1; i++) begin
                @dut2tb_ap_ready;
                mem_blk_pages_gmem.incr_rd_page_idx() ;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_axi_wtr_gmem(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
        end
    endfunction
endclass
`endif
