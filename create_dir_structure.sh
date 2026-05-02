#!/usr/bin/env bash

PROJECT_NAME=${1:-deep-learning-project}

mkdir -p "$PROJECT_NAME"

mkdir -p "$PROJECT_NAME/data/raw"
mkdir -p "$PROJECT_NAME/data/processed"
mkdir -p "$PROJECT_NAME/data/external"

mkdir -p "$PROJECT_NAME/notebooks"

mkdir -p "$PROJECT_NAME/src/data"
mkdir -p "$PROJECT_NAME/src/models"
mkdir -p "$PROJECT_NAME/src/training"
mkdir -p "$PROJECT_NAME/src/evaluation"
mkdir -p "$PROJECT_NAME/src/inference"
mkdir -p "$PROJECT_NAME/src/utils"

mkdir -p "$PROJECT_NAME/configs"
mkdir -p "$PROJECT_NAME/experiments"
mkdir -p "$PROJECT_NAME/tests"
mkdir -p "$PROJECT_NAME/scripts"
mkdir -p "$PROJECT_NAME/docs"

mkdir -p "$PROJECT_NAME/artifacts/models"
mkdir -p "$PROJECT_NAME/artifacts/logs"
mkdir -p "$PROJECT_NAME/artifacts/figures"

touch "$PROJECT_NAME/README.md"
touch "$PROJECT_NAME/requirements.txt"
touch "$PROJECT_NAME/.gitignore"

touch "$PROJECT_NAME/src/__init__.py"
touch "$PROJECT_NAME/src/data/__init__.py"
touch "$PROJECT_NAME/src/models/__init__.py"
touch "$PROJECT_NAME/src/training/__init__.py"
touch "$PROJECT_NAME/src/evaluation/__init__.py"
touch "$PROJECT_NAME/src/inference/__init__.py"
touch "$PROJECT_NAME/src/utils/__init__.py"

touch "$PROJECT_NAME/src/models/model.py"
touch "$PROJECT_NAME/src/training/train.py"
touch "$PROJECT_NAME/src/evaluation/evaluate.py"
touch "$PROJECT_NAME/src/inference/predict.py"
touch "$PROJECT_NAME/configs/config.yaml"

cat > "$PROJECT_NAME/.gitignore" << EOF
__pycache__/
*.pyc
.ipynb_checkpoints/
.env
venv/
artifacts/models/*
artifacts/logs/*
EOF

echo "Project structure created in: $PROJECT_NAME"
