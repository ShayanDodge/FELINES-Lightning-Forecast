# ⚡ Phase 1 — Lightning Geolocation and Peak Current Estimation

## Old Scenario

## 📌 Overview

This folder contains the implementation of the **Old Scenario** used in earlier experiments for:

* Lightning strike geolocation (X and Y prediction)
* Peak current estimation
* Manual cross-validation model training

Unlike the *New Scenario*, this version directly uses a pre-prepared MATLAB dataset file and does **not** require running `Loader.m`.

---

## 📂 Folder Structure

    Old scenario/
    │
    ├── Lightning_Location_Current_Trainer_Manual CV.ipynb
    ├── Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb
    ├── Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb
    ├── case2_trainingset_randomCurrent_v4_5mS.mat
    └── README.md

---

## ⚙️ How to Run

### Step 1 — Ensure Dataset is Present

The notebooks use:

case2_trainingset_randomCurrent_v4_5mS.mat

Make sure this file is in the same directory as the notebooks.

---

### Step 2 — Open Jupyter Notebook

From this folder, run:

```bash
jupyter notebook
```

Then open and run one of the following notebooks:

* `Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb`
* `Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb`
* `Lightning_Location_Current_Trainer_Manual CV.ipynb`

Each notebook:

* Loads the `.mat` dataset
* Performs preprocessing
* Applies manual cross-validation
* Trains neural network models
* Reports evaluation metrics

---

## 📊 Dataset Description

`case2_trainingset_randomCurrent_v4_5mS.mat` contains:

* V1 and V2: Induced voltage signals
* random_I: Peak current values
* random_P: Lightning strike coordinates (X, Y)

This dataset represents the earlier experimental configuration (Old Scenario).

---

## 📈 Model Evaluation

Evaluation metrics used:

* Mean Squared Error (MSE)
* Mean Absolute Error (MAE)
* R² Score
* Localization accuracy (for X and Y models)

---

## 🧰 Required Packages

### Python Version

Python 3.8+ recommended

### Required Libraries

* numpy
* scipy
* pandas
* matplotlib
* scikit-learn
* tensorflow
* joblib
* jupyter

Install using:

```bash
pip install numpy scipy pandas matplotlib scikit-learn tensorflow joblib notebook
```
