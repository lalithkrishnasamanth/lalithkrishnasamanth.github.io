---
title: "What does water look like at an electrode surface?"
date: 2025-04-10
categories:
  - research
tags:
  - AFM
  - electrochemistry
  - water
  - graphite
  - SHINERS
excerpt: >-
  Water next to a charged surface is not the same as bulk water.
  Here is what 3D-AFM and Raman spectroscopy reveal about the molecular
  structure at a graphite–water interface.
---

One of the most common questions I get when I describe my work is some version of:
*"But doesn't everyone already know what water looks like?"*

Yes — bulk water is well characterized. We know its structure factor, its hydrogen-bond
network, its dielectric response. But **water next to a charged solid surface is a
different beast**, and it is this interfacial water that controls almost everything
that matters in electrochemistry: how ions adsorb, how reactions proceed, how a
battery's solid–electrolyte interphase forms.

## Why interfacial water is hard to study

The difficulty is geometry. The interface is a few ångströms thick. You cannot isolate
it with a bulk measurement — any signal you collect is dominated by the ~10²³ water
molecules that are *not* at the surface. Classical electrochemical techniques (cyclic
voltammetry, impedance spectroscopy) tell you about integrated charge but reveal
nothing about where the molecules are.

Electron-based techniques like low-energy electron diffraction work beautifully in
vacuum, but the instant you add liquid you lose the electron beam. X-ray methods
(surface X-ray diffraction, grazing-incidence) can work in liquid but require
synchrotron access and provide only ensemble-averaged, laterally-averaged information.

## What 3D-AFM sees

Three-dimensional atomic force microscopy circumvents this by working entirely in
liquid, using a cantilever tip to probe force at every point in a volume above the
surface. As the tip approaches the surface through the interfacial liquid, it passes
through alternating layers of high and low density — solvation shells — and the
force oscillates accordingly.

The result is a **volumetric force map** with sub-ångström depth resolution and
nanometer lateral resolution. By carefully choosing the tip chemistry, ionic strength,
and electrode potential, we can assign peaks in the force map to specific species:
the first water layer, a hydrated cation, a specifically adsorbed anion.

What we see at a graphite surface is striking: even in *pure water* (no added salt),
there is a well-organized first water layer sitting ~2.5 Å above the surface, followed
by a second layer at ~5 Å, and the oscillations die away into bulk-like behavior
within about 1 nm. The layers are not flat — they follow the corrugation of the
graphite lattice. The water molecules in the first layer have their oxygen pointing
toward the surface (consistent with a surface-parallel dipole at near-zero bias).

## Adding Raman to the picture

3D-AFM gives you *position* but tells you little about *orientation* or *bonding*.
For that we turned to
[Shell-Isolated Nanoparticle Enhanced Raman Spectroscopy (SHINERS)](https://www.nature.com/articles/nature09866):
gold nanoparticles coated with a thin silica shell, adsorbed on the graphite surface,
dramatically enhance the Raman signal of nearby molecules without directly contacting them.

The Raman spectra show clear signatures of the OH stretch — and its lineshape
changes with electrode potential in a way that is consistent with a reorientation of
water dipoles. At more negative potentials (where the surface is electron-rich), the
OH peak shifts and broadens, indicating a mixture of orientations driven by the stronger
electric field.

Crucially, the 3D-AFM and SHINERS data were collected on the same sample under the
same electrochemical conditions — and they agree. Where AFM shows a denser first
layer, Raman shows a more ordered OH stretch. This **cross-validation** is important
because each technique has its own artifacts, and agreement between independent probes
is the closest thing to ground truth we have at this length scale.

## A heterogeneous surface

One unexpected finding: graphite is not homogeneous on the nanoscale. The AFM
topography reveals step edges, terraces, and occasional point defects. The solvation
structure is *different* near step edges compared to flat terraces — the layer spacing
tightens, and the first-layer amplitude is larger. This suggests that the local
surface chemistry (dangling bonds, altered electron density near steps) matters even
for something as "simple" as water adsorption.

This heterogeneity is usually invisible to ensemble techniques, which average over
millions of surface sites. It is visible to a scanning probe — and it matters, because
many interesting electrochemical processes (nucleation, corrosion initiation, SEI
seeding) preferentially happen at defects.

## What this tells us about the double layer

The **electrical double layer** is the foundation of electrochemistry. For 150 years
it has been modeled as a mathematical construct — a layer of charge on the electrode,
compensated by ions and oriented dipoles in solution. The Gouy–Chapman–Stern model
describes it beautifully at the continuum level.

What 3D-AFM and SHINERS let us do is **populate that model with actual molecular
positions**. We can now say: the inner Helmholtz plane is at 2.5 Å, occupied by a
monolayer of oxygen-down water; the outer Helmholtz plane is at ~5 Å, where
hydrated cations sit; beyond that, the diffuse layer decays with the Debye length.

This is no longer a cartoon. It is a picture.

---

*The work described here is published in*
[*Nature Communications* (2025)](https://www.nature.com/articles/s41467-026-68667-y).
*A more technical treatment of the 3D-AFM methodology can be found in our*
[*J. Phys. Chem. C* (2025) paper](https://doi.org/10.1021/acs.jpcc.4c07000).
