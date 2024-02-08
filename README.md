---
editor_options: 
  markdown: 
    wrap: 72
---

# FishMIP_2022_3a_Protocol

### <u>Contents</u>

[Goal $$2$$](#goal)

[Experiments & Scenarios $$3$$](#experiments-scenarios)

[Input data $$6$$](#input-data)

[Climate forcing $$6$$](#climate-forcing)

[Fishing effort forcing $$11$$](#fishing-effort-forcing)

[Output data $$14$$](#output-data)

[Additional notes for Regional FishMIP Models
$$16$$](#additional-notes-for-regional-fishmip-models)

[Reporting model results $$16$$](#reporting-model-results)

## 

## Goal {#goal}

The goal of the FishMIP Model Evaluation Protocol is to understand and
reduce uncertainty associated with FishMIP models through model
evaluation under historical climate and fishing effort forcings.

This information will allow FishMIP to better target policy initiatives
such as IPCC and IPBES by providing more robust uncertainty assessment,
as well as advancing the state of FishMIP models for informing
vulnerability, impact, and adaptation plans of coastal sea ecosystems
and fisheries (requested by the FAO). It will also help move towards a
detection and attribution framework.

The focus of studies produced from this simulation round will be a
significant advance in at least two ways:

1.  forcing models with higher spatial resolution of global climate
    models and reconstructed historical fishing effort and

2.  assessment of models against reconstructed historical catches (as
    well as biomass and other fisheries and ecological metrics in
    regions where additional data are available).

This protocol is designed to contribute directly to the ISIMIP 3a
Simulation Round on "Evaluation, Detection and Attribution".

**Revised target date for uploading simulation outputs: Jan 30th, 2023**

Uploading simulations by this date is essential to ensure enough time
for analysis and writing of manuscripts in time for submission to the
Special Issue. If you are able to upload results sooner, that would be
helpful. If you need more time, please let us know as soon as possible.

Progress towards this deadline will be supported and facilitated through
online global and regional modeller workshops to:

-   Ensure correct ESM model inputs and access

-   Ensure fishing drivers work (separate global and regional breakaway
    groups)

-   Tool sharing & troubleshooting

-   Check model outputs/issues

In this document we describe the general experimental and scenario
set-up (Section 3). Further down in Section 4 we include the details of
the specific **input** variables that modellers can use to implement
scenarios. In Section 5 we describe the set of **outputs** to be
created. Finally in Sections 6-7 we provide further **notes** and
**instructions** on how to report and upload model results.

Further information on this protocol can be found here:

[https://protocol.isimip.org/#ISIMIP3a/marine-fishery_regional/marine-fishery_global](https://protect-au.mimecast.com/s/G8B1C81Zm7f6W1w8LSYVHlL?domain=protocol.isimip.org)

**For this simulation round, we are asking you to run and upload 2 core
runs, 2 optional (but preferred) detection and attribution runs, and 2
optional (but helpful) sensitivity test runs, described below.**

## Experiments & Scenarios {#experiments-scenarios}

Each model experiment is a set of model simulations that has a
particular goal (e.g. model evaluation). A scenario is a particular
setting for forcing drivers that describes how each model run should be
set up in the experiment, including both the type of climate forcing
(CF) and the type of direct human forcing (DHF), in particular fishing.

**The model runs that we are requesting for this simulation round are
listed below. Please prioritize the core runs below, and provide the
'optional' if possible.**

##### Table 1: Experiment set-up. Each experiment is specified by the climate forcing (CF) and Direct Human Forcing (DHF).

+----------------+----------------+----------------+----------------+
| Exp eriment    | Scenario       | S cenario sp   | Sens itivity   |
|                | description    | ecifier        | sp ecifier     |
+================+================+================+================+
| **Model evalu  | 1.Climate,     | **ob sclim**   | **de fault**   |
| ation**        | river inputs,  |                |                |
|                | fishing --     | **hi stsoc**   |                |
| 2 core runs    | high res       |                |                |
|                |                |                |                |
|                | -   *          |                |                |
|                | *CF:** Climate |                |                |
|                |                |                |                |
|                |    variability |                |                |
|                |                |                |                |
|                |    constrained |                |                |
|                |     by         |                |                |
|                |     reanalysis |                |                |
|                |                |                |                |
|                |    atmospheric |                |                |
|                |     forcing    |                |                |
|                |                |                |                |
|                |  (GFDL-COBALT2 |                |                |
|                |     forced by  |                |                |
|                |     JRA-55 and |                |                |
|                |     river      |                |                |
|                |     inputs)    |                |                |
|                |     using      |                |                |
|                |     **0.25     |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **DHF:**   |                |                |
|                |     Varying    |                |                |
|                |     direct     |                |                |
|                |     human      |                |                |
|                |     influences |                |                |
|                |     according  |                |                |
|                |     to         |                |                |
|                |     observed   |                |                |
|                |                |                |                |
|                |  reconstructed |                |                |
|                |     fishing    |                |                |
|                |     effort     |                |                |
|                |     time       |                |                |
|                |     series     |                |                |
|                |     (histsoc). |                |                |
+----------------+----------------+----------------+----------------+
|                | 2.Climate,     | **ob sclim**   | **de fault**   |
|                | river inputs,  |                |                |
|                | no fishing --  | **nat**        |                |
|                | high res       |                |                |
|                |                |                |                |
|                | -   **CF:**    |                |                |
|                |     same as    |                |                |
|                |     above      |                |                |
|                |     using      |                |                |
|                |     **0.25     |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **         |                |                |
|                | DHF:** without |                |                |
|                |     any        |                |                |
|                |     fishing    |                |                |
|                |     activity   |                |                |
|                |     (nat)      |                |                |
+----------------+----------------+----------------+----------------+
| **R iverine    | 3.Climate, no  | **ob sclim**   | **1955-ri      |
| influx sensit  | river input    |                | verine-        |
| ivity**        | forcing,       | **hi stsoc**   | input**        |
|                | fishing --     |                |                |
| 2 o ptional    | high res       |                |                |
| (but pre       |                |                |                |
| ferred) runs   | -   *          |                |                |
|                | *CF:** Climate |                |                |
|                |                |                |                |
|                |    variability |                |                |
|                |                |                |                |
|                |    constrained |                |                |
|                |     by         |                |                |
|                |     reanalysis |                |                |
|                |                |                |                |
|                |    atmospheric |                |                |
|                |     forcing    |                |                |
|                |                |                |                |
|                |  (GFDL-COBALT2 |                |                |
|                |     "*control  |                |                |
|                |     run*" only |                |                |
|                |     forced by  |                |                |
|                |     JRA-55)    |                |                |
|                |     using      |                |                |
|                |     **0.25     |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **DHF:**   |                |                |
|                |     Varying    |                |                |
|                |     direct     |                |                |
|                |     human      |                |                |
|                |     influences |                |                |
|                |     according  |                |                |
|                |     to         |                |                |
|                |     observed   |                |                |
|                |                |                |                |
|                |  reconstructed |                |                |
|                |     fishing    |                |                |
|                |     effort     |                |                |
|                |     time       |                |                |
|                |     series     |                |                |
|                |     (histsoc). |                |                |
+----------------+----------------+----------------+----------------+
|                | 4.Climate, no  | **ob sclim**   | **1955-ri      |
|                | river input    |                | verine-        |
|                | forcing, no    | **nat**        | input**        |
|                | fishing --     |                |                |
|                | high res       |                |                |
|                |                |                |                |
|                | -   **CF:**    |                |                |
|                |     same as    |                |                |
|                |     above      |                |                |
|                |     using      |                |                |
|                |     **0.25     |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **         |                |                |
|                | DHF:** without |                |                |
|                |     any        |                |                |
|                |     fishing    |                |                |
|                |     activity   |                |                |
|                |     (nat)      |                |                |
+----------------+----------------+----------------+----------------+
| **Res olution  | 5.Climate,     | **ob sclim**   | **60a rcmin**  |
| sens itivity   | river input    |                |                |
| test**         | forcing,       | **hi stsoc**   |                |
|                | fishing -- low |                |                |
| 2 o ptional    | res            |                |                |
| (but helpful   |                |                |                |
| )runs          | -   *          |                |                |
|                | *CF:** Climate |                |                |
|                |                |                |                |
|                |    variability |                |                |
|                |                |                |                |
|                |    constrained |                |                |
|                |     by         |                |                |
|                |     reanalysis |                |                |
|                |                |                |                |
|                |    atmospheric |                |                |
|                |     forcing    |                |                |
|                |                |                |                |
|                |  (GFDL-COBALT2 |                |                |
|                |     forced by  |                |                |
|                |     JRA-55 and |                |                |
|                |     river      |                |                |
|                |     inputs     |                |                |
|                |                |                |                |
|                |   **obsclim**) |                |                |
|                |     using **1  |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **DHF:**   |                |                |
|                |     Varying    |                |                |
|                |     direct     |                |                |
|                |     human      |                |                |
|                |     influences |                |                |
|                |     according  |                |                |
|                |     to         |                |                |
|                |     observed   |                |                |
|                |                |                |                |
|                |  reconstructed |                |                |
|                |     fishing    |                |                |
|                |     effort     |                |                |
|                |     time       |                |                |
|                |     series     |                |                |
|                |     (histsoc). |                |                |
+----------------+----------------+----------------+----------------+
|                | 6.Climate,     | **ob sclim**   | **60a rcmin**  |
|                | river input    |                |                |
|                | forcing, no    | **nat**        |                |
|                | fishing -- low |                |                |
|                | res            |                |                |
|                |                |                |                |
|                | -   **CF**:    |                |                |
|                |     same as    |                |                |
|                |     above      |                |                |
|                |     using **1  |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **         |                |                |
|                | DHF:** without |                |                |
|                |     any        |                |                |
|                |     fishing    |                |                |
|                |     activity   |                |                |
|                |     (nat)      |                |                |
+----------------+----------------+----------------+----------------+
| **Control sens | 7.Climate, no  | **ob sclim**   | **19 55-rive   |
| itivity test** | river input    |                | rine-in        |
|                | forcing,       | **hi stsoc**   | put+60a        |
| 2 o ptional    | fishing -- low |                | rcmin**        |
| runs           | res            |                |                |
|                |                |                |                |
|                | -   *          |                |                |
|                | *CF:** Climate |                |                |
|                |                |                |                |
|                |    variability |                |                |
|                |                |                |                |
|                |    constrained |                |                |
|                |     by         |                |                |
|                |     reanalysis |                |                |
|                |                |                |                |
|                |    atmospheric |                |                |
|                |     forcing    |                |                |
|                |                |                |                |
|                |  (GFDL-COBALT2 |                |                |
|                |     forced by  |                |                |
|                |     JRA-55 and |                |                |
|                |     river      |                |                |
|                |     inputs     |                |                |
|                |                |                |                |
|                |   **obsclim**) |                |                |
|                |     using **1  |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **DHF:**   |                |                |
|                |     Varying    |                |                |
|                |     direct     |                |                |
|                |     human      |                |                |
|                |     influences |                |                |
|                |     according  |                |                |
|                |     to         |                |                |
|                |     observed   |                |                |
|                |                |                |                |
|                |  reconstructed |                |                |
|                |     fishing    |                |                |
|                |     effort     |                |                |
|                |     time       |                |                |
|                |     series     |                |                |
|                |     (histsoc). |                |                |
+----------------+----------------+----------------+----------------+
|                | 8.Climate, no  | **ob sclim**   | **19 55-rive   |
|                | river input    |                | rine-in        |
|                | forcing, no    | **nat**        | put+60a        |
|                | fishing -- low |                | rcmin**        |
|                | res            |                |                |
|                |                |                |                |
|                | -   **CF**:    |                |                |
|                |     same as    |                |                |
|                |     above      |                |                |
|                |     using **1  |                |                |
|                |     degree     |                |                |
|                |     grid**     |                |                |
|                |                |                |                |
|                | -   **         |                |                |
|                | DHF:** without |                |                |
|                |     any        |                |                |
|                |     fishing    |                |                |
|                |     activity   |                |                |
|                |     (nat)      |                |                |
+----------------+----------------+----------------+----------------+

#### Note on spin-up and transition period (1841-1960), and historical (experiment) period 1961-2010

The focal historical period for this model evaluation experiment spans
1961-2010. To capture the transition from a pre-industrial spin-up to
1961 we also provide input for a gradual increase in fishing and
environmental variability for the pre-industrial period to 1961.

For fishing effort prior to 1961, we provide input for a nominal spin-up
(1841-1860, fishing held constant at 1861 levels) and pre-industrial
transition period (1861-1960, reconstructed fishing effort).

To set-up climate-forcing variables for the entire 1841-1960 period, we
ask modellers to use the "control run" (ctrlclim) monthly output for the
years 1961-1980 (inclusive) on repeat for six cycles. These years have
been selected because they correspond with an entire ENSO cycle and
because no climate trend is detectable prior to 1980 from the GFDL
model.

For models that require longer spin-up prior to 1841, please keep 1841
levels of fishing effort constant and, if needed, repeat the ENSO cycle
(e.g. monthly values for 1961-1980 inclusive from ctrlclim) for as many
times necessary.

For the 'no fishing' runs (nat), the spin-up and pre-industrial
transition should not use any fishing effort.

**We ask modellers to include all outputs from 1841 onwards for use in
our evaluation assessment of model drift. Each output should be saved as
two files, the first covering the spin-up and transition period
(1841-1960) and the second covering the historical (experiment) period
(1961-2010).**

#### Scenario definitions

Throughout the protocol we use 'specifiers' that are shortened names
used to denote a particular scenario, variables, or other parameter in
the filenames of model inputs and outputs. It is crucial that you also
use the same specifiers in your output files.

**Correct formatting and naming of output files are essential for model
intercomparison and analysis.**

Tables 2-4 describe the different scenarios for the model runs described
in Table 1. These specifiers are used in the file names of the
corresponding input files and should also be used for the names of the
output files (see 
[7](https://protocol.isimip.org/#reporting-model-results). Reporting
model results).

##### Table 2: Climate scenario specifiers (climate-scenario).

| **Scenario specifier** | **Description**                                                                                                                     |
|:-----------------------|:------------------------------------------------------------------------------------------------------------------------------------|
| **obsclim**            | Climate with observed atmospheric forcing and river input forcing used for model evaluation and the detection and attribution task. |

##### Table 3: Socio-economic scenario specifiers (soc-scenario).

| **Scenario specifier** | **Description**                                                                |
|:-----------------------|:-------------------------------------------------------------------------------|
| **histsoc**            | Varying direct human influences (i.e. historical estimates of fishing effort). |
| **nat**                | No fishing (naturalized run).                                                  |

##### Table 4: Sensitivity scenario specifiers (sens-scenario).

| **Scenario specifier**             | **Description**                                                                                               |
|:-----------------------------------|:--------------------------------------------------------------------------------------------------------------|
| **default**                        | 0.25 degree resolution climate model inputs.                                                                  |
| **1955-riv erine-input**.          | No temporal (land-use change) dynamics influencing river influx.                                              |
| **60arcmin**                       | 1 degree resolution climate model inputs.                                                                     |
| **19 55-riverine-in put+60arcmin** | No temporal (land-use change) dynamics influencing river influx and 1 degree resolution climate model inputs. |

**Please remember to use these same specifiers in your output files.
More on reporting data can be found at the end of this document.**

## Input data {#input-data}

**For modellers new to FishMIP:** to access all input data you first
need to set up an account with ISIMIP to access the DKRZ server. Please
follow the instructions here:
<https://www.isimip.org/dashboard/accessing-isimip-data-dkrz-server/>

### Climate forcing {#climate-forcing}

##### Table 5: Climate forcing

+---------+---------+---------+---------+---------+---------+---------+
| Ti tle  | S pec   | T ime   | R ean   | B ias a | C       | Pr ior  |
|         | ifi ers | per iod | aly sis | dju stm | omments | ity     |
|         |         |         |         | ent tar |         |         |
|         |         |         |         | get     |         |         |
+:========+:========+:========+:========+:========+:========+:========+
| GF DL-  | **g fdl | 196 1-2 | JR A55  | n one   | River   | 1       |
| MOM 6-C | -mo m6- | 010     |         |         | input   |         |
| OBA LT2 | cob alt |         |         |         | and     |         |
|         | 2_o bsc |         |         |         | JRA-55  |         |
|         | lim** \ |         |         |         | driven  |         |
|         | \_\<    |         |         |         | MOM6-   |         |
|         | var iab |         |         |         | COBALT2 |         |
|         | le\     |         |         |         | rean    |         |
|         | \>\_    |         |         |         | alysis. |         |
|         | **1 5ar |         |         |         | Data on |         |
|         | cmi n** |         |         |         | native  |         |
|         |         |         |         |         | grid    |         |
|         |         |         |         |         | was     |         |
|         |         |         |         |         | r       |         |
|         |         |         |         |         | emapped |         |
|         |         |         |         |         | to a    |         |
|         |         |         |         |         | regular |         |
|         |         |         |         |         | **0.25° |         |
|         |         |         |         |         | grid**. |         |
|         |         |         |         |         | For     |         |
|         |         |         |         |         | further |         |
|         |         |         |         |         | exp     |         |
|         |         |         |         |         | eriment |         |
|         |         |         |         |         | design  |         |
|         |         |         |         |         | details |         |
|         |         |         |         |         | see     |         |
|         |         |         |         |         | \<https |         |
|         |         |         |         |         | :/      |         |
|         |         |         |         |         | /agupub |         |
|         |         |         |         |         | s.onlin |         |
|         |         |         |         |         | elibrar |         |
|         |         |         |         |         | y.wiley |         |
|         |         |         |         |         | .co     |         |
|         |         |         |         |         | m/doi/1 |         |
|         |         |         |         |         | 0.1029/ |         |
|         |         |         |         |         | 2021GL0 |         |
|         |         |         |         |         | 94367\> |         |
+---------+---------+---------+---------+---------+---------+---------+
| GF DL-  | -       | 196 1-2 | JR A55  | n one   | JRA-55  | 2       |
| MOM 6-C |    \*gf | 010     |         |         | only    |         |
| OBA LT2 |     dl- |         |         |         | driven  |         |
|         |     mom |         |         |         | MOM6-   |         |
|         |     6-c |         |         |         | COBALT2 |         |
|         |     oba |         |         |         | rea     |         |
|         |     lt2 |         |         |         | nalysis |         |
|         |         |         |         |         | (       |         |
|         |    \_ct |         |         |         | control |         |
|         |     rlc |         |         |         | run).   |         |
|         |     lim |         |         |         | Data on |         |
|         |         |         |         |         | native  |         |
|         |   \*\*\ |         |         |         | grid    |         |
|         |         |         |         |         | was     |         |
|         |    \_\< |         |         |         | r       |         |
|         |     var |         |         |         | emapped |         |
|         |     iab |         |         |         | to a    |         |
|         |     le\ |         |         |         | regular |         |
|         |         |         |         |         | **0.25° |         |
|         |    \>\_ |         |         |         | grid**. |         |
|         |     **1 |         |         |         | For     |         |
|         |     5ar |         |         |         | further |         |
|         |     cmi |         |         |         | exp     |         |
|         |     n** |         |         |         | eriment |         |
|         |         |         |         |         | design  |         |
|         |         |         |         |         | details |         |
|         |         |         |         |         | see     |         |
|         |         |         |         |         | \<https |         |
|         |         |         |         |         | :/      |         |
|         |         |         |         |         | /agupub |         |
|         |         |         |         |         | s.onlin |         |
|         |         |         |         |         | elibrar |         |
|         |         |         |         |         | y.wiley |         |
|         |         |         |         |         | .co     |         |
|         |         |         |         |         | m/doi/1 |         |
|         |         |         |         |         | 0.1029/ |         |
|         |         |         |         |         | 2021GL0 |         |
|         |         |         |         |         | 94367\> |         |
+---------+---------+---------+---------+---------+---------+---------+
| GF DL-  | **g fdl | 196 1-2 | JR A55  | n one   | River   | 3       |
| MOM 6-C | -mo m6- | 010     |         |         | input   |         |
| OBA LT2 | cob alt |         |         |         | and     |         |
|         | 2_o bsc |         |         |         | JRA-55  |         |
|         | lim** \ |         |         |         | driven  |         |
|         | \_\<    |         |         |         | MOM6-   |         |
|         | var iab |         |         |         | COBALT2 |         |
|         | le\     |         |         |         | rean    |         |
|         | \>\_    |         |         |         | alysis. |         |
|         | **6 0ar |         |         |         | Data on |         |
|         | cmi n** |         |         |         | native  |         |
|         |         |         |         |         | grid    |         |
|         |         |         |         |         | was     |         |
|         |         |         |         |         | r       |         |
|         |         |         |         |         | emapped |         |
|         |         |         |         |         | to a    |         |
|         |         |         |         |         | regular |         |
|         |         |         |         |         | **1°    |         |
|         |         |         |         |         | grid**. |         |
|         |         |         |         |         | For     |         |
|         |         |         |         |         | further |         |
|         |         |         |         |         | exp     |         |
|         |         |         |         |         | eriment |         |
|         |         |         |         |         | design  |         |
|         |         |         |         |         | details |         |
|         |         |         |         |         | see     |         |
|         |         |         |         |         | \<https |         |
|         |         |         |         |         | :/      |         |
|         |         |         |         |         | /agupub |         |
|         |         |         |         |         | s.onlin |         |
|         |         |         |         |         | elibrar |         |
|         |         |         |         |         | y.wiley |         |
|         |         |         |         |         | .co     |         |
|         |         |         |         |         | m/doi/1 |         |
|         |         |         |         |         | 0.1029/ |         |
|         |         |         |         |         | 2021GL0 |         |
|         |         |         |         |         | 94367\> |         |
+---------+---------+---------+---------+---------+---------+---------+
| GF DL-  | -       | 196 1-2 | JR A55  | n one   | JRA-55  | 4       |
| MOM 6-C |    \*gf | 010     |         |         | only    |         |
| OBA LT2 |     dl- |         |         |         | driven  |         |
|         |     mom |         |         |         | MOM6-   |         |
|         |     6-c |         |         |         | COBALT2 |         |
|         |     oba |         |         |         | rea     |         |
|         |     lt2 |         |         |         | nalysis |         |
|         |         |         |         |         | (       |         |
|         |    \_ct |         |         |         | control |         |
|         |     rlc |         |         |         | run).   |         |
|         |     lim |         |         |         | Data on |         |
|         |         |         |         |         | native  |         |
|         |   \*\*\ |         |         |         | grid    |         |
|         |         |         |         |         | was     |         |
|         |    \_\< |         |         |         | r       |         |
|         |     var |         |         |         | emapped |         |
|         |     iab |         |         |         | to a    |         |
|         |     le\ |         |         |         | regular |         |
|         |         |         |         |         | **1°    |         |
|         |    \>\_ |         |         |         | grid**. |         |
|         |     **6 |         |         |         | For     |         |
|         |     0ar |         |         |         | further |         |
|         |     cmi |         |         |         | exp     |         |
|         |     n** |         |         |         | eriment |         |
|         |         |         |         |         | design  |         |
|         |         |         |         |         | details |         |
|         |         |         |         |         | see     |         |
|         |         |         |         |         | \<https |         |
|         |         |         |         |         | :/      |         |
|         |         |         |         |         | /agupub |         |
|         |         |         |         |         | s.onlin |         |
|         |         |         |         |         | elibrar |         |
|         |         |         |         |         | y.wiley |         |
|         |         |         |         |         | .co     |         |
|         |         |         |         |         | m/doi/1 |         |
|         |         |         |         |         | 0.1029/ |         |
|         |         |         |         |         | 2021GL0 |         |
|         |         |         |         |         | 94367\> |         |
+---------+---------+---------+---------+---------+---------+---------+

##### Table 6. Climate forcing variables and units for FishMIP 3a simulations. All variables are available on a 0.25 and 1 degree horizontal grid, monthly and annual resolutions. Note: Some variables are available as specific layers extracted from vertically resolved data. Their variable names have been suffixed with -bot (ocean bottom, e.g. o2-bot), -surf (surface values, e.g. pH-surf) or -vint (vertically integrated, e.g. phyc-vint), respectively, or prefixed with int (vertically integrated, e.g. intpp). Temperature is suffixed with b or s for bottom (e.g. tob) or surface (e.g. tos) layers, respectively.

+-------------+-------------+-------------+-------------+-------------+
| Variable    | Sp ecifier  | Unit        | Res olution | Datasets    |
+=============+=============+=============+=============+=============+
| Mass        | **chl**     | kg m-3      | 0.25° , 1°  | GFDL-MO     |
| Co          |             |             | grid        | M6-COBALT2  |
| ncentration |             |             |             |             |
| of Total    |             |             |             |             |
| Ph          |             |             |             |             |
| ytoplankton |             |             |             |             |
| Expressed   |             |             |             |             |
| as          |             |             |             |             |
| Chlorophyll |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Sea Floor   | **d eptho** | m           | 0.25° , 1°  | GFDL-MO     |
| Depth       |             |             | grid        | M6-COBALT2  |
+-------------+-------------+-------------+-------------+-------------+
| Downward    | **exp       | mol m-2 s-1 | 0.25° , 1°  | GFDL-MO     |
| Flux of     | c-bot**     |             | grid        | M6-COBALT2  |
| Particulate |             |             |             |             |
| Organic     |             |             |             |             |
| Carbon      |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Particulate | **i ntpoc** | kg m-2      | 0.25° , 1°  | GFDL-MO     |
| Organic     |             |             | grid        | M6-COBALT2  |
| Carbon      |             |             |             |             |
| Content     |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Primary     | **intpp**   | mol m-2 s-1 | 0.25° , 1°  | GFDL-MO     |
| Organic     |             |             | grid        | M6-COBALT2  |
| Carbon      |             |             |             |             |
| Production  |             |             |             |             |
| by All      |             |             |             |             |
| Types of    |             |             |             |             |
| Ph          |             |             |             |             |
| ytoplankton |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Net Primary | **intp      | mol m-2 s-1 | 0.25° , 1°  | GFDL-MO     |
| Organic     | pdiat**     |             | grid        | M6-COBALT2  |
| Carbon      |             |             |             |             |
| Production  |             |             |             |             |
| by Diatoms  |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Net Primary | **intp      | mol m-2 s-1 | 0.25° , 1°  | GFDL-MO     |
| Mole        | pdiaz**     |             | grid        | M6-COBALT2  |
| P           |             |             |             |             |
| roductivity |             |             |             |             |
| of Carbon   |             |             |             |             |
| by          |             |             |             |             |
| Diazotrophs |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Net Primary | **intp      | mol m-2 s-1 | 0.25° , 1°  | GFDL-MO     |
| Mole        | ppico**     |             | grid        | M6-COBALT2  |
| P           |             |             |             |             |
| roductivity |             |             |             |             |
| of Carbon   |             |             |             |             |
| by          |             |             |             |             |
| Picoph      |             |             |             |             |
| ytoplankton |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Maximum     | -           | m           | 0.25° , 1°  | GFDL-MO     |
| Ocean Mixed |    \*mlotst |             | grid        | M6-COBALT2  |
| Layer       |             |             |             |             |
| Thickness   |   -0125\*\* |             |             |             |
| Defined by  |             |             |             |             |
| Sigma T     |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Dissolved   | **o2,**     | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Oxygen      |             |             | grid        | M6-COBALT2  |
| Co          | **o 2-bot** | mol m-2     |             |             |
| ncentration |             |             |             |             |
|             | **o2        | mol m-2     |             |             |
|             | -surf**     |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| pH          | **ph**      | 1           | 0.25° , 1°  | GFDL-MO     |
|             |             |             | grid        | M6-COBALT2  |
|             | **p h-bot** | 1           |             |             |
|             |             |             |             |             |
|             | **ph        | 1           |             |             |
|             | -surf**     |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Ph          | -           | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| ytoplankton |  \*phyc\*\* |             | grid        | M6-COBALT2  |
| Carbon      |             | mol m-2     |             |             |
| Co          | **phyc      |             |             |             |
| ncentration | -vint**     |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Mole        | **ph        | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Co          | ydiat**     |             | grid        | M6-COBALT2  |
| ncentration |             | mol m-2     |             |             |
| of Diatoms  | **phydiat   |             |             |             |
| expressed   | -vint**     |             |             |             |
| as Carbon   |             |             |             |             |
| in sea      |             |             |             |             |
| water       |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Mole        | **ph        | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Co          | ydiaz**     |             | grid        | M6-COBALT2  |
| ncentration |             | mol m-2     |             |             |
| of          | **phydiaz   |             |             |             |
| Diazotrophs | -vint**     |             |             |             |
| Expressed   |             |             |             |             |
| as Carbon   |             |             |             |             |
| in Sea      |             |             |             |             |
| Water       |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Mole        | **ph        | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Co          | ypico**     |             | grid        | M6-COBALT2  |
| ncentration |             | mol m-2     |             |             |
| of          | **phypico   |             |             |             |
| Picoph      | -vint**     |             |             |             |
| ytoplankton |             |             |             |             |
| Expressed   |             |             |             |             |
| as Carbon   |             |             |             |             |
| in Sea      |             |             |             |             |
| Water       |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Sea Water   | **so**      | ‰           | 0.25° , 1°  | GFDL-MO     |
| Salinity    |             |             | grid        | M6-COBALT2  |
|             | **s o-bot** | ‰           |             |             |
|             |             |             |             |             |
|             | **so        | \%          |             |             |
|             | -surf**     |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Sea Water   | **t hetao** | °C          | 0.25° , 1°  | GFDL-MO     |
| Potential   |             |             | grid        | M6-COBALT2  |
| Temperature |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Ocean Model | **thk       | m           | 0.25° , 1°  | GFDL-MO     |
| Cell        | cello**     |             | grid        | M6-COBALT2  |
| Thickness   |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Sea Water   | **tob**     | °C          | 0.25° , 1°  | GFDL-MO     |
| Potential   |             |             | grid        | M6-COBALT2  |
| Temperature |             |             |             |             |
| at Sea      |             |             |             |             |
| Floor       |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Sea Surface | **tos**     | °C          | 0.25° , 1°  | GFDL-MO     |
| Temperature |             |             | grid        | M6-COBALT2  |
+-------------+-------------+-------------+-------------+-------------+
| Sea Water X | **uo**      | m s-1       | 0.25° , 1°  | GFDL-MO     |
| Velocity    |             |             | grid        | M6-COBALT2  |
+-------------+-------------+-------------+-------------+-------------+
| Sea Water Y | **vo**      | m s-1       | 0.25° , 1°  | GFDL-MO     |
| Velocity    |             |             | grid        | M6-COBALT2  |
+-------------+-------------+-------------+-------------+-------------+
| Mole        | **zmeso**   | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Co          |             |             | grid        | M6-COBALT2  |
| ncentration | **zmeso     | mol m-2     |             |             |
| of          | -vint**     |             |             |             |
| Meso        |             |             |             |             |
| zooplankton |             |             |             |             |
| expressed   |             |             |             |             |
| as Carbon   |             |             |             |             |
| in sea      |             |             |             |             |
| water       |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Mole        | **z micro** | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Co          |             |             | grid        | M6-COBALT2  |
| ncentration | -           | mol m-2     |             |             |
| of          |    \*zmicro |             |             |             |
| Micro       |             |             |             |             |
| zooplankton |   -vint\*\* |             |             |             |
| expressed   |             |             |             |             |
| as Carbon   |             |             |             |             |
| in sea      |             |             |             |             |
| water       |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Zooplankton | -           | mol m-3     | 0.25° , 1°  | GFDL-MO     |
| Carbon      |  \*zooc\*\* |             | grid        | M6-COBALT2  |
| Co          |             | mol m-2     |             |             |
| ncentration | **zooc      |             |             |             |
|             | -vint**     |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Net         | **r sntds** | W m-2       | 0.25° , 1°  | GFDL-MO     |
| Downward    |             |             | grid        | M6-COBALT2  |
| Shortwave   |             |             |             |             |
| Radiation   |             |             |             |             |
| at Sea      |             |             |             |             |
| Water       |             |             |             |             |
| Surface     |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Sea Ice     | **s iconc** | \%          | 0.25° , 1°  | Remapped    |
| Area        |             |             | grid        | from global |
| Fraction    |             |             |             | JRA-55 r    |
|             |             |             |             | e-analysis  |
|             |             |             |             | ice cover   |
+-------------+-------------+-------------+-------------+-------------+

### Climate forcing file locations

The monthly climate forcing files for obsclim (60arcmin and 15arcmin) of
this simulation protocol can be found on DKRZ here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/climate/ocean/obsclim/global/monthly/historical/GFDL-MOM6-COBALT2/
```

The monthly climate forcing files for climate forcing for spin-up and
control runs (ctrlclim: onedeg and 15arcmin) of this simulation protocol
can be found on DKRZ here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/climate/ocean/ctrlclim/global/monthly/historical/GFDL-MOM6-COBALT2
```

The variables **deptho** and **thkcello** are fixed through time and can
be found in the "fixed/" folder (rather than monthly/).

#### Note on phytoplankton size structure inputs

Production and carbon data for large and small phytoplankton can be
derived from the variables in Table 1 by the following:

large = diatoms + diazotrophs

small = picophytoplankton

The GFDL model treats diazotrophs as large phytoplankton as part of
their food-web processes.

#### Note on regional model spatial extractions

For regional models, only specific grid cells will be needed from the
above global outputs. Please let us know if you require assistance to
extract results (e.g. using bounding boxes, masks or shapefiles). This
functionality is now partially available (bounding box) through the
ISIMIP web-based [data portal](https://data.isimip.org/).

A simple worked example on how to do this for specific regions in R is
provided here: <https://github.com/Fish-MIP/FishMIP_extracting-data>

### Fishing effort forcing {#fishing-effort-forcing}

##### Table 7: Fishing effort forcing files and variables for FishMIP 3a simulations.

+----------------+----------------+---------------+----------------+
| Dataset        | Included       | Time period/  | Re             |
|                | variables      |               | ference/Source |
|                | (short names)  | R esolution   | and Comments   |
+================+================+===============+================+
| File name      | `socio         |               |                |
|                | econom ic/fish |               |                |
|                | ing/histsoc/ef |               |                |
|                | for t_histsoc_ |               |                |
|                | 1841_2010.csv` |               |                |
+----------------+----------------+---------------+----------------+
| Spatially a    | -   ee         | -   1841-2010 | Sources:       |
| ggregated      | z_country_name |               | Rousseau et    |
| fishing effort |     = The      | -   Annual    | al., 2019,     |
|                |     exclusive  |               | PNAS 116 (25)  |
|                |     economic   |               | 12238-12243    |
|                |     zone/high  |               | and Rousseau   |
|                |     seas name  |               | et al. 2022 in |
|                |     in which   |               | prep.          |
|                |     fishing    |               |                |
|                |     effort is  |               |                |
|                |     occurring  |               |                |
|                |                |               |                |
|                | -   LME = A    |               |                |
|                |     number     |               |                |
|                |     code of    |               |                |
|                |     the Large  |               |                |
|                |     Marine     |               |                |
|                |     ecosystem  |               |                |
|                |     in which   |               |                |
|                |     the Effort |               |                |
|                |     is         |               |                |
|                |     occurring  |               |                |
|                |                |               |                |
|                | -   SAUP = A   |               |                |
|                |     number     |               |                |
|                |     code for   |               |                |
|                |     the        |               |                |
|                |     fishing    |               |                |
|                |     country,   |               |                |
|                |     following  |               |                |
|                |     Sea Around |               |                |
|                |     Us         |               |                |
|                |     numbering  |               |                |
|                |                |               |                |
|                | -   Gear = the |               |                |
|                |     fishing    |               |                |
|                |     gear       |               |                |
|                |                |               |                |
|                | -   FGroup =   |               |                |
|                |     the        |               |                |
|                |     targeted   |               |                |
|                |     functional |               |                |
|                |     group      |               |                |
|                |                |               |                |
|                | -   Sector =   |               |                |
|                |     the        |               |                |
|                |     fishing    |               |                |
|                |     sector     |               |                |
|                |     defined by |               |                |
|                |     the law of |               |                |
|                |     the        |               |                |
|                |     country    |               |                |
|                |                |               |                |
|                | -   NomActive  |               |                |
|                |     = Nominal  |               |                |
|                |     fishing    |               |                |
|                |     effort of  |               |                |
|                |     the active |               |                |
|                |     fleet      |               |                |
|                |                |               |                |
|                | -   Phase =    |               |                |
|                |     either     |               |                |
|                |     "spin-up"  |               |                |
|                |     or         |               |                |
|                |                |               |                |
|                |   "experiment" |               |                |
+----------------+----------------+---------------+----------------+
| File name      | `socioe cono   |               |                |
|                | mic/fishing/hi |               |                |
|                | stsoc/ gridded |               |                |
|                | _industrial_ef |               |                |
|                | for t_histsoc_ |               |                |
|                | 1961_2010.csv` |               |                |
+----------------+----------------+---------------+----------------+
| Gridded total  | -   NomActive  | -   0.5       | Rousseau et    |
| i ndustrial    |     = Total    |               | al. 2022 in    |
| fishing effort |     nominal    | -   1841-2010 | prep.          |
|                |     active     |               |                |
|                |     fishing    | -   Annual    |                |
|                |     effort for |               |                |
|                |     the        |               |                |
|                |     industrial |               |                |
|                |     sector     |               |                |
|                |     summed     |               |                |
|                |     across     |               |                |
|                |     functional |               |                |
|                |     groups,    |               |                |
|                |     gear,      |               |                |
|                |     fishing    |               |                |
|                |     country.   |               |                |
+----------------+----------------+---------------+----------------+
| File name      | `socio econ    |               |                |
|                | omic/fishing/h |               |                |
|                | istsoc /gridde |               |                |
|                | d_artisanal_ef |               |                |
|                | for t_histsoc_ |               |                |
|                | 1961_2010.csv` |               |                |
+----------------+----------------+---------------+----------------+
| Gridded total  | -   NomActive  | -   0.5       | Rousseau et    |
| artisanal      |     = Total    |               | al. 2022 in    |
| fishing effort |     nominal    | -   1841-2010 | prep.          |
|                |     active     |               |                |
|                |     fishing    | -   Annual    |                |
|                |     effort for |               |                |
|                |     the        |               |                |
|                |     artisanal  |               |                |
|                |     sector     |               |                |
|                |     summed     |               |                |
|                |     across     |               |                |
|                |     functional |               |                |
|                |     groups,    |               |                |
|                |     gear,      |               |                |
|                |     fishing    |               |                |
|                |     country.   |               |                |
+----------------+----------------+---------------+----------------+

##### Table 8: Metadata for fishing effort variables.

| Va riable Name      | Long name                                                                                     | Unit             | Description/notes                                                                                                                                                                                                                                                                                          |
|:--------------------|:----------------------------------------------------------------------------------------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Year                | (End of the) year when the f ishing effort is occ urring                                      | Number code      |                                                                                                                                                                                                                                                                                                            |
| Sector              | The f ishing sector d efined by the law of the c ountry                                       | Name code        | I = Industrial and A = artisanal, where artisanal include powered and unpowered artisanal fleets                                                                                                                                                                                                           |
| LME                 | Large Marine Eco system Number                                                                | Number code      | A number code of the Large Marine ecosystem in which the Effort is occurring                                                                                                                                                                                                                               |
| eez\_ countr y_name | Exc lusive Ec onomic Zone                                                                     | Name code        | The country-level exclusive economic zone (or high seas) name in which fishing effort is occurring                                                                                                                                                                                                         |
| SAUP                | A number code for the f ishing co untry, fol lowing Sea Around Us num bering                  | Number code      | Ex supranational entities (USSR, Yugoslavia) are disaggregated to their constituent countries. Serbian Fishing Effort included with Montenegro. Crimea included with Ukraine. \|                                                                                                                           |
| Gear                | The f ishing gear                                                                             | Name code        | Gear names                                                                                                                                                                                                                                                                                                 |
| FGroup              | The ta rgeted func tional group                                                               | Name code        | Functional groups are in accordance with those used by the Sea Around Us Project                                                                                                                                                                                                                           |
| Nom Active          | N ominal f ishing effort (i.e., not inc luding the t echnol ogical creep) of the active fleet | Days at sea X kW | NomActive (of the active fleet; i.e., total) = P (engine power of active the fleet; i.e., total) x DAS (average days at sea of one vessel). Average DAS for one vessel \~ 200 DAS/year. NomActive corresponds to the total (reported, IUU, discards) catch. To find NomActive in DAS do (NomActive/P) X NV |
| Phase               | Phase (year r anges) of simu lation run                                                       | Text             | Spin-up, transition, experiment, or validation                                                                                                                                                                                                                                                             |

#### Fishing effort forcing file locations

The monthly fishing effort forcing files for the spin-up and experiments
(Table 1) of this simulation protocol can be found on DKRZ here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/socioeconomic/fishing/histsoc/
```

#### Note on global model fishing effort forcing

For **global models**, the above spatially aggregated fishing effort can
be spatially allocated into 0.25 grid cells. This can be achieved using
different approaches such as a simple gravity model -- e.g. see [Coll et
al. 2020](https://www.frontiersin.org/articles/10.3389/fmars.2020.567877/full)
but details will depend on model structure.

We are developing a simplified worked example for global modellers to
explore and contribute to. This will be made available on github/FishMIP
in due course.

While we recommend using the above spatially aggregated effort, for
**global models** that cannot technically carry out spatial allocation
of effort, gridded total industrial and artisanal nominal active effort
have been provided in the same folder as the file above and are saved as
netcdf files. These can be allocated to functional groups
(e.g. according to relative biomass) depending on model structure.

#### Note on regional model fishing effort forcing

Downscaling of the above fishing effort to match regional model inputs
is likely to be needed. We request that regional modellers work together
in their specific regions to ensure we have clear and common
methodologies.

We are developing a worked example for regional modellers to explore and
contribute to for their region which will be made available on
github/FishMIP in due course.

#### Note on model calibration using fishing catch data and model evaluation requirements

Modellers are permitted to calibrate or tune their models using
historical fisheries catch data (that will also be used for model
evaluation) on the condition that **only years up to and including
2004** are used in model calibration/tuning.

Modelling groups **must** keep **detailed documentation** on how their
model was calibrated (e.g. input forcing, calibration data, time domain,
spatial domain, fish grouping (size, functional types, total),
optimization metric(s), weighting schemes, etc.) to be included in
manuscript methods. Written description of sources of calibration data
and methods used need to be provided with all simulation outputs. A
template will be provided for this documentation in due course.

The fisheries catch data .csv file that can be used for model
calibration is here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/socioeconomic/fishing/histsoc/calibration_catch_histsoc_1850_2004.csv.
```

The fisheries catch data are already aggregated into the functional
groups and spatial zones as the above effort forcing data. The original
reference including links to full database is [Watson & Tidd, 2018,
Marine Policy, 93:
171-177](https://www.sciencedirect.com/science/article/pii/S0308597X18300605).

### **Other static geographic information**:

Large marine ecosystem (LME) masks in four different spatial
resolutions. 0.1°, 0.25°, 0.5° and 1° are available here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/InputData/geo_conditions/fishmip_regions/
```

Each region has its own variable within each file.

We have also provided conversion tables that can be used to look up LME
and SAUP names according to the numeric codes used in the catch and
effort files (e.g. LME 22 -- North Sea). These files (SAUPnames.csv and
LMEnames.csv) are also available here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/InputData/geo_conditions/fishmip_regions/
```

## Output data {#output-data}

All spatially gridded outputs should be created as netcdf files. More
information on how to prepare these files can be found
[here](https://www.isimip.org/protocol/preparing-simulation-files).
Aspatial regional model results may be saved as .csv files.

In the output files, please label the time variable as "days since
1841-1-1 00:00:00" if the output covers the spin-up and transition
period (1841-1960) or "days since 1901-1-1 00:00:00" if the output
covers the experiment period (1961-2010).

##### Table 9: Mandatory output variables for Fisheries and Marine Ecosystem models (global and regional). See notes on additional optional model outputs below. Please use the value 1.e+20 for missing data within your output files. **All biomasses are in wet weight (not g C).**

+-------------+-------------+-----------+-------------+-------------+
| Variable    | Va riable   | Unit      | Reso lution | Comments    |
| long name   | spe cifier  |           |             |             |
+=============+=============+===========+=============+=============+
| **Total     | -           | **g m-2** | -   \*0.25° | **All       |
| Consumer    |   \*tcb\*\* |           |             | consumers   |
| Biomass     |             |           |    grid\*\* | (trophic    |
| Density**   |             |           |             | level \>1,  |
|             |             |           | **mon       | vertebrates |
|             |             |           | thly**      | and         |
|             |             |           |             | inver       |
|             |             |           |             | tebrates)** |
+-------------+-------------+-----------+-------------+-------------+
| Total       | **tcbl      | g m-2     | 0.25° grid  | **Level     |
| Consumer    | og10**      |           |             | dimension   |
| Biomass     |             |           | m onthly    | s:** (time, |
| Density in  |             |           |             | bins, lat,  |
| log10       |             |           |             | lon).       |
| Weight Bins |             |           |             |             |
|             |             |           |             | If the      |
|             |             |           |             | model is    |
|             |             |           |             | size-       |
|             |             |           |             | structured, |
|             |             |           |             | please      |
|             |             |           |             | provide     |
|             |             |           |             | biomass in  |
|             |             |           |             | equal log   |
|             |             |           |             | 10 g weight |
|             |             |           |             | bins        |
|             |             |           |             | (1-10g,     |
|             |             |           |             | 10-100g,    |
|             |             |           |             | 100g-1kg,   |
|             |             |           |             | 1-10kg,     |
|             |             |           |             | 10-100kg,   |
|             |             |           |             | \>100kg)    |
+-------------+-------------+-----------+-------------+-------------+
| Total       | -           | g m-2     | 0.25° grid  | All pelagic |
| Pelagic     |   \*tpb\*\* |           |             | consumers   |
| Biomass     |             |           | m onthly    | (trophic    |
| Density     |             |           |             | level \>1,  |
|             |             |           |             | vertebrates |
|             |             |           |             | and         |
|             |             |           |             | inv         |
|             |             |           |             | ertebrates) |
+-------------+-------------+-----------+-------------+-------------+
| Total       | -           | g m-2     | 0.25° grid  | All         |
| Demersal    |   \*tdb\*\* |           |             | demersal    |
| Biomass     |             |           | m onthly    | consumers   |
| Density     |             |           |             | (trophic    |
|             |             |           |             | level \>1,  |
|             |             |           |             | vertebrates |
|             |             |           |             | and         |
|             |             |           |             | inv         |
|             |             |           |             | ertebrates) |
+-------------+-------------+-----------+-------------+-------------+
| Total Catch | **tc**      | g m-2     | 0.25° grid  | Catch at    |
| Density     |             |           |             | sea (all    |
| (all        |             |           | m onthly    | catch as a  |
| commercial  |             |           |             | result of   |
| functional  |             |           |             | all effort  |
| groups /    |             |           |             | including   |
| size        |             |           |             | reported    |
| classes)    |             |           |             | and IUU)    |
|             |             |           |             | summed for  |
|             |             |           |             | both        |
|             |             |           |             | Industrial  |
|             |             |           |             | and         |
|             |             |           |             | Artisanal   |
|             |             |           |             | sector.     |
+-------------+-------------+-----------+-------------+-------------+
| Total       | -           | g m-2     | 0.25° grid  | Catch at    |
| Industrial  |   \*tic\*\* |           |             | sea (all    |
| Catch       |             |           | m onthly    | catch as a  |
| Density     |             |           |             | result of   |
| (all        |             |           |             | all effort  |
| commercial  |             |           |             | including   |
| functional  |             |           |             | reported    |
| groups /    |             |           |             | and IUU)    |
| size        |             |           |             | for         |
| classes)    |             |           |             | Industrial  |
|             |             |           |             | sector      |
|             |             |           |             | only.       |
+-------------+-------------+-----------+-------------+-------------+
| Total Catch | **tcl       | g m-2     | 0.25° grid  | **Level     |
| Density in  | og10**      |           |             | dimension   |
| log10       |             |           | m onthly    | s:** (time, |
| Weight Bins |             |           |             | bins, lat,  |
| across both |             |           |             | lon).       |
| sectors     |             |           |             |             |
|             |             |           |             | If the      |
|             |             |           |             | model is    |
|             |             |           |             | size-       |
|             |             |           |             | structured, |
|             |             |           |             | please      |
|             |             |           |             | provide     |
|             |             |           |             | biomass in  |
|             |             |           |             | equal log   |
|             |             |           |             | 10 g weight |
|             |             |           |             | bins        |
|             |             |           |             | (1-10g,     |
|             |             |           |             | 10-100g,    |
|             |             |           |             | 100g-1kg,   |
|             |             |           |             | 1-10kg,     |
|             |             |           |             | 10-100kg,   |
|             |             |           |             | \>100kg)    |
+-------------+-------------+-----------+-------------+-------------+
| Total       | -           | g m-2     | 0.25° grid  | Catch at    |
| Pelagic     |   \*tpc\*\* |           |             | sea of all  |
| Density     |             |           | m onthly    | pelagic     |
| Catch       |             |           |             | consumers   |
| across      |             |           |             | (trophic    |
| Artisanal   |             |           |             | level \>1,  |
| and         |             |           |             | vertebrates |
| Industrial  |             |           |             | and         |
| sectors     |             |           |             | inv         |
|             |             |           |             | ertebrates) |
+-------------+-------------+-----------+-------------+-------------+
| Total       | -           | g m-2     | 0.25° grid  | Catch at    |
| Demersal    |   \*tdc\*\* |           |             | sea of all  |
| Catch       |             |           | m onthly    | demersal    |
| Density     |             |           |             | consumers   |
| across      |             |           |             | (trophic    |
| Artisanal   |             |           |             | level \>1,  |
| and         |             |           |             | vertebrates |
| Industrial  |             |           |             | and         |
| sectors     |             |           |             | inv         |
|             |             |           |             | ertebrates) |
+-------------+-------------+-----------+-------------+-------------+
| **Optional  |             |           |             |             |
| output from |             |           |             |             |
| global and  |             |           |             |             |
| regional    |             |           |             |             |
| models. All |             |           |             |             |
| biomasses   |             |           |             |             |
| are in wet  |             |           |             |             |
| weight, not |             |           |             |             |
| g C.**      |             |           |             |             |
+-------------+-------------+-----------+-------------+-------------+
| Biomass     | **bp 30cm** | g m-2     | 0.25° grid  | If a        |
| Density of  |             |           |             | pelagic     |
| Small       |             |           | m onthly    | species and |
| Pelagics    |             |           |             | L infinity  |
| \<30cm      |             |           |             | is \<30 cm, |
|             |             |           |             | include in  |
|             |             |           |             | this        |
|             |             |           |             | variable    |
+-------------+-------------+-----------+-------------+-------------+
| Biomass     | **bp30to    | g m-2     | 0.25° grid  | If a        |
| Density of  | 90cm**      |           |             | pelagic     |
| Medium      |             |           | m onthly    | species and |
| Pelagics    |             |           |             | L infinity  |
| \>=30cm and |             |           |             | is \>=30 cm |
| \<90cm      |             |           |             | and \<90cm, |
|             |             |           |             | include in  |
|             |             |           |             | this        |
|             |             |           |             | variable    |
+-------------+-------------+-----------+-------------+-------------+
| Biomass     | **bp 90cm** | g m-2     | 0.25° grid  | If a        |
| Density of  |             |           |             | pelagic     |
| Large       |             |           | m onthly    | species and |
| Pelagics    |             |           |             | L infinity  |
| \>=90cm     |             |           |             | is \>=90cm, |
|             |             |           |             | include in  |
|             |             |           |             | this        |
|             |             |           |             | variable    |
+-------------+-------------+-----------+-------------+-------------+
| Biomass     | **bd 30cm** | g m-2     | 0.25° grid  | If a        |
| Density of  |             |           |             | demersal    |
| Small       |             |           | m onthly    | species and |
| Demersals   |             |           |             | L infinity  |
| \<30cm      |             |           |             | is \<30 cm, |
|             |             |           |             | include in  |
|             |             |           |             | this        |
|             |             |           |             | variable    |
+-------------+-------------+-----------+-------------+-------------+
| Biomass     | **bd30to    | g m-2     | 0.25° grid  | If a        |
| Density of  | 90cm**      |           |             | demersal    |
| Medium      |             |           | m onthly    | species and |
| Demersals   |             |           |             | L infinity  |
| \>=30cm and |             |           |             | is \>=30 cm |
| \<90cm      |             |           |             | and \<90cm, |
|             |             |           |             | include in  |
|             |             |           |             | this        |
|             |             |           |             | variable    |
+-------------+-------------+-----------+-------------+-------------+
| Biomass     | **bd 90cm** | g m-2     | 0.25° grid  | If a        |
| Density of  |             |           |             | demersal    |
| Large       |             |           | m onthly    | species and |
| Demersals   |             |           |             | L infinity  |
| \>=90cm     |             |           |             | is \>=90cm, |
|             |             |           |             | include in  |
|             |             |           |             | this        |
|             |             |           |             | variable    |
+-------------+-------------+-----------+-------------+-------------+
| Catch       | **cp 30cm** | g m-2     | 0.25° grid  | Catch at    |
| Density of  |             |           |             | sea of      |
| Small       |             |           | m onthly    | pelagic     |
| Pelagics    |             |           |             | species     |
| \<30cm      |             |           |             | with L      |
|             |             |           |             | infinity    |
|             |             |           |             | \<30 cm     |
+-------------+-------------+-----------+-------------+-------------+
| Catch       | **cp30to    | g m-2     | 0.25° grid  | Catch at    |
| Density of  | 90cm**      |           |             | sea of      |
| Medium      |             |           | m onthly    | pelagic     |
| Pelagics    |             |           |             | species     |
| \>=30cm and |             |           |             | with L      |
| \<90cm      |             |           |             | infinity    |
|             |             |           |             | \>=30 cm    |
|             |             |           |             | and \<90 cm |
+-------------+-------------+-----------+-------------+-------------+
| Catch       | **cp 90cm** | g m-2     | 0.25° grid  | Catch at    |
| Density of  |             |           |             | sea of      |
| Large       |             |           | m onthly    | pelagic     |
| Pelagics    |             |           |             | species     |
| \>=90cm     |             |           |             | with L      |
|             |             |           |             | infinity    |
|             |             |           |             | \>=90 cm    |
+-------------+-------------+-----------+-------------+-------------+
| Catch       | **cd 30cm** | g m-2     | 0.25° grid  | Catch at    |
| Density of  |             |           |             | sea of      |
| Small       |             |           | m onthly    | demersal    |
| Demersals   |             |           |             | species     |
| \<30cm      |             |           |             | with L      |
|             |             |           |             | infinity    |
|             |             |           |             | \<30 cm     |
+-------------+-------------+-----------+-------------+-------------+
| Catch       | **cd30to    | g m-2     | 0.25° grid  | Catch at    |
| Density of  | 90cm**      |           |             | sea of      |
| Medium      |             |           | m onthly    | demersal    |
| Demersals   |             |           |             | species     |
| \>=30cm and |             |           |             | with L      |
| \<90cm      |             |           |             | infinity    |
|             |             |           |             | \>=30 cm    |
|             |             |           |             | and \<90 cm |
+-------------+-------------+-----------+-------------+-------------+
| Catch       | **cd 90cm** | g m-2     | 0.25° grid  | Catch at    |
| Density of  |             |           |             | sea of      |
| Large       |             |           | m onthly    | demersal    |
| Demersals   |             |           |             | species     |
| \>=90cm     |             |           |             | with L      |
|             |             |           |             | infinity    |
|             |             |           |             | \>=90 cm    |
+-------------+-------------+-----------+-------------+-------------+

## Additional notes for Regional FishMIP Models {#additional-notes-for-regional-fishmip-models}

More specific protocols for each regional model type will be developed
through our monthly online regional modeller sessions. Please contact
regional FishMIP coordinators for more information.

As a first step, regional modellers will need to provide shapefiles for
their respective model domains for us to help with spatial extraction of
the above global climate and fishing effort forcing inputs.

Region-specific climate forcing variables will be made available here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/InputData/climate/ocean/<obsclim> or <ctrlclim>/regional/
```

A .csv file with fishing effort extracted for regional model ecosystems
is also available in the same folder as the global fishing effort data
(`../fishing/histsoc`), for regional models that have provided
shapefiles.

Regional modellers may wish to make their raw unaggregated output
available for more detailed analyses, including for example, a wider
range of functional groups/size classes/species and ecosystem
indicators. Please discuss this with FishMIP regional coordinators
before uploading files.

## Reporting model results {#reporting-model-results}

The specification on how to submit the data, as well as further
information and instructions are given on the ISIMIP website at:

<https://www.isimip.org/protocol/preparing-simulation-files>

**It is important that you comply precisely with the formatting
specified there**, to facilitate the analysis of your simulation results
in the ISIMIP framework. Incorrect formatting can seriously delay
analyses. The ISIMIP Team will be glad to assist with the preparation of
these files if necessary.

File names consist of a series of identifier, separated by underscores.
Things to note:

-   Report one variable per file.

-   In filenames, use lowercase letters only.

-   Use underscore (\_) to separate identifiers.

-   Variable names consist of a single word without hyphens or
    underscores.

-   Use hyphens (-) to separate strings within an identifier, e.g. in a
    model name.

-   Data model is NETCDF4_CLASSIC with minimum compression level of 5.

-   NetCDF file extension is .nc.

-   The relative time axis' reference date is days since 1841-1-1
    00:00:00 if the output covers the spin-up and transition period
    (1841-1960) or days since 1901-1-1 00:00:00 if the output covers the
    experiment period (1961-2010). We have provided .csv files to be
    used for the time dimension in creating NetCDF files based on the
    365 days calendar. Please see time_axix_spinup.csv and
    time_axis_experiment.csv in this repository. The script time_axis.r
    was used to create these files.

### Name pattern of output files:

Please name the files in the Fisheries and Marine Ecosystems sector
according to the following pattern:

**Global models**

``` linux
<model>_<climate-forcing>_<bias-adjustment>_<climate-scenario>_<soc-scenario>_<sens-scenario>_<variable>_<global>_<time-step>_<start-year>_<end-year>.nc
```

Example:

``` linux
boats_gfdl-mom6_cobalt2_none_obsclim_histsoc_default_tcb_global_monthly_1961_2010.nc
```

**Regional models**

``` linux
<model>_<climate-forcing>_<bias-adjustment>_<climate-scenario>_<soc-scenario>_<sens-scenario>_<variable>_<region>_<time-step>_<start-year>_<end-year>.nc
```

Example:

``` linux
osmose_gfdl-mom6_cobalt2_none_obsclim_histsoc_default_tcb_benguela_monthly_1961_2010.nc
```

Please see the climate-scenario, soc-scenario, sens-scenario and
variable identifiers given in the tables of this document.

### Path to outut files on DKRZ:

**Global models**

The output files covering the spin-up period (1841-1960) can be saved on
DKRZ here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_global/model_name/temp2
```

The output files covering the experiment period (1961-2010) can be saved
on DKRZ here

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_global/model_name/temp
```

**Regional models**

The output files covering the spin-up period (1841-1960) can be saved on
DKRZ here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_regional/model_name/temp2
```

The output files covering the experiment period (1961-2010) can be saved
on DKRZ here

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_regional/model_name/temp
```

Please contact FishMIP coordinators or ISIMIP data managers directly
([isimip-data\@pik‐potsdam.de](mailto:isimip-data@pik%E2%80%90potsdam.de))
if you have any questions or clarifications before submitting files or
if you do not find your model's path on DKRZ as described above.

**Please contact FishMIP coordinators** if you would like to participate
in this simulation round but have encountered issues with any aspect of
the protocol.

(For fishing): please provide all assumptions about catchability,
technological creep, and model calibration.

Please provide any conversion factors that you have used to convert
units.

### **Thank you for your contributions to FishMIP and ISI-MIP!**

FishMIP is entirely community-driven, and we appreciate the effort of
all involved.
