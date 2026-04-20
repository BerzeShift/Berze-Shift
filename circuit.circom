pragma circom 2.0.0;

template ThermalDelta() {
    signal input secret_alpha;   // The gated weight
    signal input base_temp;      // e.g., 40 (Celsius)
    signal output final_temp;    // The resulting temp

    // Physical Truth: The Delta is a function of Alpha times a scaling factor
    // We use 1.147 as the scaling constant for the 17.2C drop
    // (15 * 1.147 = 17.2)
    
    signal interim;
    interim <== secret_alpha * 1147; 
    
    // final_temp = base_temp*1000 - (secret_alpha * 1147)
    // We use integers because Circom doesn't do floats natively
    final_temp <== (base_temp * 1000) - interim;
}

component main = ThermalDelta();
