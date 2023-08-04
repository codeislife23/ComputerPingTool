Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Ping Test"
$form.Width = 410
$form.Height = 350

$descriptionLabel = New-Object System.Windows.Forms.Label
$descriptionLabel.Text = "Click the Start button to test the connectivity of the computers listed in 'C:\temp\computerlist.txt'."
$descriptionLabel.Top = 20
$descriptionLabel.Left = 20
$descriptionLabel.Width = 360
$descriptionLabel.Height = 60
$form.Controls.Add($descriptionLabel)

$button = New-Object System.Windows.Forms.Button
$button.Text = "Start"
$button.Top = 90
$button.Left = 150
$button.Width = 100
$button.Height = 50
$form.Controls.Add($button)

$outputTextBox = New-Object System.Windows.Forms.TextBox
$outputTextBox.Multiline = $true
$outputTextBox.ScrollBars = "Vertical"
$outputTextBox.Top = 150
$outputTextBox.Left = 20
$outputTextBox.Width = 360
$outputTextBox.Height = 140
$form.Controls.Add($outputTextBox)

$button.Add_Click({
    $computers = Get-Content -Path "C:\temp\computerlist.txt"
    foreach ($computer in $computers)
    {
        $ip = $computer.Split(" - ")[0]
        if (Test-Connection  $ip -Count 1 -ErrorAction SilentlyContinue){
            $outputTextBox.AppendText("$ip is up`r`n")
        }
        else{
            $outputTextBox.AppendText("$ip is down`r`n")
        }
    }
    $outputTextBox.AppendText("Done.`r`n")
})

$form.ShowDialog() | Out-Null
