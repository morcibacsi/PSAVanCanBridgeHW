# PSA VAN-CAN protocol bridge (hardware)

### What is it ?
This is the hardware needed for my [PSA CAN protocol bridge][psacanbridge] and [PSA VAN-CAN protocol bridge][psavancanbridge] software.

It was designed using KiCad 7.0.6 as a standalone board with an ESP32-WROOM-32 MCU.

### v1.5

:warning: **IF YOU ARE USING THE BOARD AS A VAN-CAN BOARD THEN BE AWARE THAT THE VAN DATA LINES HAVE BEEN SWAPPED IN THIS VERSION COMPARED TO THE PREVIOUS ONES. DATA LINE IS ON PIN 6 AND DATAB LINE IS ON PIN 5. ON PREVIOUS VERSIONS IT WAS THE OTHER WAY AROUND. SO YOU NEED TO SWAP THOSE WIRES ON YOUR PATCH LEAD IF YOU ARE UPGRADING FROM A PREVIOUS VERSION.**

It won't damage the board or your car, it just won't work if you don't swap the wires.

### Custom SPI shield

To have the flexibility to use either a MCP2515 or a TSS463 I designed a small custom PCB which can be manufactured with castellated holes and can be soldered to the back of this board. This is how it looks like. The design files for this PCB can be found on its own [repository][vancanspishield].

![spi_shield_mcp2515.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/spi_shield_mcp2515.jpg)

![spi_shield_tss463.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/spi_shield_tss463.jpg)

#### VAN-CAN bridge

To use it as a VAN-CAN bridge without the need for a custom SPI shield with the TSS463 you need to close the jumper marked with red rectangle on the front (1). This way the ESP32 will write directly to the VAN bus. You also need to close the jumper marked with red rectangle on the back (2) of the board to 3V3 so the CAN transceiver uses 3.3V logic levels.

If you would like to use the SPI shield with the TSS463 the jumper marked with red rectangle on the back (2) must be closed to 5V.

#### CAN-CAN bridge

To use it as a CAN-CAN bridge you need to populate the SPI shield with a MCP2515 and the jumper marked with red rectangle on the back (2) must be closed to 5V.

### Programming the board

The board can be programmed using the ESP32's UART0 for which you need a USB to serial adapter like on the picture below (or a similar one). As the ESP32 is a 3.3V device you need to make sure that the adapter is also 3.3V compatible.
The pins needed for programming are marked with orange rectangles on the front of the board on the picture below. Depending on the adapter you have you might need to cross connect the TX and RX pins.

You need to hold the BOOT button and press the RESET button to enter programming mode. I usually keep holding the BOOT button until the programming starts. After programming is done you can press the RESET button to restart the board.

💡 **Make sure you don't connect 5V and 12V at the same time to the board**

![usb_ttl_ftdi.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/usb_ttl_ftdi.jpg)

### Schema

![schema.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/schema.jpg)

### PCB

![kicad_front.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/kicad_front.jpg)

![kicad_back.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/kicad_back.jpg)

![photo_front.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/photo_front.jpg)

![photo_back.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/photo_back.jpg)

![photo_enclosure.jpg](https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/photo_enclosure.jpg)

### Assembly

The board was designed to be as compact as possible, so I suggest to send the manufacturing files to JLCPCB and order with assembly service. But in order to have a working board some soldering is also needed. You can find the necessary components in the next section.

I bought a [DS3231 real time clock module for Raspberry Pi][DS3231] and disassembled that and placed its parts to J1 and U2.

<img src="https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/ds3231.jpg" width="200" height="200">

The board dimensions were designed to fit a [70 x 45 x 18mm case][enclosure].

<img src="https://github.com/morcibacsi/PSAVanCanBridgeHW/blob/v1.5/images/enclosure.jpg" width="200" height="150">

### BOM

I listed only those which aren't populated by the assembly company.

|Designator|Value         |Package                                         |
|----------|------------|------------------------------------------------|
|U8        |ESP32-WROOM-32      |     |
|J1        |Coin battery for DS3231      |     |
|U2        |DS3231      |SOIC-16W_7.5x10.3mm_P1.27mm     |
|C7        |100uF       |Capacitor_THT:CP_Radial_D6.3mm_P2.50mm     |
|C10       |220uF       |Capacitor_THT:CP_Radial_D6.3mm_P2.50mm     |

The connector for the power and signal wires is a JST-XH6 2.54 mm

The full BOM is in the production folder as a csv.

[vancanspishield]: https://github.com/morcibacsi/VanCanSpiShield
[psacanbridge]: https://github.com/morcibacsi/PSACANBridge
[psavancanbridge]: https://github.com/morcibacsi/PSAVANCANBridge
[DS3231]: https://www.aliexpress.com/item/1005006116699524.html
[enclosure]: https://www.aliexpress.com/item/1005005467281776.html