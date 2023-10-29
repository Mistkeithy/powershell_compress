# PowerShell Data Encoding and Decoding with Gzip Compression

## Overview
This project provides PowerShell scripts for encoding and decoding data using Gzip compression. The scripts, `encode.ps1` and `decode.ps1`, allow the compression and decompression of files.

## Encoding
The `encode.ps1` script compresses a file using Gzip compression and converts it into a Base64 string.

## Decoding
The `decode.ps1` script decodes a Base64 string and decompresses the data, retrieving the original file.

## How to Use
1. **Encoding (encode.ps1):**
   - **Usage:** Run `encode.ps1` and provide the path of the source file and the destination file.
   - **Example:** `encode.ps1; Enter the path of the source file: [source_file_path]; Enter the path for the destination file: [destination_file_path]`

2. **Decoding (decode.ps1):**
   - **Usage:** Run `decode.ps1` and provide the path of the source file and the destination file.
   - **Example:** `decode.ps1; Enter the path of the source file: [source_file_path]; Enter the path for the destination file: [destination_file_path]`

## Instructions
1. Execute `encode.ps1` to compress a file and encode it into a Base64 string.
2. Use `decode.ps1` to decode the compressed Base64 string and retrieve the original data.

Ensure you have PowerShell installed and run these scripts in an appropriate environment.
