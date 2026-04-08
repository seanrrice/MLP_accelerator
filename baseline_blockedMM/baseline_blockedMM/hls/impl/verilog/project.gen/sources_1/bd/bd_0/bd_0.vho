-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- -------------------------------------------------------------------------------
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

-- MODULE VLNV: amd.com:blockdesign:bd_0:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT bd_0
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_gmem_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem_arlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_arready : IN STD_LOGIC;
    m_axi_gmem_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_arvalid : OUT STD_LOGIC;
    m_axi_gmem_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_awready : IN STD_LOGIC;
    m_axi_gmem_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_awvalid : OUT STD_LOGIC;
    m_axi_gmem_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem_bready : OUT STD_LOGIC;
    m_axi_gmem_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_bvalid : IN STD_LOGIC;
    m_axi_gmem_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem_rlast : IN STD_LOGIC;
    m_axi_gmem_rready : OUT STD_LOGIC;
    m_axi_gmem_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_rvalid : IN STD_LOGIC;
    m_axi_gmem_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem_wid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem_wlast : OUT STD_LOGIC;
    m_axi_gmem_wready : IN STD_LOGIC;
    m_axi_gmem_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_wvalid : OUT STD_LOGIC;
    s_axi_control_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_control_arready : OUT STD_LOGIC;
    s_axi_control_arvalid : IN STD_LOGIC;
    s_axi_control_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_control_awready : OUT STD_LOGIC;
    s_axi_control_awvalid : IN STD_LOGIC;
    s_axi_control_bready : IN STD_LOGIC;
    s_axi_control_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_bvalid : OUT STD_LOGIC;
    s_axi_control_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_rready : IN STD_LOGIC;
    s_axi_control_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_rvalid : OUT STD_LOGIC;
    s_axi_control_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_wready : OUT STD_LOGIC;
    s_axi_control_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_control_wvalid : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : bd_0
  PORT MAP (
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    interrupt => interrupt,
    m_axi_gmem_araddr => m_axi_gmem_araddr,
    m_axi_gmem_arburst => m_axi_gmem_arburst,
    m_axi_gmem_arcache => m_axi_gmem_arcache,
    m_axi_gmem_arid => m_axi_gmem_arid,
    m_axi_gmem_arlen => m_axi_gmem_arlen,
    m_axi_gmem_arlock => m_axi_gmem_arlock,
    m_axi_gmem_arprot => m_axi_gmem_arprot,
    m_axi_gmem_arqos => m_axi_gmem_arqos,
    m_axi_gmem_arready => m_axi_gmem_arready,
    m_axi_gmem_arregion => m_axi_gmem_arregion,
    m_axi_gmem_arsize => m_axi_gmem_arsize,
    m_axi_gmem_arvalid => m_axi_gmem_arvalid,
    m_axi_gmem_awaddr => m_axi_gmem_awaddr,
    m_axi_gmem_awburst => m_axi_gmem_awburst,
    m_axi_gmem_awcache => m_axi_gmem_awcache,
    m_axi_gmem_awid => m_axi_gmem_awid,
    m_axi_gmem_awlen => m_axi_gmem_awlen,
    m_axi_gmem_awlock => m_axi_gmem_awlock,
    m_axi_gmem_awprot => m_axi_gmem_awprot,
    m_axi_gmem_awqos => m_axi_gmem_awqos,
    m_axi_gmem_awready => m_axi_gmem_awready,
    m_axi_gmem_awregion => m_axi_gmem_awregion,
    m_axi_gmem_awsize => m_axi_gmem_awsize,
    m_axi_gmem_awvalid => m_axi_gmem_awvalid,
    m_axi_gmem_bid => m_axi_gmem_bid,
    m_axi_gmem_bready => m_axi_gmem_bready,
    m_axi_gmem_bresp => m_axi_gmem_bresp,
    m_axi_gmem_bvalid => m_axi_gmem_bvalid,
    m_axi_gmem_rdata => m_axi_gmem_rdata,
    m_axi_gmem_rid => m_axi_gmem_rid,
    m_axi_gmem_rlast => m_axi_gmem_rlast,
    m_axi_gmem_rready => m_axi_gmem_rready,
    m_axi_gmem_rresp => m_axi_gmem_rresp,
    m_axi_gmem_rvalid => m_axi_gmem_rvalid,
    m_axi_gmem_wdata => m_axi_gmem_wdata,
    m_axi_gmem_wid => m_axi_gmem_wid,
    m_axi_gmem_wlast => m_axi_gmem_wlast,
    m_axi_gmem_wready => m_axi_gmem_wready,
    m_axi_gmem_wstrb => m_axi_gmem_wstrb,
    m_axi_gmem_wvalid => m_axi_gmem_wvalid,
    s_axi_control_araddr => s_axi_control_araddr,
    s_axi_control_arready => s_axi_control_arready,
    s_axi_control_arvalid => s_axi_control_arvalid,
    s_axi_control_awaddr => s_axi_control_awaddr,
    s_axi_control_awready => s_axi_control_awready,
    s_axi_control_awvalid => s_axi_control_awvalid,
    s_axi_control_bready => s_axi_control_bready,
    s_axi_control_bresp => s_axi_control_bresp,
    s_axi_control_bvalid => s_axi_control_bvalid,
    s_axi_control_rdata => s_axi_control_rdata,
    s_axi_control_rready => s_axi_control_rready,
    s_axi_control_rresp => s_axi_control_rresp,
    s_axi_control_rvalid => s_axi_control_rvalid,
    s_axi_control_wdata => s_axi_control_wdata,
    s_axi_control_wready => s_axi_control_wready,
    s_axi_control_wstrb => s_axi_control_wstrb,
    s_axi_control_wvalid => s_axi_control_wvalid
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file bd_0.vhd when simulating
-- the module, bd_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
