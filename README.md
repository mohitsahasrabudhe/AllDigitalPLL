# AllDigitalPLL
An all digital implementation of the Phase Locked Loop

1. Introduction:
	A frequency synthesizer is a digital circuit that generates a new frequency from a single stable reference frequency. Mostly a crystal oscillator is used for the reference frequency. Most of the frequency synthesizers employ a Phase Locked Loops circuit, as this technique has many advantages such as minimum complex architecture, low power consumption and a maximum use of Large Scale Integration technology. There are many designs in communication that require frequency synthesizer to generate a range of frequencies; such as cordless telephones, mobile radios and other wireless products. The accuracy of the required frequencies is very important in these designs as the performance is based on this parameter. One approach to this necessity could be to use crystal oscillators. It is not only impractical, but is impossible to use an array of crystal oscillators for multiple frequencies. Therefore some other techniques must be used to circumvent the problem. The platform of the proposed system is a PLD based realization. The attempt here is to provide a single chip solution for proposed system.
Frequency Synthesis is used in almost every communication system. Some of its uses include recovering clock from digital data signals, performing frequency, phase modulation and demodulation, recovering the carrier from satellite transmission signals and as a frequency synthesizer. 



2. Block Schematic:
	Block schematic of proposed system is as shown in figure 1.1. The operation is analogous to a DFS or a frequency generation IC. The output will provide frequencies in the multiple or divisor of any factor.
As shown in figure 2.1, this is block schematic model. There are different block sets for every function such as division, multiplication, duty cycle. The control unit will allow us to incorporate the individual block-sets with each other.
	The control unit has an input clock signal and every block-set is connected to this control unit. The control unit will allow us to vary the duty cycle in the multiplied or divided clock signal. The control unit will have a control over all three block-sets and the inputs of the control signal will include duty cycle and control frequency.





						Figure 2.1
3. Summary
The main objective of our project is to create a one-stop variable frequency hardware realization. The project will allow us to create individual block-sets which can be integrated or used independently. The single chip solution will contain a frequency multiplier, divider, and duty cycle synthesis options. The future scope, of the project will allow us to add a slew rate modifier and feedback network for signal correction.

4. Future Possibilities
There are various improvements that can be made to improve our project. For example the length of the wire on the circuit board can be predefined and the hardware will accordingly change the phase difference of the clock. Also the clock jitter and skew(previously discussed) can be reduced or completely removed using techniques such as feedback loops

5. Desired Outcomes:
Basically we expect three major outcomes from this project.
Simulation and synthesis of the hardware descriptive models of individual block-sets. The implementation of individual block-sets will allow us more freedom in the usability of the project and also the freedom of creation. Also individual block-sets will give us an exhaustive understanding of the working of the block-sets.
Integration of individual block-sets as a system. The integration of various block-sets on a single chip will give us a extensive ability of maneuverability of the code. Also a single chip will be used for complete manipulation of clock frequencies.
The hardware synthesis and simulation of the proposed project, will be completed to provide a digital circuit which will be used.   
