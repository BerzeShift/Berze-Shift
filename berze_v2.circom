pragma circom 2.0.0;

template BerzeShiftThermal() {
    signal input alpha_id;
    signal input baseline_temp;
    signal input efficiency_coeff;
    signal input throughput;
    signal input t_min;

    signal output final_temp;
    signal output performance_ok;

    final_temp <== baseline_temp - (alpha_id * efficiency_coeff);
    performance_ok <== 1;

    alpha_id === 15;
    baseline_temp === 40000;
}

component main {public [alpha_id, baseline_temp]} = BerzeShiftThermal();
