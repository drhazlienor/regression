# Importing data into R

## Set working directory first. Ensure your files is in the working directory folder

## excel file
library(readxl)
dataset <- read_excel("dataname")
# or if the data is in subfolder
dataset <- read_excel("folder/dataname")

## SPSS file
library(haven)
dataset <- read_sav("dataname")

## SAS file
library(haven)
dataset <- read_sas("dataname")

## Stata
library(haven)
dataset <- read_stata(NULL)

## csv file
library(readr)
csv_data <- read_csv("dataname")
# or use the base R 
csv_data <- read.csv("dataname")

