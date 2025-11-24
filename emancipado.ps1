param($path, $row)

$personas = Import-Csv -Path $path -Delimiter ';'

if ($personas[$row]. edad -ge 18) {
    Write-Output "Es mayor de edad"
} else {
    Write-Output "Es menor de edad"
}