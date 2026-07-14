+----------------------------------+
| Application                      |
| (Device logic, UI, Control)      |
+----------------------------------+
| Middleware                       |
| TCP/IP, USB, BLE, Filesystem     |
+----------------------------------+
| RTOS (Optional)                  |
| Task Scheduler, Queues, Timers   |
+----------------------------------+
| HAL / BSP                        |
| Hardware Abstraction Layer        |
+----------------------------------+
| Device Drivers                   |
| GPIO, UART, SPI, I²C, CAN, ADC   |
+----------------------------------+
| Bootloader                       |
| Firmware Update, Startup         |
+----------------------------------+
| Hardware                         |
| MCU, Sensors, Memory, Peripherals|
+----------------------------------+

+----------------------------------+
project/
├── bootloader/
├── app/
├── drivers/
├── hal/
├── middleware/
├── rtos/
├── boards/
├── configs/
├── include/
├── src/
├── tests/
├── docs/
└── CMakeLists.txt
+----------------------------------+
