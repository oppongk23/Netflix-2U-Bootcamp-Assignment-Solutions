# Promotions

In this skill drill, you will compare a Random Forest classifier model versus a K Nearest Neighbors model using a familiar dataset - employee promotion classification. 

With the Random Forest model you will identify the feature importance and use the sklearns SelectFromModel module to create a subset dataframe to run a new Random Forest model. For the K Nearest Neighbors model you will use a loop to measure performance for all odd values from 1 to 20.  

We saw this dataset in the previous unit assessment. However, the data was label encoded and now you will use dummy encoding to create new varialbes.

## Instructions

1. Read the csv file into a pandas DataFrame called `promotions_df`.

### Preprocess by creating dummy variables and scaling

2. Create `X` and `y` datasets.

3. Dummy encode the `X` data into numerical features.

4. Divide the data into training and testing sets.

5. Create a StandardScaler() model and fit it to the training data.

6. Transform the training and testing data by using the scaler model.

### Use Random Forest to predict promotions

7. Fit a Random Forest Classifier model with 500 trees and print training and testing scores.

8. Calculate feature importance from the fitted random forest model.

9. Visualize the feature importance.

10. Perofrm feature selection using sklearns SelectFromModel module.

11. Use the `.transofrm()` function to transform the scaled `X_train` and `X_test` data to return a new dataframe with only the features from the previous step.

12. Fit a model and print training and testing scores with 500 trees.

### Use K Nearest Neighbors to predict promotions

13. Fit a K Nearest Neighbors model and loop through different k values of 1 to 20 by 2 to find which has the highest accuracy.

14. Plot the results of the train and test scores from the previous loop.

15.Select the `k` that provides the best accuracy where the classifier starts to stablize.

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
