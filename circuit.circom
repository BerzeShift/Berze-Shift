pragma circom 2.0.0;

template ThermalDelta() {
    signal input secret_alpha;   // Secret: 15
    signal input base_temp;      // Public: 40000 (40C)
    signal output final_temp;    // Public: 22795 (22.795C)

    // 15 * 1147 = 17205 (The 17.2C drop scaling)
    signal delta;
    delta <== secret_alpha * 1147;
    
    // 40000 - 17205 = 22795 (The final temperature proof)
    final_temp <== base_temp - delta;
}

component main {public [base_temp]} = ThermalDelta();
