/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_37(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_487(char*, char *);
extern void execute_488(char*, char *);
extern void execute_489(char*, char *);
extern void execute_490(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_422(char*, char *);
extern void execute_428(char*, char *);
extern void execute_429(char*, char *);
extern void execute_438(char*, char *);
extern void execute_439(char*, char *);
extern void execute_440(char*, char *);
extern void execute_441(char*, char *);
extern void execute_442(char*, char *);
extern void execute_444(char*, char *);
extern void execute_449(char*, char *);
extern void execute_450(char*, char *);
extern void execute_451(char*, char *);
extern void execute_452(char*, char *);
extern void execute_453(char*, char *);
extern void execute_8(char*, char *);
extern void execute_36(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_413(char*, char *);
extern void execute_414(char*, char *);
extern void execute_415(char*, char *);
extern void execute_416(char*, char *);
extern void execute_417(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_346(char*, char *);
extern void execute_347(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_351(char*, char *);
extern void execute_352(char*, char *);
extern void execute_353(char*, char *);
extern void execute_354(char*, char *);
extern void execute_358(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_370(char*, char *);
extern void execute_372(char*, char *);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_376(char*, char *);
extern void execute_377(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_380(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_383(char*, char *);
extern void execute_384(char*, char *);
extern void execute_385(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_355(char*, char *);
extern void execute_356(char*, char *);
extern void execute_357(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_359(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_477(char*, char *);
extern void execute_479(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_461(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_473(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_476(char*, char *);
extern void execute_46(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_463(char*, char *);
extern void execute_464(char*, char *);
extern void execute_465(char*, char *);
extern void execute_98(char*, char *);
extern void execute_101(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_169(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_491(char*, char *);
extern void execute_492(char*, char *);
extern void execute_493(char*, char *);
extern void execute_494(char*, char *);
extern void execute_495(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_413(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_414(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_420(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_467(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[196] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_37, (funcp)execute_281, (funcp)execute_282, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_487, (funcp)execute_488, (funcp)execute_489, (funcp)execute_490, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_422, (funcp)execute_428, (funcp)execute_429, (funcp)execute_438, (funcp)execute_439, (funcp)execute_440, (funcp)execute_441, (funcp)execute_442, (funcp)execute_444, (funcp)execute_449, (funcp)execute_450, (funcp)execute_451, (funcp)execute_452, (funcp)execute_453, (funcp)execute_8, (funcp)execute_36, (funcp)execute_411, (funcp)execute_412, (funcp)execute_413, (funcp)execute_414, (funcp)execute_415, (funcp)execute_416, (funcp)execute_417, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_347, (funcp)execute_348, (funcp)execute_349, (funcp)execute_351, (funcp)execute_352, (funcp)execute_353, (funcp)execute_354, (funcp)execute_358, (funcp)execute_362, (funcp)execute_363, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_367, (funcp)execute_370, (funcp)execute_372, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_376, (funcp)execute_377, (funcp)execute_378, (funcp)execute_379, (funcp)execute_380, (funcp)execute_381, (funcp)execute_382, (funcp)execute_383, (funcp)execute_384, (funcp)execute_385, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_355, (funcp)execute_356, (funcp)execute_357, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_359, (funcp)execute_360, (funcp)execute_361, (funcp)execute_31, (funcp)execute_32, (funcp)execute_477, (funcp)execute_479, (funcp)execute_480, (funcp)execute_481, (funcp)execute_484, (funcp)execute_485, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_461, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_472, (funcp)execute_473, (funcp)execute_474, (funcp)execute_475, (funcp)execute_476, (funcp)execute_46, (funcp)execute_276, (funcp)execute_277, (funcp)execute_463, (funcp)execute_464, (funcp)execute_465, (funcp)execute_98, (funcp)execute_101, (funcp)execute_109, (funcp)execute_110, (funcp)execute_111, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_125, (funcp)execute_126, (funcp)execute_127, (funcp)execute_129, (funcp)execute_130, (funcp)execute_131, (funcp)execute_133, (funcp)execute_134, (funcp)execute_135, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_168, (funcp)execute_169, (funcp)execute_170, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_491, (funcp)execute_492, (funcp)execute_493, (funcp)execute_494, (funcp)execute_495, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_413, (funcp)transaction_414, (funcp)transaction_416, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_420, (funcp)transaction_467, (funcp)transaction_415};
const int NumRelocateId= 196;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/picture_show_behav/xsim.reloc",  (void **)funcTab, 196);
	iki_vhdl_file_variable_register(dp + 467960);
	iki_vhdl_file_variable_register(dp + 468016);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/picture_show_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 577976, dp + 556016, 0, 7, 0, 7, 8, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 558704, dp + 556072, 0, 7, 0, 7, 8, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/picture_show_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/picture_show_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/picture_show_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/picture_show_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
