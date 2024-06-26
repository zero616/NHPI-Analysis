#### Preamble ####
# Purpose: Tests of simulated_data
# Author:Shipeng Zhang
# Date: 22 January 2024
# Contact: shipeng.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: running 00-simulate_data.R


#### Workspace setup ####

NHPI_data <- read_csv("outputs/data/analysis_data.csv")

NHPI_data$REF_DATE |> min() >= "1999-10-01"

NHPI_data$Consumption |> min() >= 100000

NHPI_data$NHPI |> min() >= 50
