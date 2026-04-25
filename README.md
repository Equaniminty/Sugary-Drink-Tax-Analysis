Sugary Drink Tax Analysis: A Difference-in-Differences Approach

This project evaluates the causal impact of the Philadelphia excise tax on sugar-sweetened beverages using New York City (NYC) as a control group. By utilizing a Difference-in-Differences (DiD) framework, the analysis isolates the treatment effect of the policy on youth consumption rates.

**Technical Methodology**

**Key Findings:** Isolated the percentage-point reduction in soda consumption directly attributable to the tax policy.

Validated the Parallel Trends Assumption by comparing pre-treatment trajectories between the two cities.

**Data Source:** Historical youth consumption averages from the CDC Youth Risk Behavior Surveillance System (YRBSS).

**Data Infrastructure:** Generated a micro-level dataset of 36,000 individual observations in R to simulate survey-level variance.

**Econometric Model:** Implemented a DiD regression to compare pre-tax (2013–2015) and post-tax (2017–2019) trends between Philadelphia and NYC.

**Tools:** R, LaTeX, Excel.

<img width="859" height="567" alt="image" src="https://github.com/user-attachments/assets/7e32dd59-a689-44d5-8b82-301d3746156e" />

**Repository Contents**


Figure Reg 2367 .png: Regression output

Graph 2367 .png: Graph showcasing parallel trends and tax impact

Soda_Tax_Impact_Report.pdf: Paper analyzing the effect of the tax

Table 2367.png: data table from YRBSS 

apha_ajph109_276.bib: bibliography text for referenes page

soda_tax_analysis.R: Rscript for regression

soda_tax_data.csv: data set generated from YRBSS averages

soda_tax_paper.tex: LaTeX file to compile paper
