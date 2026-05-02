# ML / Deep Learning Rapid Prototyping Framework

A practical framework for quickly prototyping neural networks while maintaining
experimental rigor and reproducibility.

---

# 1. Problem Framing

Before writing code, define the ML problem clearly.

## Template

```text
Goal:
Input:
Output:
Loss:
Metrics:
Constraints:
Baseline:
```

## Example

```text
Goal: Time series classification
Input: Sliding windows of power consumption signals
Output: Appliance state classification
Loss: Binary Cross Entropy
Metrics: F1-score, MAE
Constraints: Inference latency < 50ms
Baseline: XGBoost
```

## Key Questions

- Is this classification, regression, generation, or ranking?
- What is the input modality?
  - tabular
  - time series
  - image
  - text
  - multimodal
- What are operational constraints?
  - latency
  - memory
  - interpretability
  - training cost

---

# 2. Establish a Baseline First

Before training neural networks, build a simpler baseline.

Recommended baselines:

- Linear Regression
- Logistic Regression
- Random Forest
- XGBoost

Why:

- validates problem feasibility
- establishes minimum acceptable performance
- prevents overengineering

Rule:

> Never evaluate a neural network without a baseline.

Reference:
- Géron, A. *Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow*.

---

# 3. Start with a Minimal Neural Baseline

Do not start with the most complex architecture.

Build the smallest reasonable model first.

Examples:

## Tabular
- MLP

## Time Series
- 1D CNN
- LSTM

## Images
- Small CNN

## NLP
- Small Transformer or fine-tuning baseline

Goal:

- fast iteration
- stable training
- reproducibility

---

# 4. Experimental Tracking (Mandatory)

Track every experiment.

Minimum tracked items:

- model architecture
- hyperparameters
- random seed
- optimizer
- learning rate
- metrics
- checkpoint path

Recommended tools:

- MLflow
- Weights & Biases
- TensorBoard

References:

- https://mlflow.org
- https://wandb.ai

---

# 5. Structured Iteration Loop

Iterate systematically.

Recommended order:

```text
Baseline
→ Architecture
→ Hyperparameters
→ Regularization
→ Data augmentation / feature engineering
```

Change only one major variable at a time.

Avoid:

- changing architecture + optimizer + loss simultaneously

---

# 6. Architecture Selection Guide

Choose architecture based on data structure.

---

## Tabular Data

Recommended:

- XGBoost baseline
- MLP if justified

Use NN only when needed.

---

## Time Series

### Local patterns
Use:

- 1D CNN
- Temporal CNN

### Sequential dependencies
Use:

- LSTM
- GRU

### Long-range dependencies
Use:

- Transformer

References:

- Hochreiter & Schmidhuber (1997), LSTM
- Vaswani et al. (2017), *Attention Is All You Need*

---

## Images

Recommended:

- CNN
- Transfer learning

Common models:

- ResNet
- EfficientNet

---

## NLP / Text

Recommended:

- Transformer-based architectures

Common strategies:

- fine-tuning pretrained models
- embeddings + classifier head

---

## Multimodal

Recommended high-level pattern:

```text
Encoder A
Encoder B
Fusion
Prediction Head
```

Example:

```text
Text encoder + image encoder → concatenation → classifier
```

---

# 7. Universal Deep Learning Architecture Pattern

Most models can be decomposed into:

```text
Input Encoder
→ Feature Extractor
→ Representation Bottleneck
→ Prediction Head
```

Examples:

## Time series

```text
Input
→ CNN
→ LSTM
→ Dense
→ Sigmoid
```

## Transformer classifier

```text
Embedding
→ Transformer blocks
→ Pooling
→ Dense head
```

---

# 8. Core Architecture Families to Know

Know when to use:

- MLP
- CNN
- RNN
- LSTM
- GRU
- Transformer
- Autoencoder
- Variational Autoencoder (VAE)
- GAN
- U-Net
- ResNet
- Siamese Networks
- Encoder-Decoder

You do not need all implementation details memorized, but you should know:

- use cases
- strengths
- limitations

---

# 9. Recommended Project Workflow

```text
1. Define problem
2. Build baseline
3. Build minimal NN
4. Track experiments
5. Increase complexity only if justified
```

---

# 10. Recommended References

## Books

### Deep Learning
Ian Goodfellow, Yoshua Bengio, Aaron Courville

Publisher:
MIT Press

Link:
https://www.deeplearningbook.org/

---

### Designing Machine Learning Systems
Chip Huyen

Recommended for:

- ML systems
- deployment thinking
- experimentation workflows

---

### Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow
Aurélien Géron

Recommended for:

- practical workflows
- implementation patterns

---

## Papers

### Attention Is All You Need
Vaswani et al., 2017

https://arxiv.org/abs/1706.03762

---

### Long Short-Term Memory
Hochreiter & Schmidhuber, 1997

https://www.bioinf.jku.at/publications/older/2604.pdf

---

## Useful Platforms

- Papers with Code: https://paperswithcode.com
- PyTorch docs: https://pytorch.org/docs/stable/index.html
- scikit-learn docs: https://scikit-learn.org

---

# Final Principle

Treat ML experimentation as software engineering.

Avoid:

- notebook chaos
- undocumented experiments
- random architecture changes

Prefer:

- reproducibility
- small iterations
- disciplined experimentation
