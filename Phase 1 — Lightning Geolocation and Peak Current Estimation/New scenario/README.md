# ⚡ Phase 1 — Lightning Geolocation and Peak Current Estimation

## New Scenario

## 📌 Overview

This folder contains the implementation for **Phase 1** of the FELINES Lightning Forecast project, focused on:

* Lightning strike geolocation (X, Y estimation)
* Peak current estimation
* Machine learning model training using manual cross-validation

The workflow combines **MATLAB preprocessing** with **Python-based training (Jupyter notebooks)**.

---

## ⚙️ How to Run (Correct Order)

### Step 1 — Run `Loader.m` in MATLAB (Required)

Before running any Jupyter notebook, you **must first execute `Loader.m`**.

`Loader.m`:

* Loads all dataset parts (`data_part_1.mat` to `data_part_2.mat`, etc.)
* Merges and prepares the full dataset
* Generates `trainingset_new.mat` for Python training

This step prepares the dataset required by the Python notebooks.

---

### About `Spliter.m`

`Spliter.m` was used in earlier experiments for manual dataset splitting.

It is **NOT required** for the current workflow.

---

### Step 2 — Run Jupyter Notebooks

After running `Loader.m`, open Jupyter Notebook and run one of the following:

* `Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb`
* `Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb`
* `Lightning_Location_Current_Trainer_Manual CV.ipynb`

Each notebook:

* Loads `trainingset_new.mat`
* Performs preprocessing
* Trains neural network models
* Reports evaluation metrics

---

## 🧰 Required Packages

### MATLAB

* MATLAB R2020+ recommended

---

### Python (Required Libraries)

Make sure the following packages are installed:

* `numpy`
* `scipy.io`
* `pandas`
* `matplotlib`
* `sklearn.model_selection`
* `sklearn.preprocessing`
* `sklearn.metrics`
* `tensorflow.keras`
* `joblib`

You can install everything using:

```bash
pip install numpy scipy pandas matplotlib scikit-learn tensorflow joblib notebook
```

