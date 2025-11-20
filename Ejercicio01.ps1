param ($dnservice)

#TODO:
# Espere unos segundos
#Obtner numero de fila del resultado

$servSearch = get-service -DisplayName *$dnservice*

""
$servSearch

""

$row = Read-Host "Selecciona la fila del servicio que desea parar, de la 1 a la"$servSearch.Count

$row = $row - 1

""
Write-Host "La fila seleccionada es: $row"

$nameService = $servSearch[$row].Name

""

Write-Host "El nombre del servicio seleccionado es: $nameService"

Stop-Service -Name $nameService

#Mostrar estado del servicio
""
Write-Host "El servicio $nameService se a parado. Estado actual:"

Get-Service -Name $nameService

#Espere unos segundos
""
Write-Host "Esperando 5 segundos antes de reiniciar el servicio..."
Start-Sleep -Seconds 5

#Iniciar el servicio
""
Write-Host "Reiniciando el servicio $nameService..."
Start-Service -Name $nameService

#Mostrar estado del servicio
""
Write-Host "El servicio $nameService se ha reiniciado. Estado actual:"
get-service -DisplayName *$dnservice*