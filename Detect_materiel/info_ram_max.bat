powershell -NoExit -Command "Get-CimInstance Win32_PhysicalMemoryArray | Select-Object MaxCapacity, MemoryDevices"

@REM Plus technique
@REM Get-CimInstance Win32_PhysicalMemoryArray | 
@REM Select-Object @{Name="MaxCapacityGB";Expression={[math]::Round($_.MaxCapacity/1MB,2)}}, MemoryDevices
