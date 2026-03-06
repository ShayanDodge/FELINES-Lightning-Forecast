# ⚡ Phase 1 — Lightning Geolocation and Peak Current Estimation

This phase focuses on estimating lightning strike location (x, y)
and peak current using machine learning models trained on
electromagnetic signal data.

---

## 📂 Directory Structure

## New scenario/

Improved modeling pipeline with refined data handling and
training strategy.

• Lightning_Location_Current_Trainer_Manual CV.ipynb
→ Joint training for location and peak current estimation
using manual cross-validation.

• Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb
→ Model for predicting x-coordinate using stratified CV.

• Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb
→ Model for predicting y-coordinate using stratified CV.

• Loader.m
→ MATLAB script for loading and preparing dataset parts.

• Spliter.m
→ Data splitting and preprocessing utility.

• data_part_1.mat – data_part_5.mat
→ Partitioned training datasets used for model development.

• README.md
→ Scenario-specific documentation.

## Old scenario/

Baseline implementation used for comparison.

• Lightning_Location_Current_Trainer_Manual CV.ipynb
→ Original joint training model.

• Lightning_Location_x_Stratified_Trainer_Manual CV.ipynb
→ Baseline x-coordinate predictor.

• Lightning_Location_y_Stratified_Trainer_Manual CV.ipynb
→ Baseline y-coordinate predictor.

• case2_trainingset_randomCurrent_v4_5mS.mat
→ Original training dataset.

• README.md
→ Description of baseline setup.

---

## 🎯 Objective

1. Predict lightning strike location (x, y)
2. Estimate peak current magnitude
3. Compare baseline (Old scenario) with improved pipeline (New scenario)
4. Evaluate performance using manual cross-validation

---
