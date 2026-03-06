# ⚡ Phase 1 — Lightning Geolocation and Peak Current Estimation

This phase focuses on estimating lightning strike location (x, y)
and peak current using machine learning models trained on
electromagnetic signal data.

---

## 📂 Directory Structure

    Phase 1 — Lightning Geolocation and Peak Current Estimation
    │
    ├── New scenario/
    │   │
    │   ├── Lightning_Location_Current_Trainer_Manual CV.ipynb
    │   │   → The model for lightning location (x, y) and peak current
    │   │     estimation using manual cross-validation.
    │   │
    │   ├── Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb
    │   │   → Stratified cross-validation model for x-coordinate prediction.
    │   │
    │   ├── Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb
    │   │   → Stratified cross-validation model for y-coordinate prediction.
    │   │
    │   ├── Loader.m
    │   │   → MATLAB script for loading and assembling dataset partitions.
    │   │
    │   ├── Spliter.m  (legacy / optional)
    │   │   → Data splitting utility used in earlier experiments.
    │   │
    │   ├── data_part_1.mat
    │   ├── data_part_2.mat
    │   ├── data_part_3.mat
    │   ├── data_part_4.mat
    │   ├── data_part_5.mat
    │   │   → Partitioned training datasets used for model development.
    │   │
    │   └── README.md
    │       → Documentation for the improved modeling pipeline.
    │
    └── Old scenario/
        │
        ├── Lightning_Location_Current_Trainer_Manual CV.ipynb
        │   → Baseline model for location and peak current estimation.
        │
        ├── Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb
        │   → Baseline x-coordinate prediction model.
        │
        ├── Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb
        │   → Baseline y-coordinate prediction model.
        │
        ├── case2_trainingset_randomCurrent_v4_5mS.mat
        │   → Original training dataset used in the baseline approach.
        │
        └── README.md
            → Documentation for the baseline implementation.

---

## 🎯 Objective

1. Predict lightning strike location (x, y)
2. Estimate peak current magnitude
3. Compare baseline (Old scenario) with improved pipeline (New scenario)
4. Evaluate performance using manual cross-validation

---
