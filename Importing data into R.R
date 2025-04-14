# Importing data into R

## Set working directory first. Ensure your files is in the working directory folder

## excel file
library(readxl)
dataset <- read_excel("dataname")

## SPSS file
library(haven)
dataset <- read_sav("dataname")

## SAS file
library(haven)
dataset <- read_sas("dataname")

## Stata
library(haven)
dataset <- read_stata(NULL)

##
library(readr)
csv_data <- read_csv("dataname")
