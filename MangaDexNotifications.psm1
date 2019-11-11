$Location = (Join-Path -Path $Home -ChildPath 'MangaDex')
if(-not (Test-Path -Path $Location)) {
    New-Item -Path $Location -ItemType Directory
}

$mangaFile = Join-Path -Path $Location -ChildPath 'manga.ini'
if(-not (Test-Path -Path $mangaFile)) {
    New-Item -Path $mangaFile -ItemType File
}


$configFile = Join-Path -Path $Location -ChildPath 'config.ini'
if (-not (Test-Path -Path $configFile)) {
    New-Item -Path $configFile -ItemType File
}

$username = Join-Path -Path $Location -ChildPath 'username'
if(-not (Test-Path -Path $username)) {
    New-Item -Path $username -ItemType File
}

$password = Join-Path -Path $Location -ChildPath 'password'
if(-not (Test-Path -Path $password)) {
    New-Item -Path $password -ItemType File
}

Set-Variable -Name "MDX_Manga" -Value $mangaFile -Scope Global
Set-Variable -Name "MDX_Config" -Value $configFile -Scope Global
Set-Variable -Name "MDX_Username" -Value $username -Scope Global
Set-Variable -Name "MDX_Password" -Value $password -Scope Global