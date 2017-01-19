<# -----------------------------------------------------------------------------

 mapListGen.ps1
 
 .Synopsis
	Tool to generate maplist.txt and mapcycle.txt files based on existing maps.
	
 .NOTES
	Original Release: January, 2017
	https://github.com/gravcat
	
 .EXAMPLE
	.\mapListGen.ps1 -cssCustomDir "C:\gs\mygameserver\cstrike\custom\mygameserver\maps"
----------------------------------------------------------------------------- #>
param (
	[ValidateNotNullOrEmpty()]
	[String]
	$cssCustomMapsDir,
	
	[ValidateNotNullOrEmpty()]
	[Switch]
	$overrideCustomDir,
	
	[String]
	$fileExt = "bsp"
)

$maps = Get-ChildItem $cssCustomMapsDir\maps -filter "*.$fileExt" -name | ForEach-Object { $_.TrimEnd(".$fileExt") }

<#foreach($map in $maps) {
    $map.Trim('.bsp')
}#>

$maps