pragma circom 2.0.0;

template BerzeShift() {
    // Private inputs (The "Vault" - raw telemetry)
    signal input ambient_temp;
    signal input exhaust_temp;

    // Public output (The "15" or "17.2" the world sees)
    signal output thermal_delta;

    // The Physical Constraint: Delta must equal exhaust minus ambient
    thermal_delta <== exhaust_temp - ambient_temp;
}

component main = BerzeShift();