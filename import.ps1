# Directory containing your .sql files
$SQL_FILES_DIR = "C:\path\to\Docker_Project\database"

# Temporary directory for intermediate files
$TMP_DIR = Join-Path $SQL_FILES_DIR "tmp"
New-Item -ItemType Directory -Force -Path $TMP_DIR | Out-Null

Get-ChildItem $SQL_FILES_DIR -Filter *.sql | ForEach-Object {
    $filename = $_.BaseName
    $sql_file = $_.FullName

    # Create the SQL statements to prepend
    Write-Host "Creating and switching to database '$filename'"
    $prepend_statements = "CREATE DATABASE IF NOT EXISTS $filename;" + "USE $filename;"
    
    $tmp_file = Join-Path $TMP_DIR "$filename.sql"

    # Prepend the statements and copy the original content
    $prepend_statements | Out-File -FilePath $tmp_file -Encoding UTF8
    Get-Content $sql_file -Encoding UTF8 | Add-Content -Path $tmp_file -Encoding UTF8
    
    Move-Item -Path $tmp_file -Destination $sql_file -Force
}

# Cleanup the temporary directory
Remove-Item -Path $TMP_DIR -Recurse -Force

Write-Host "All .sql files have been updated."
Write-Host "Initiating docker sequence, docker ......"

# Initiate Docker Compose
docker-compose up -d --build