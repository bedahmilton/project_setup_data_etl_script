# project-setup

Interactive Bash script that scaffolds a new data project: standard folders, a Python virtual environment, and starter files, with timestamped logging.

## Requirements
- Bash 4+
- Python 3 (with the `venv` module)
- Tested on Ubuntu (GitHub Codespaces)

## Usage
```bash
chmod +x project-setup.sh
./project-setup.sh <project-name>
```

Example:
```bash
./project-setup.sh market_etl
```

## What it does
1. Validates the project name and checks that Python 3 is installed
2. Refuses to run if the folder already exists
3. Creates the project folder and opens a menu:
   - Create project directories
   - Install a virtual environment (`.venv`)
   - Create starter files
   - Exit

## Folder layout created
```
market_etl/
├── data/
│   ├── raw/
│   └── processed/
├── src/
├── notebooks/
├── tests/
├── logs/
│   └── setup.log
├── config/
├── README.md
├── requirements.txt
└── .gitignore
```

## Example output
(Paste a real terminal run here: the menu and a few log lines.)

## Logging
Each step is timestamped and appended to `logs/setup.log` inside the new project.

## Error handling
- Exits with code 1 on invalid arguments or an existing folder
- Strict mode (`set -euo pipefail`) stops the script on any unexpected error

## Possible improvements
- Install dependencies from `requirements.txt`
- Optional `git init`
- Project templates (`etl`, `analysis`)
