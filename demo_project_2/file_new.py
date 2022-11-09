##Import the libraries 
import numpy as np
import pandas as pd 
import matplotlib.pyplot as plt
import seaborn as sns
import plotly
from pathlib import Path

path_to_file = str(Path.home())+'/OneDrive/Desktop/UN_MigrantStockTotal_2015.xlsx'
print(path_to_file)

# data = pd.read_excel(str(Path.home())+'/OneDrive/Desktop/UN_MigrantStockTotal_2015.xlsx', 'Table 1')