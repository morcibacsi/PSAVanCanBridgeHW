# PSA VAN-CAN protocol bridge (hardware)

### What is it ?
This is the hardware needed for my [PSA CAN protocol bridge][psacanbridge] and [PSA VAN-CAN protocol bridge][psavancanbridge] software.

The files are created with KiCad. 

The **master** branch contains only this README file, as the board revisions are significantly different, and maintaining a continuous commit history doesn't make much sense.
Each revision has its own branch, representing the exact state I sent to the manufacturing company.

You might ask: What happened to the missing versions, like v1.2 and v1.3?
Well... those were faulty revisions, so I decided not to upload them. This way, no one builds them by mistake.

Starting from Rev 1.5, both software projects can use the same board. From Rev 1.6 onward, the [PSA VAN-CAN protocol bridge][psavancanbridge] v3 branch replaces the other software.

### Available revisions

- [Rev 1.0][version_10] (Actually this revision is not supported by the software, this is uploaded for historical reasons)
- [Rev 1.1][version_11]
- [Rev 1.4][version_14]
- [Rev 1.5][version_15]
- [Rev 1.6][version_16]

[version_10]: https://github.com/morcibacsi/PSAVanCanBridgeHW/tree/v1.0
[version_11]: https://github.com/morcibacsi/PSAVanCanBridgeHW/tree/v1.1
[version_14]: https://github.com/morcibacsi/PSAVanCanBridgeHW/tree/v1.4
[version_15]: https://github.com/morcibacsi/PSAVanCanBridgeHW/tree/v1.5
[version_16]: https://github.com/morcibacsi/PSAVanCanBridgeHW/tree/v1.6
[psavancanbridge]: https://github.com/morcibacsi/PSAVanCanBridge
[psacanbridge]: https://github.com/morcibacsi/PSACANBridge
