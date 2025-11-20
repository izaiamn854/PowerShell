param ($dnservice)

#TODO:
# Espere unos segundos
#Obtner numero de fila del resultado

$servSerach = get-service -DisplayName *$dnservice*

""

$row = Read-Host "Selecciona la fila del servicio que desea parar"

$row = $row - 1

""
Write-Host "La fila seleccionada es: $row"

$nameService = $servSerach[$row].Name

""

Write-Host "El nombre del servicio seleccionado es: $nameService"

Stop-Service -Name $nameService