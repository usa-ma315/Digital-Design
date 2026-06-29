# Digital Design using Verilog

This repository contains Verilog implementations of basic digital logic circuits along with their testbenches and simulation results.

## Project Structure

```
Digital_Design/
├── Basics/
│   └── Logic_Gates/
│       ├── src/
│       │   └── and_gate.v
│       ├── testbench/
│       │   └── and_tb.v
│       └── sim/
└── README.md
```

---

## Requirements

Install the following tools:

- Git
- Icarus Verilog (iverilog)
- GTKWave

### Ubuntu

```bash
sudo apt update
sudo apt install iverilog gtkwave git
```

Verify installation:

```bash
iverilog -V
vvp -V
gtkwave --version
```

---

## Clone the Repository

```bash
git clone https://github.com/usa-ma315/Digital-Design.git
cd Digital-Design
```

---

## Compile

```bash
mkdir -p Basics/Logic_Gates/sim

iverilog \
-o Basics/Logic_Gates/sim/and_gate \
Basics/Logic_Gates/src/and_gate.v \
Basics/Logic_Gates/testbench/and_tb.v
```

---

## Run Simulation

```bash
vvp Basics/Logic_Gates/sim/and_gate
```

This generates:

```
and_tb.vcd
```

---

## View Waveform

```bash
gtkwave and_tb.vcd
```

---

## Expected Truth Table

| A | B | Y |
|---|---|---|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

---

## Screenshots

### GTKWave Output

![Waveform](images/and_gate_waveform.png)

---

## Author

Usama