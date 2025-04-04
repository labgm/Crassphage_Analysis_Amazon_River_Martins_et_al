import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load your data
alpha = pd.read_csv('diversity_data_table.tsv', sep='\t')

custom_colors = ['#D81B60', '#1E88E5', '#FFC107', '#004D40'] 
# Set the theme for the plots
sns.set_theme(style="white")

# Create a figure and two subplots
plt.figure(figsize=(10, 5))  # Adjust figure size

# First subplot
plt.subplot(1, 2, 1)  # 1 row, 2 columns, second subplot
sns.boxplot(x="samples", y="Shannon", data=alpha, palette=custom_colors)  # Assume 'Shannon' is another diversity measure
plt.xlabel("Sample Names")
plt.ylabel("Shannon Diversity Index")
#plt.title("Shannon Index Boxplot")

# Second subplot
plt.subplot(1, 2, 2)  # 1 row, 2 columns, first subplot
sns.boxplot(x="samples", y="Observed", data=alpha, palette=custom_colors)
plt.xlabel("Sample Names")
plt.ylabel("Richness")
#plt.title("Simpson Index Boxplot")


# Adjust the layout to avoid overlapping plots
plt.tight_layout()
plt.savefig('viral_div.png',dpi=300)
