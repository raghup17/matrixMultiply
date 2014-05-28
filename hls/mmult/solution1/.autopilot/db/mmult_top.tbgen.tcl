set moduleName mmult_top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName mmult_top
set C_modelType { void 0 }
set C_modelArgList { 
	{ a int 256 regular {bus 0}  }
	{ b int 256 regular {bus 0}  }
	{ c int 256 regular {bus 2}  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "a","bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "a","cData": "uint256","cArray": [{"low" : 0,"up" : 8191,"step" : 1}]}]}]} , 
 	{ "rtlName" : "b","bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "b","cData": "uint256","cArray": [{"low" : 0,"up" : 8191,"step" : 1}]}]}]} , 
 	{ "rtlName" : "c","bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "c","cData": "uint256","cArray": [{"low" : 0,"up" : 8191,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_req_din sc_out sc_logic 1 signal 0 } 
	{ a_req_full_n sc_in sc_logic 1 signal 0 } 
	{ a_req_write sc_out sc_logic 1 signal 0 } 
	{ a_rsp_empty_n sc_in sc_logic 1 signal 0 } 
	{ a_rsp_read sc_out sc_logic 1 signal 0 } 
	{ a_address sc_out sc_lv 32 signal 0 } 
	{ a_datain sc_in sc_lv 256 signal 0 } 
	{ a_dataout sc_out sc_lv 256 signal 0 } 
	{ a_size sc_out sc_lv 32 signal 0 } 
	{ b_req_din sc_out sc_logic 1 signal 1 } 
	{ b_req_full_n sc_in sc_logic 1 signal 1 } 
	{ b_req_write sc_out sc_logic 1 signal 1 } 
	{ b_rsp_empty_n sc_in sc_logic 1 signal 1 } 
	{ b_rsp_read sc_out sc_logic 1 signal 1 } 
	{ b_address sc_out sc_lv 32 signal 1 } 
	{ b_datain sc_in sc_lv 256 signal 1 } 
	{ b_dataout sc_out sc_lv 256 signal 1 } 
	{ b_size sc_out sc_lv 32 signal 1 } 
	{ c_req_din sc_out sc_logic 1 signal 2 } 
	{ c_req_full_n sc_in sc_logic 1 signal 2 } 
	{ c_req_write sc_out sc_logic 1 signal 2 } 
	{ c_rsp_empty_n sc_in sc_logic 1 signal 2 } 
	{ c_rsp_read sc_out sc_logic 1 signal 2 } 
	{ c_address sc_out sc_lv 32 signal 2 } 
	{ c_datain sc_in sc_lv 256 signal 2 } 
	{ c_dataout sc_out sc_lv 256 signal 2 } 
	{ c_size sc_out sc_lv 32 signal 2 } 
}

set Spec2ImplPortList { 
	a { ap_bus {  { a_req_din fifo_data 1 1 }  { a_req_full_n fifo_status 0 1 }  { a_req_write fifo_update 1 1 }  { a_rsp_empty_n fifo_status 0 1 }  { a_rsp_read fifo_update 1 1 }  { a_address unknown 1 32 }  { a_datain unknown 0 256 }  { a_dataout unknown 1 256 }  { a_size unknown 1 32 } } }
	b { ap_bus {  { b_req_din fifo_data 1 1 }  { b_req_full_n fifo_status 0 1 }  { b_req_write fifo_update 1 1 }  { b_rsp_empty_n fifo_status 0 1 }  { b_rsp_read fifo_update 1 1 }  { b_address unknown 1 32 }  { b_datain unknown 0 256 }  { b_dataout unknown 1 256 }  { b_size unknown 1 32 } } }
	c { ap_bus {  { c_req_din fifo_data 1 1 }  { c_req_full_n fifo_status 0 1 }  { c_req_write fifo_update 1 1 }  { c_rsp_empty_n fifo_status 0 1 }  { c_rsp_read fifo_update 1 1 }  { c_address unknown 1 32 }  { c_datain unknown 0 256 }  { c_dataout unknown 1 256 }  { c_size unknown 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ a 4 }
	{ b 4 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
