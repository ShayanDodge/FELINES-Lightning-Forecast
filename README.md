# FELINES — Forecast of the Effects of Lightning IN Electrical Systems

[![Project Website](https://img.shields.io/badge/website-FELINES-blue)](https://felines.prin.unige.it/)
[![License](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)


FELINES is a research project aiming to **design a preventive protection concept** for electrical infrastructures by sensing electromagnetic fields generated during the **early phases of lightning inception**—in particular the **Preliminary Breakdown Pulses (PBP)**—and using them to **predict whether the upcoming Return Stroke (RS) could be dangerous**, enabling timely disconnection of vulnerable equipment.  
The work combines **PBP/RS modeling**, **electromagnetic field & coupling simulations**, and **machine learning** for early classification (“dangerous RS” vs “not dangerous”).  
More context is available on the project website and public deliverables ([links below](https://felines.prin.unige.it/)).

---
## 📦 What a Repository Includes

### 📍 Phase 1 — Lightning Geolocation and Peak Current Estimation  
- Developing deep learning models trained on electromagnetic transient simulations
- Reconstructing event characteristics from induced overvoltage waveforms  
- Estimating lightning strike location  
- Regressing channel-base peak current  

### ⚡ Phase 2 — Early-Stage Classification and Protection  
- This phase provides the physical and data-driven foundation for risk assessment and protection strategies
- Early warning and protection triggering logic  
- Machine learning–based classification of dangerous vs non-dangerous events  
- PBP and RS electromagnetic modeling  
- Field-to-line coupling simulations  

> ⚠️ This repository currently contains the implementation of **Phase 1 (Geolocation and Peak Current Estimation)**.  
> Phase 2 (Early Classification and Protection Strategy) will be integrated in future releases.
---

## Scope of This Repository

This repository currently implements **Phase 1: Lightning Geolocation and Peak Current Estimation**, including:

- Synthetic dataset generation via electromagnetic transient simulations  
- Deep learning architectures for regression tasks  
- Model training and evaluation workflows  

Future releases will progressively integrate Phase 2 components related to early-stage classification and protection strategies.

More information about the project is available at:  
