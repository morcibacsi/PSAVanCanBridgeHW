# PSA VAN-CAN protocol bridge (hardware)

### What is it ?
This is the hardware needed for my PSA VAN-CAN protocol bridge software.

The files were created with KiCad. 

### v1.4

This is actually the sixth revision of the hardware (the fourth was faulty again and the fifth didn't make it to production).

It was designed as a shield for the ESP32 dev board. It uses the ESP32's RMT peripheral to read, the TSS463C to write the VAN bus and the CAN peripheral for connecting to the CAN bus. The CAN transceiver used on this board is the MCP2551.
The board was designed in a way that the LM7805 can be easily replaced by a step down converter shield.
To have an easier build I used a pre-built level shifter. I know it is not the best approach, but if I'd have it included on the board it would have been larger and much harder to build. My goal was to have a board which is easy to assemble.

I have included a buzzer and a DS18B20 thermometer on the board but they weren't ever tested if they work. I also included some spare connection points for later use.

### PCB

![kicad_front.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.4/images/kicad_front.png)

![kicad_back.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.4/images/kicad_back.png)

![photo_1.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.4/images/photo_1.jpg)

![photo_2.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.4/images/photo_2.jpg)

### BOM



### The absolute minimum to have it working:

|    Ref    |    Quantity    |    Value    |Footprint    |
|-|-|-|-|
|    C1 C2     |    2    |    22pF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    C3     |    1    |    0.33uF    |Capacitor_THT:CP_Radial_D4.0mm_P2.00mm    |
|    C4     |    1    |    0.1uF    |Capacitor_THT:CP_Radial_D4.0mm_P2.00mm    |
|    Y1     |    1    |    8MHz    |Crystal:Crystal_HC49-4H_Vertical    |
|    U1     |    1    |    TSS463C    |PSAVanCanBridge_v14:SO16L    |
|    U2 U3     |    2    |    MCP2551-I-SN    |Package_SO:SOIC-8_3.9x4.9mm_P1.27mm    |
|    U6     |    1    |    LM7805_TO220    |Package_TO_SOT_SMD:TO-252-2    |
|    U7     |    1    |    LevelShifter4Shield    |PSAVanCanBridge_v14:LevelShifter4_shield    |
|    R6 R5 |    2    |    10K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    J1     |    1    |    Conn_01x06_Male    |Connector_JST:JST_EH_S06B-EH_1x06_P2.50mm_Horizontal    |

### The full board:

| | |
|-|-|
|Total Number of Parts    |    36|
|Total Unique Parts    |    22|

|    Ref    |    Quantity    |    Value    |Footprint    |
|-|-|-|-|
|    BZ1     |    1    |    Buzzer    |Buzzer_Beeper:MagneticBuzzer_Kingstate_KCG0601    |
|    C1 C2     |    2    |    22pF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    C3     |    1    |    0.33uF    |Capacitor_THT:CP_Radial_D4.0mm_P2.00mm    |
|    C4     |    1    |    0.1uF    |Capacitor_THT:CP_Radial_D4.0mm_P2.00mm    |
|    C6 C5     |    2    |    0.1uF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    C8 C10 C7 C9     |    4    |    560pF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    J1     |    1    |    Conn_01x06_Male    |Connector_JST:JST_EH_S06B-EH_1x06_P2.50mm_Horizontal    |
|    J2     |    1    |    Conn_01x03_Male    |Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical    |
|    J3     |    1    |    Conn_01x04_Male    |Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical    |
|    J4 J5     |    2    |    Conn_01x02_Male    |Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical    |
|    Q1     |    1    |    PN2222A    |Package_TO_SOT_THT:TO-92_Inline    |
|    R6 R5 R11     |    3    |    4.7K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R3 R4     |    2    |    120    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R2 R1     |    2    |    2.2K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R8 R10 R7 R9     |    4    |    100    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    U1     |    1    |    TSS463C    |PSAVanCanBridge_v14:SO16L    |
|    U2 U3     |    2    |    MCP2551-I-SN    |Package_SO:SOIC-8_3.9x4.9mm_P1.27mm    |
|    U6     |    1    |    LM7805_TO220    |Package_TO_SOT_SMD:TO-252-2    |
|    U5     |    1    |    ESP32    |PSAVanCanBridge_v14:ESP32_shield    |
|    U7     |    1    |    LevelShifter4Shield    |PSAVanCanBridge_v14:LevelShifter4_shield    |
|    U4     |    1    |    DS18B20    |Package_TO_SOT_THT:TO-92_Inline    |
|    Y1     |    1    |    8MHz    |Crystal:Crystal_HC49-4H_Vertical    |

