# PSA VAN-CAN protocol bridge (hardware)

### What is it ?
This is the hardware needed for my PSA VAN-CAN protocol bridge software.

The files were created with KiCad. 

### v1.0

This is the first revision of the hardware. It uses a TSS463C for connecting to the VAN bus and an MCP2515 for connecting to the CAN bus. It was designed around the Arduino Pro Mini.
The MCU should work with 12 volts however in real life it is really easy to fry the Arduino if the raw pin is connected, so care must be taken. I was using this board for developing my TSS463 library. I left the raw pin unconnected and powered the Pro Mini externally with an USB-TTL converter.

The hardware is based on this project: [Arduino-CAN-BUS-OBD-Gas-Gauge][arduino_can_obd_scheme]

### PCB

![kicad_front.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.0/images/kicad_front.png)

![kicad_back.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.0/images/kicad_back.png)

![photo.png](https://github.com/morcibacsi/PSAVanCanBridgeHW/raw/v1.0/images/photo.jpg)

### BOM


| | |
|-|-|
|Total Number of Parts    |    27|
|Total Unique Parts    |    20|

|    Ref    |    Quantity    |    Value    |Footprint    |
|-|-|-|-|-|
|    C1 C4     |    2    |    .1uF    |PSAVanCanBridge_v10:CAP-PTH-SMALL-KIT    |
|    C2 C3     |    2    |    22pf    |PSAVanCanBridge_v10:CAP-PTH-SMALL-KIT    |
|    C11 C12     |    2    |    22pf    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    C10     |    1    |    10nF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    C14     |    1    |    15uF    |Capacitor_THT:CP_Radial_D8.0mm_P2.50mm    |
|    C13 C9     |    2    |    330pF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    C15     |    1    |    100nF    |Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    IC1     |    1    |    MCP2515-E_SO    |PSAVanCanBridge_v10:SO18L    |
|    J2     |    1    |    Conn_01x06_Female    |Connector_JST:JST_XH_S06B-XH-A-1_1x06_P2.50mm_Horizontal    |
|    LCD1     |    1    |    M16PTH    |PSAVanCanBridge_v10:1X16    |
|    Q1     |    1    |    20Mhz    |PSAVanCanBridge_v10:QS    |
|    Q2     |    1    |    2N3906    |PSAVanCanBridge_v10:TO92    |
|    R1 R3     |    2    |    10K    |PSAVanCanBridge_v10:AXIAL-0.3-KIT    |
|    R2     |    1    |    220    |PSAVanCanBridge_v10:AXIAL-0.3-KIT    |
|    R10     |    1    |    10K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R8 R9     |    2    |    4.3K    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    R7 R6     |    2    |    51    |Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder    |
|    U1     |    1    |    MCP2551    |PSAVanCanBridge_v10:SO08    |
|    U$2     |    1    |    ARDUINO_PRO_MINI    |PSAVanCanBridge_v10:ARDUINO_PRO_MINI    |
|    VQ2     |    1    |    8Mhz    |PSAVanCanBridge_v10:QS    |


[arduino_can_obd_scheme]: http://web.archive.org/web/20180225084958/http://www.openhardwarehub.com/projects/40-Arduino-CAN-BUS-OBD-Gas-Gauge#!prettyPhoto
