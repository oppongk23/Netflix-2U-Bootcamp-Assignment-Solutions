# Wine Quality Clustering

In this skill drill, you will create clusters of a wine quality dataset. The combined dataset includes red and white variants of the Portuguese "Vinho Verde" wine. Only physicochemical (inputs) and sensory (the output) variables are available (e.g. there is no data about grape types, wine brand, wine selling price, etc.). After creating the clusters students will compare the performance of standardized and unstandardized data when performing unsupervised clustering.

## Instructions

1. Read the csv file into a pandas DataFrame called `wine_df`.

### Find the best value for k using an Elbow Curve

2. Setup the for loop.

3. Search for the best k.

4. Plot the Elbow Curve using Plotly.

5. Initialize a `KMeans` model with K based on the Elbow plot from the previous step.

6. Fit the `KMeans` model.

7. Add a new `class` column to the `wine_df`.

8. Visualize the clusters usings `total sulfur dioxide` and any two other features. Try to hypothesize why `total sulfur dioxide` is so important before moving on to the next section.

### Standard Scalar

9. Drop the `class` feature from our `wine_df`.

10. Scale all fields with the StandardScaler() function based on the documentation [here](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.StandardScaler.html). Initialize a `StandardScaler` object.

11. Fit and Transform the `wine_df` with the StandardScaler. Store the results in the variable `scaled_features`.

12. Execute the code to create the new `wine_df_scaled` based on the `scaled_features` from the previous step and the original `wine_df` index and column values.

### Find a new best value for k of scaled data using an Elbow Curve

13. Repeat steps 2 through 8 for the newly scaled dataframe and compare the 3D cluster scatter plot for both dataframes.

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
