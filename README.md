# iiitb_4bit_ring_counter

This project simulates the designed 4 bit ring counter. A ring counter is a digital sequential circuit that recirculates the same data throughout the circuit. It is one of the applications of shift registers.

## Introduction
In this digital world, counters are the most important sequential logic circuits which are used widely in many day-to-day life applications such as microwave ovens, washing machines, digital clocks, timers and in many electronic devices such as frequency dividers, analog to digital converters, triangular waveform generators, etc. Any digital circuit which is used to count the number of occurrences of the input is called counter. The purpose of counters is not only for counting but also for measuring frequency and time.
Basically, counters are of 2 types: synchronous and asynchronous counters. If the change in transition occurs based on the clock input of the counter, then it is called synchronous counter. If not, then, it is called asynchronous counter. There are many other types of counters, such as decade counter, mod counter, binary counter, ring counter,etc. This paper mainly focuses on the ring counter only.

<p align="center">
  <img width="800" height="500" src="https://user-images.githubusercontent.com/110991148/184100206-85029b36-35d0-40cc-81f4-20be8b8cf800.png">
</p>


## Applications

Ring counters can be used in many applications such as:

- Frequency counter
- ADC
- Digital clocks
- Measure timers and rate, etc.


## Blocked Diagram of 4 bit Ring counter

 A ring counter is a synchronous counter which transfers the same data throughout it. It is a typical application of shift register and can be designed using either D or JK flip-flops (FFs). Here, a 4-bit ring counter is designed by a series of 4 D-FFs connected together in feedback manner. That means the output of the last FF is connected to the input of the first FF. The clock signal is applied to all the FFs simultaneously.


<p align="center">
  <img width="800" height="400" src="/home/iiitb/Desktop/Ramya/project/IIITB_4BitRingCounter/images/Circuit Diagram.png">
</p>


Initially all the FFs are at RESET state. When the PRESET is applied, the input of the ring counter becomes 1. Now the output of the first FF (Q3) is 1 and other FF outputs (Q2, Q1 and Q0) will be low. Then for the next clock signal, Q2 becomes 1 and others outputs will be low. In this way, as the clock input changes, the outputs change and the data sequence rotates in the ring counter.

<p align="center">
  <img width="800" height="300" src="/home/iiitb/Desktop/Ramya/project/IIITB_4BitRingCounter/images/Truth Table.png">
</p>

State diagram is used to describe the behaviour of the digital sequential circuits. It shows the transitions of states from one state to the next as well as the output for a given input.

<p align="center">
  <img width="800" height="300" src="/home/iiitb/Desktop/Ramya/project/IIITB_4BitRingCounter/images/State Diagram.png">
</p>

## About iverilog 
Icarus Verilog is an implementation of the Verilog hardware description language.
## About GTKWave
GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing

### Installing iverilog and GTKWave

#### For Ubuntu

Open your terminal and type the following to install iverilog and GTKWave
```
$   sudo apt-get update
$   sudo apt-get install iverilog gtkwave
```


### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone https://github.com/RamyaIIIT/IIITB_4BitRingCounter
$   cd IIITB_4BitRingCounter
$   iverilog Iiiitb_4bit_ring_counter.v iiitb_4bit_ring_counter_tb.v
$   ./a.out
$   gtkwave pwm.vcd
```

## Functional Characteristics
Simulation Results for the 4 bit ring counter
<p align="center">
  <img width="800" height="300" src="/home/iiitb/Desktop/Ramya/project/IIITB_4BitRingCounter/images/Simulation.png">
</p>


## synthesis of verilog code

#### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

- more at https://yosyshq.net/yosys/

To install yosys follow the instructions in  this github repository

https://github.com/YosysHQ/yosys

- note: Identify the .lib file path in cloned folder and change the path in highlighted text to indentified path

<img width="1119" alt="image" src="https://user-images.githubusercontent.com/110079648/182905357-064fec34-3c2b-4997-a0b7-30453f505ddd.png">



#### to synthesize
```
$   yosys
$   yosys>    script yosys_run.sh
```

#### to see diffarent types of cells after synthesys
```
$   yosys>    stat
```
#### to generate schematics
```
$   yosys>    show
```


## Contributors 

- **Ramya S** 
- **Kunal Ghosh** 



## Acknowledgments


- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.

## Contact Information

- Ramya S, Ph.D Student, International Institute of Information Technology, Bangalore. ramya.suriyarani@gmail.com
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com

## References:
- https://www.electronicshub.org/introduction-to-counters/
- https://eevibes.com/digital-logic-design/what-are-the-synchronous-and-asynchronous-counters/
- https://www.geeksforgeeks.org/ring-counter-in-digital-logic/
- https://verilogcodes.blogspot.com/2015/10/verilog-code-for-4-bit-ring-counter.html
