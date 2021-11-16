# PS-UTF16LE-BASE64
======================

Simple obfuscation framework with UTF16LE and Base64 encoding.

## Description

This project is simply intended to use the pwsh startup option `-e`. No more, no less.

## VS. 

For more advanced obfuscation, we recommend [Invoke-Obfuscation](https://github.com/danielbohannon/Invoke-Obfuscation).

## Requirement

- Powershell 6 or Later

## Usage

1. Edit `payload.ps1`.
1. Run `encoder.ps1`.
1. Bring the following files to the target environment and place them in the same directory.
    - `payload.dat`
    - `execute.cmd`
1. Run `execute.cmd` on the target environment.

## Install

Hasn't installer. Only download zip and unzip.

## Contribution

Allways welcome

## Licence

MIT

## Author

[@ShortArrow](https://github.com/ShortArrow)
