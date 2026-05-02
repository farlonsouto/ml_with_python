# Machine Learning Learning Project (PyTorch)

A structured learning repository for studying and implementing machine learning and deep learning concepts, with emphasis on reproducibility, experimentation discipline, and software engineering practices.

This project is primarily based on:

**Introduction to Machine Learning with Python**  
Andreas C. Müller & Sarah Guido  
O'Reilly Media

The purpose of this repository is not only to study algorithms, but also to build good habits for ML experimentation, model organization, reproducibility, and project structure.

---

# Goals

This repository exists to:

- study classical machine learning concepts
- implement and experiment with deep learning models using PyTorch
- organize experiments systematically
- practice reproducible ML workflows
- transition from TensorFlow/Keras experience into PyTorch

Topics expected to be covered include:

- supervised learning
- unsupervised learning
- model evaluation
- feature engineering
- neural networks
- hyperparameter tuning
- experiment tracking

---

# Project Structure

```text
project/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── external/
│
├── notebooks/
│
├── src/
│   ├── data/
│   ├── models/
│   ├── training/
│   ├── evaluation/
│   ├── inference/
│   └── utils/
│
├── configs/
├── experiments/
├── artifacts/
│   ├── models/
│   ├── logs/
│   └── figures/
│
├── tests/
├── scripts/
├── docs/
└── README.md
```

---

# Directory Explanation

---

## `data/`

Stores all datasets.

### `data/raw/`
Original untouched datasets.

Purpose:

- preserve original data
- reproducibility
- avoid accidental corruption

Examples:

```text
data/raw/housing.csv
data/raw/mnist/
```

---

## `data/processed/`

Cleaned/transformed datasets ready for training.

Purpose:

- feature engineering outputs
- normalized datasets
- train/validation/test splits

Examples:

```text
data/processed/train.csv
data/processed/test.csv
```

---

## `data/external/`

Third-party or downloaded datasets.

Examples:

- Kaggle downloads
- public benchmark datasets

---

# `notebooks/`

Exploratory notebooks.

Use notebooks only for:

- quick experiments
- visualizations
- exploratory analysis
- hypothesis testing

Avoid:

- production code
- final pipelines

Examples:

```text
01_data_exploration.ipynb
02_first_model.ipynb
```

Run:

```bash
jupyter lab
```

or

```bash
jupyter notebook
```

---

# `src/`

Main source code.

Contains reusable code outside notebooks.

---

## `src/data/`

Dataset loading and preprocessing.

Examples:

- loading CSV files
- preprocessing pipelines
- dataset classes

Typical files:

```text
dataset.py
preprocessing.py
```

Why:

- avoid duplicated preprocessing logic

---

## `src/models/`

Model definitions.

Contains neural network architectures.

Example:

```text
model.py
cnn.py
mlp.py
transformer.py
```

Purpose:

- separate architecture from training logic

Example usage:

```bash
python src/models/model.py
```

Usually imported, not directly executed.

---

## `src/training/`

Training pipelines.

Contains:

- training loops
- optimizer setup
- loss functions
- checkpoint saving

Main file:

```text
train.py
```

Run:

```bash
python src/training/train.py
```

Purpose:

- central training entry point

Responsibilities:

- load config
- load data
- initialize model
- train
- save artifacts

---

## `src/evaluation/`

Evaluation logic.

Contains:

- metrics
- validation scripts
- benchmark comparisons

Main file:

```text
evaluate.py
```

Run:

```bash
python src/evaluation/evaluate.py
```

Purpose:

- isolate evaluation from training

Typical outputs:

- accuracy
- F1
- confusion matrix
- MAE/RMSE

---

## `src/inference/`

Prediction/inference scripts.

Main file:

```text
predict.py
```

Run:

```bash
python src/inference/predict.py
```

Purpose:

- load trained model
- run predictions on new data

---

## `src/utils/`

Utilities.

Examples:

- logging helpers
- seed management
- file utilities
- plotting functions

Purpose:

- reusable helper functions

---

# `configs/`

Configuration files.

Main file:

```text
config.yaml
```

Contains:

- hyperparameters
- paths
- batch size
- learning rate
- epochs
- optimizer choices

Example:

```yaml
batch_size: 32
learning_rate: 0.001
epochs: 20
```

Why:

- experiment reproducibility
- cleaner code

---

# `experiments/`

Experiment metadata.

Stores:

- experiment notes
- parameter comparisons
- manual logs

Examples:

```text
experiment_001.md
experiment_002.md
```

Purpose:

- avoid "what did I run yesterday?" syndrome

---

# `artifacts/`

Generated outputs.

---

## `artifacts/models/`

Saved trained models.

Examples:

```text
model_v1.pt
best_model.pt
```

---

## `artifacts/logs/`

Training logs.

Examples:

```text
training.log
mlflow/
tensorboard/
```

---

## `artifacts/figures/`

Generated figures.

Examples:

- loss curves
- confusion matrices
- plots

---

# `tests/`

Unit tests.

Examples:

- dataset tests
- model shape tests
- utility tests

Run:

```bash
pytest
```

Purpose:

- reliability
- regression prevention

---

# `scripts/`

Helper scripts.

Examples:

- data download
- cleanup
- environment helpers

---

# `docs/`

Additional notes and documentation.

Examples:

- architecture notes
- paper summaries
- study notes

---

# Environment Setup

This project uses Conda.

Create environment:

```bash
conda env create -f environment.txt
```

Activate:

```bash
conda activate pytorch-dl
```

---

# Main Workflow

Recommended workflow:

---

## 1. Explore data

Use notebooks:

```bash
jupyter lab
```

---

## 2. Implement model

Edit:

```text
src/models/model.py
```

---

## 3. Configure experiment

Edit:

```text
configs/config.yaml
```

---

## 4. Train model

Run:

```bash
python src/training/train.py
```

Outputs:

- logs
- checkpoints
- metrics

---

## 5. Evaluate

Run:

```bash
python src/evaluation/evaluate.py
```

Outputs:

- metrics
- plots

---

## 6. Predict

Run:

```bash
python src/inference/predict.py
```

---

# Recommended Experiment Workflow

Always follow:

```text
Problem definition
→ Baseline model
→ Minimal neural network
→ Hyperparameter tuning
→ Architecture iteration
```

Never:

- change many variables simultaneously
- train without baseline
- keep undocumented experiments

---

# Experiment Tracking

Recommended tools:

- MLflow
- TensorBoard
- Weights & Biases

Optional examples:

```bash
mlflow ui
tensorboard --logdir artifacts/logs
```

---

# Coding Style

Recommended formatting:

```bash
black .
isort .
```

---

# Testing

Run tests:

```bash
pytest
```

---

# References

Book:

- Müller, Andreas C.
- Guido, Sarah

**Introduction to Machine Learning with Python**

Additional references:

- Deep Learning — Goodfellow, Bengio, Courville
- Designing Machine Learning Systems — Chip Huyen
- PyTorch Documentation

---

# Learning Philosophy

This repository is intended to reinforce:

- reproducibility
- systematic experimentation
- engineering discipline in ML

Core principle:

> Treat machine learning experimentation as software engineering.

Avoid:

- notebook chaos
- undocumented changes
- random architecture modifications

Prefer:

- small iterations
- explicit baselines
- controlled experiments

---
