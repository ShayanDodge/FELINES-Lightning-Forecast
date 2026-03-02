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

Rather than relying solely on conventional far-field Lightning
Location Systems (LLS), FELINES introduces a line-integrated
approach that infers lightning characteristics directly from
voltage waveforms induced on overhead power lines.

The framework enables the estimation of:

• Lightning strike coordinates (x, y)  
• Channel-base peak current (kA)

At its core, the system learns the physical-to-data mapping:

    Induced Voltage Waveforms  →  {Strike Location (x, y), Peak Current}

### 📦 REPOSITORY CONTENT

This repository provides the complete implementation of Phase 1,
including datasets, models, and reproducible experimentation
pipelines.

It contains:

• **Simulation Datasets**  
  - *Old Scenario* — A benchmark 10-km single-conductor
    transmission line used to implement and compare the three
    proposed Deep Learning approaches (FFDM, FTDM, MTDM)
    under controlled conditions.  
  - *New Scenario* — A realistic 2-km three-phase medium-voltage
    distribution system including surge arresters and nonlinear
    components. In this configuration, only the best-performing
    model (MTDM) is evaluated, following its superior benchmark results.

• **Deep Learning Architectures**  
  Full implementations of the three regression models:  
  - FFDM — Full Frequency Domain Method  
  - FTDM — Full Time Domain Method  
  - MTDM — Modified Time Domain Method  
  with MTDM selected as the reference model for the
  high-fidelity scenario.

• **Preprocessing and Feature Engineering Pipeline**  
  Signal conditioning, dimensionality reduction,
  and adaptive time-domain compression routines.

• **Training and Evaluation Framework**  
  10-fold cross-validation, performance metrics,
  and robustness analysis utilities ensuring full
  reproducibility of the published results.


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

### 🇮🇹 University of Genoa — DITEN  
*Department of Naval, Electrical, Electronic and Telecommunication Engineering*

| Name | Role | ORCID |
|------|------|-------|
| **Renato Procopio** | Associate Professor | [ORCID](https://orcid.org/XXXX) |
| **Massimo Brignone** | Associate Professor | [ORCID](https://orcid.org/XXXX) |
| **Daniele Mestriner** | Researcher (RTD-A) | [ORCID](https://orcid.org/XXXX) |
| **Martino Nicora** | PhD Candidate | [ORCID](https://orcid.org/XXXX) |

### 🇮🇹 University of Pisa — DESTEC  
*Department of Energy, Systems, Territory and Construction Engineering*

| Name | Role | ORCID |
|------|------|-------|
| **Sami Barmada**  | Full Professor  | [ORCID](https://orcid.org/XXXX) |
| **Shayan Dodge**  | Research Fellow | [ORCID](https://orcid.org/XXXX) |
| **Mauro Tucci**   | Full Professor | [ORCID](https://orcid.org/XXXX) |

### 🇮🇹 University of Campania “Luigi Vanvitelli”  
*Department of Engineering*

| Name | Role | ORCID |
|------|------|-------|
| **Alessandro Formisano** | Full Professor | [ORCID](https://orcid.org/XXXX) |
| **Ehsan Akbari Sekeh Ravani** | Research Fellow | [ORCID](https://orcid.org/XXXX) |
  
--------------------------------------------------------------------
🤝  ACKNOWLEDGMENTS
--------------------------------------------------------------------

Supported by:
Italian Ministry for Education, University, and Research (PRIN 2022)
European Union — NextGenerationEU
