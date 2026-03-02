# FELINES — Forecast of the Effects of Lightning IN Electrical Systems

[![Project Website](https://img.shields.io/badge/website-FELINES-blue)](https://felines.prin.unige.it/)
[![License](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)


FELINES is a research project aiming to **design a preventive protection concept** for electrical infrastructures by sensing electromagnetic fields generated during the **early phases of lightning inception**—in particular the **Preliminary Breakdown Pulses (PBP)**—and using them to **predict whether the upcoming Return Stroke (RS) could be dangerous**, enabling timely disconnection of vulnerable equipment.  
The work combines **PBP/RS modeling**, **electromagnetic field & coupling simulations**, and **machine learning** for early classification (“dangerous RS” vs “not dangerous”).  
More context is available on the project website and public deliverables ([links below](https://felines.prin.unige.it/)).

---
# 📦 What a Repository Includes

## 📍 Phase 1 — Lightning Geolocation and Peak Current Estimation  
- Developing deep learning models trained on electromagnetic signals
- Estimating lightning strike location  
- Regressing channel-based peak current  

## ⚡ Phase 2 — Early-Stage Classification and Protection  
- This phase provides the physical and data-driven foundation for risk assessment and protection strategies
- Machine learning–based classification of dangerous vs non-dangerous events  
- PBP and RS electromagnetic modeling  
- Field-to-line coupling simulations  

>  ⚠️ This repository currently contains the implementation of **Phase 1 (Geolocation and Peak Current Estimation)**. Phase 2 (Early Classification and Protection Strategy) will be integrated in future releases.
---
## 📌 Phase 1 — FIRST CASE STUDY

This release corresponds to **Phase 1 of the FELINES project**, 
dedicated to lightning geolocation and peak current estimation 
from lightning-induced voltages on overhead lines.

The scientific foundations of this work are presented in:

> **Dodge, S.; Nicora, M.; Barmada, S.; Brignone, M.; Procopio, R.; Tucci, M.**  
> *“A deep learning based lightning location system.”*  
> Electric Power Systems Research, 2025, https://doi.org/10.1016/j.epsr.2025.111437.  
> [Read the article](https://www.sciencedirect.com/science/article/pii/S0378779625000306)

📌 This repository implements, reproduces, and extends the methodology
described in the above peer-reviewed publication. If you use this code, dataset, or results in your research, please cite the original article.


### 🌩  PROJECT VISION


FELINES develops an intelligent framework for lightning-aware
electrical infrastructure protection.

Instead of relying on conventional far-field Lightning Location
Systems (LLS), this approach estimates lightning characteristics
directly from voltage waveforms induced on power lines.

The system learns the mapping:

    Induced Voltages  →  {Strike Location (x,y), Peak Current}

Scientific reference:
Dodge et al., “A deep learning based lightning location system”
Electric Power Systems Research, 2025.


### 🎯  OBJECTIVE

Estimate in real time:

  • Lightning strike coordinates (x, y)
  • Channel-base peak current (kA)

Using:

  • Physics-based lightning modeling
  • Electromagnetic field simulation
  • Field-to-line coupling analysis
  • Deep Learning regression models


### 📦 REPOSITORY CONTENT


This repository contains:

  • Simulation datasets (Old + New scenarios)
  • Preprocessing pipeline
  • Three Deep Learning architectures
  • Training and evaluation scripts
  • Robustness testing utilities


This release includes:

  • The Old Scenario (Benchmark Case Study)
    A simplified 10-km single-conductor transmission line
    used to implement and compare the three proposed
    Deep Learning approaches (FFDM, FTDM, MTDM)
    under controlled simulation conditions.

  • The New Scenario (Realistic Distribution Line Case)
    A 2-km three-phase medium-voltage distribution system
    including surge arresters and nonlinear components.
    In this realistic configuration, only the best-performing
    method (MTDM) is evaluated, following its superior
    performance in the benchmark study.

  • Deep Learning Architectures
    Full implementation of the three regression models:
      - FFDM (Full Frequency Domain Method)
      - FTDM (Full Time Domain Method)
      - MTDM (Modified Time Domain Method)
    with MTDM selected as the final model for the
    high-fidelity scenario.

  • Reproducible Training and Evaluation Scripts
    Complete preprocessing, feature engineering,
    10-fold cross-validation, performance metrics,
    and robustness analysis pipelines to ensure
    full reproducibility of the published results.


### 📊  DATASETS


1) OLD SCENARIO — Benchmark Case

  • 10 km single-conductor transmission line
  • 2 voltage sensors
  • 2000 simulated lightning events
  • 2000 samples per waveform
  • Soil conductivity: 5 mS/m


2) NEW SCENARIO — Realistic Distribution Line

  • 2 km three-phase MV distribution line
  • Surge arresters every 250 m
  • 2 voltage sensors
  • 2000 simulated lightning events
  • 3701 samples per waveform
  • Soil conductivity: 1 mS/m

Direct strikes are filtered using the Electro-Geometric Model (EGM).


### 🧠  IMPLEMENTED METHODS


FFDM  — Full Frequency Domain Method
FTDM  — Full Time Domain Method
MTDM  — Modified Time Domain Method (Best Performing)

MTDM highlights:
  • Leading-zero removal
  • Adaptive time-domain compression
  • 3 hidden layers (74 neurons each)
  • 10-fold cross-validation

### 📈  PERFORMANCE (NEW SCENARIO - MTDM)


  Average Location Error:        67.24 m
  Peak Current MAE:              1.40 kA
  ~70% of samples < 50 m error

Robustness:
  ✔ Stable under AWGN noise (SNR down to 25 dB)
  ✔ Low sensitivity to soil conductivity changes


----
### 🔮  NEXT STEPS — PHASE 2


  • Preliminary Breakdown Pulse (PBP) analysis
  • Early classification of dangerous return strokes
  • Protection-triggering strategy design
  • Experimental validation on real networks

---

## 👥 Project Team

FELINES is developed by a multidisciplinary research team from
University of Genoa (DITEN), University of Pisa (DESTEC),
and University of Campania “Luigi Vanvitelli”.

| Name | Role | Institution | ORCID / Profile |
|------|------|------------|------------------|
| **Renato Procopio** | Associate Professor | University of Genoa (DITEN) | [ORCID](https://orcid.org/XXXX) |
| **Massimo Brignone** | Associate Professor | University of Genoa (DITEN) | [ORCID](https://orcid.org/XXXX) |
| **Daniele Mestriner** | Researcher (RTD-A) | University of Genoa (DITEN) | [ORCID](https://orcid.org/XXXX) |
| **Martino Nicora** | PhD Candidate | University of Genoa (DITEN) | [ORCID](https://orcid.org/XXXX) |
| **Sami Barmada** | Full Professor | University of Pisa (DESTEC) | [ORCID](https://orcid.org/XXXX) |
| **Shayan Dodge** | Research Fellow | University of Pisa (DESTEC) | [ORCID](https://orcid.org/XXXX) |
| **Mauro Tucci** | Full Professor | University of Pisa (DESTEC) | [ORCID](https://orcid.org/XXXX) |
| **Alessandro Formisano** | Full Professor | Univ. Campania “L. Vanvitelli” | [ORCID](https://orcid.org/XXXX) |
| **Ehsan Akbari Sekeh Ravani** | Research Fellow | Univ. Campania “L. Vanvitelli” | [ORCID](https://orcid.org/XXXX) |
  
--------------------------------------------------------------------
🤝  ACKNOWLEDGMENTS
--------------------------------------------------------------------

Supported by:
Italian Ministry for Education, University, and Research (PRIN 2022)
European Union — NextGenerationEU
