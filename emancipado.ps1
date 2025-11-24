param($path, $row)

$personas = Import-Csv -Path $path -Delimiter ';'

if ($personas[$row].edad -ge 18) {
    Write-Output "$($personas[$row].nombre) $($personas[$row].primer_apellido) $($personas[$row].segundo_apellido) es mayor de edad tiene $($personas[$row].edad) años"
} else {
    Write-Output "$($personas[$row].nombre) $($personas[$row].primer_apellido) $($personas[$row].segundo_apellido) es menor de edad tiene $($personas[$row].edad) años" 
}