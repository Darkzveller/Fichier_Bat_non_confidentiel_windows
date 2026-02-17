powershell -NoExit -Command "Get-CimInstance Win32_PhysicalMemory | Select-Object BankLabel,@{Name='Capacity(GB)';Expression={[math]::Round($_.Capacity/1GB,2)}},Speed,@{Name='Type';Expression={switch ($_.SMBIOSMemoryType) {20 {'DDR'};21 {'DDR2'};24 {'DDR3'};26 {'DDR4'};34 {'DDR5'};default {'Inconnu'}}}}"


@REM powershell -NoExit -Command "Get-CimInstance Win32_PhysicalMemory | Select-Object BankLabel,Manufacturer,@{Name='Capacity(GB)';Expression={[math]::Round($_.Capacity/1GB,2)}},Speed,ConfiguredClockSpeed,@{Name='Type';Expression={switch ($_.SMBIOSMemoryType) {20 {'DDR'};21 {'DDR2'};24 {'DDR3'};26 {'DDR4'};34 {'DDR5'};default {'Inconnu'}}}}"
