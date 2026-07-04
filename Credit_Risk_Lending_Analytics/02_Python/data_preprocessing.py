"""
Project: Credit Risk & Lending Analytics Dashboard
Author: Rithika Adike
Description:
This script performs data loading, preprocessing, validation, and exploratory
analysis on banking loan data. The processed dataset is used for SQL analysis
and Power BI dashboard development.
"""


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


finance1 = pd.read_csv("../Data/Finance_1.csv")
finance2 = pd.read_excel("../Data/Finance_2.xlsx")

print("=" * 60)
print("Credit Risk & Lending Analytics")
print("=" * 60)

print("\nDatasets loaded successfully!\n")

print("Finance_1 Shape:", finance1.shape)
print("Finance_2 Shape:", finance2.shape)