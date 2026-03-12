---
layout: single
title: Research
permalink: /research/
author_profile: true
toc: true
toc_label: "Topics"
---

My research centers on one deceptively simple question:
**what does an electrode surface look like — structurally and electrostatically —
when it is submerged in an electrolyte and under applied bias?**

Answering this requires working across several length scales and disciplines.
Below is an overview of the main threads.

---

## 3D Atomic Force Microscopy at Solid–Liquid Interfaces

Three-dimensional AFM (3D-AFM) records force–distance curves at every pixel
of a scan while the tip is immersed in liquid. The result is a volumetric map
of the forces a cantilever tip feels above a surface — including the layering
of solvent molecules and ions that make up the **electrical double layer (EDL)**.

At angstrom resolution these layers appear as oscillatory bands in the force
map. By interpreting them we can extract information about *which* species
(water, cations, anions) occupy *which* layer, and how that changes with
electrode potential.

**Key technique development:** I developed **Charge-Profiling 3D-AFM (CP-3D-AFM)**,
which goes further and extracts the real-space charge-density profile from the
3D-AFM data. This connects directly to the classical double-layer picture while
providing spatial resolution that classical electrochemical measurements cannot.

> *"Real-Space Charge Density Profiling of Electrode–Electrolyte Interfaces with
> Angstrom Depth Resolution"* — ACS Nano, 2022.

---

## Operando Electrochemical Characterization

Imaging under realistic electrochemical conditions — i.e., *while* a bias is
applied and *while* current flows — is non-trivial. The challenge is to maintain
both electrochemical control (reference electrode, counter electrode, stable
electrolyte) and AFM imaging quality simultaneously.

I combine 3D-AFM with in situ **Shell-Isolated Nanoparticle Enhanced Raman
Spectroscopy (SHINERS)** to cross-validate structural assignments from AFM with
vibrational fingerprints from Raman. This dual-probe approach helps disentangle
the contributions of water orientation, ion adsorption, and surface reconstruction
to the observed signals.

> *"Probing the Molecular Structure at Graphite–Water Interfaces by Correlating
> 3D-AFM and SHINERS"* — Nature Communications, 2025.

---

## Solid–Electrolyte Interphase (SEI) Formation

The EDL does more than just sit there — it actively participates in reactions.
One important case is the **solid–electrolyte interphase**: the passivating film
that forms on battery electrodes during the first charge–discharge cycles.

I showed that the structure of the EDL *before* film formation modulates *how*
the SEI grows — which species from solution get incorporated and in what order.
This has direct implications for battery performance and cycle life.

> *"Electrical Double Layers Modulate the Growth of Solid-Electrolyte Interphases"*
> — Chemistry of Materials, 2024.

> *"Nucleation at Solid–Liquid Interfaces is Accompanied by the Reconfiguration of
> Electrical Double Layers"* — PNAS, 2025.

---

## Deep Learning for Scanning Probe Microscopy

AFM images suffer from **tip-convolution artifacts**: the measured topography is a
convolution of the true surface and the finite tip geometry. For atomically rough
surfaces, this smears out fine features.

I trained an **encoder–decoder convolutional neural network** (image-to-image
translation) to learn the inverse mapping from measured to true topography using
simulated data generated from known surface models. The network generalizes to
experimental images and recovers features that are otherwise obscured.

> *"Precise Surface Profiling at the Nanoscale Enabled by Deep Learning"*
> — Nano Letters, 2024.

---

## Integrating Experiment with Theory

Interpreting 3D-AFM quantitatively requires a structural model of the interface.
I work on methods to combine experimental 3D-AFM data with **classical molecular
dynamics (MD)** simulations: using simulation to generate candidate structures and
the experiment to adjudicate between them.

> *"Integrating Experiment with Theory to Determine the Structure of
> Electrode–Electrolyte Interfaces"* — arXiv, 2024.

> *"Toward Quantitative Interpretation of 3D Atomic Force Microscopy at Solid–Liquid
> Interfaces"* — Journal of Physical Chemistry C, 2025.

---

## Techniques & Tools

| Experimental | Computational |
|---|---|
| 3D Atomic Force Microscopy | Molecular dynamics (LAMMPS, GROMACS) |
| Electrochemical impedance spectroscopy | PyTorch / deep learning |
| Cyclic voltammetry | Python (NumPy, SciPy, Matplotlib) |
| SHINERS (Raman spectroscopy) | Image processing & inverse problems |
| Operando cell design | DFT (occasional) |
