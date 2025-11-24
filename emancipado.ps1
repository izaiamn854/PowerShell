param($path, $row)

$personas = Import-Csv -Path $path -Delimiter ';'

if ($personas[$row].edad -ge 18) {
    Write-Output "$($personas[$row].nombre) es mayor de edad"
} else {
    Write-Output "$($personas[$row].nombre) es menor de edad" 
}