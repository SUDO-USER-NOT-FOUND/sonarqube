#!/bin/bash

# Directory containing your .sql files 
SQL_FILES_DIR="/home/user/Docker_Project/database"

# Temporary directory for intermediate files
TMP_DIR="$SQL_FILES_DIR/tmp"
mkdir -p "$TMP_DIR"

for sql_file in $SQL_FILES_DIR/*.sql; do
  filename=$(basename "$sql_file" .sql)

  # Create the SQL statements to prepend
  echo "Creating and switching to database '$filename'"
  prepend_statements="CREATE DATABASE IF NOT EXISTS \`$filename\`;\nUSE \`$filename\`;\n"
  
  tmp_file="$TMP_DIR/$filename.sql"

  {
    echo -e "$prepend_statements"
    cat "$sql_file"
  } > "$tmp_file"

  mv "$tmp_file" "$sql_file"
done

# Cleanup the temporary directory
rm -rf "$TMP_DIR"

echo "All .sql files have been updated."
echo "Initiating docker squence, docker ......"

docker-compose up -d