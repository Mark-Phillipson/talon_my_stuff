# Check the current auto-hide setting
$current = Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 | Select-Object -ExpandProperty Settings

# Toggle the setting
if ($current[8] -band 1) {
    $current[8] = $current[8] -bxor 1 # Turn off auto-hide
} else {
    $current[8] = $current[8] -bor 1  # Turn on auto-hide
}

# Apply the change
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 -Name Settings -Value $current
Stop-Process -Name explorer # Restart explorer for changes to take effect
