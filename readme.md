# PSA VAN-CAN protocol bridge (hardware)

### What is it ?
This is the hardware needed for my PSA VAN-CAN protocol bridge software.

The files were created with KiCad. 

### v1.1

This is actually the third revision of the hardware (the second was faulty). It was designed as a shield for the ESP32 dev board. It uses the ESP32's RMT peripheral to read the VAN bus and the CAN peripheral for connecting to the CAN bus. Both of them are connected through a SN65HVD230 3.3v CAN transceiver.

I have doubled every connection point so if something would have gone sideways (as with the 2nd revision) I could have the possibility to correct it. Fortunately they weren't needed. I have included a buzzer on the board which wasn't ever tested if it works.

**By the time of writing I used this revision in my car for the longest period**

### PCB

![kicad_front.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.1/images/kicad_front.png)

![kicad_back.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.1/images/kicad_back.png)

![photo.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.1/images/photo.jpg)

### BOM

| | |
|-|-|
|Total Number of Parts    |    22|
|Total Unique Parts    |    16|

|    Ref    |    Quantity    |    Value    |Footprint    |
|-|-|-|-|
|    BZ1     |    1    |    Buzzer    |Buzzer_Beeper:MagneticBuzzer_Kingstate_KCG0601    |
|    C1     |    1    |    0.33 uF    |Capacitor_THT:CP_Radial_D4.0mm_P2.00mm    |
|    C2     |    1    |    0.1 uF    |Capacitor_THT:CP_Radial_D4.0mm_P2.00mm    |
|    J1 J7     |    2    |    Row1    |Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical    |
|    J2 J8     |    2    |    Row2    |Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical    |
|    J10 J5     |    2    |    Conn_01x04_Female    |Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical    |
|    J3     |    1    |    Conn_01x06_Male    |Connector_JST:JST_XH_S06B-XH-A_1x06_P2.50mm_Horizontal    |
|    J4     |    1    |    Conn_01x06_Male    |Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical    |
|    Q1     |    1    |    PN2222A    |Package_TO_SOT_THT:TO-92_Inline    |
|    R1 R2     |    2    |    120    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R3 R4     |    2    |    10K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R5     |    1    |    2.2K (470/220 for IR)    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R6     |    1    |    2.2K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R7     |    1    |    4.7K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    U1 U2     |    2    |    SN65HVD230    |Package_SO:SOIC-8_3.9x4.9mm_P1.27mm    |
|    U3     |    1    |    LM78M05_TO220    |Package_TO_SOT_SMD:TO-252-2    |


