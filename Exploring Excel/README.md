# Product Pivot Skill Drill

In the very first skill drill of the course, you will combine all of the Excel concepts covered today into a complete analysis workflow. 

In this skill drill, you will summarize and visualize a dataset containing mock product orders. This dataset contains customer IDs, order information and product and shipping details for consumer electronics.

## Instructions

1. Create a new column that adds together the `Price` and `Shipping Price` columns. Name this newly calculated column `Total`.

2. Make a pivot table using all of the data from the `Order` sheet that satisfies the following requirements:

   * Calculate the total number of orders (count) for each `Customer ID`.

   * Highlight the `Customer ID` that has the largest number of orders. 

   * **Note:** There should be a grand total of 600 orders across all `Customer ID`.

3. Return to the original `Order` sheet and create a new pivot table that satisfies the following requirements:

   * Calculate the total number of orders for each `Product Name` _and_ `Shipping Priority`.

   * Filter the pivot table to only contain count values greater than `40`

   * **Hint:** Both `Product Name` and `Shipping Priority` are being summarized together as two factors. Is there a way to put more than one field in our pivot table rows?

4. Using the filtered pivot table data from the previous step, create a plot that visualizes how many of each shipping priority were ordered for the most popular products.

   * **Hint:** We are trying to visualize a set of measurements (our calculated counts) across different categories (our product names). Which visualization should we use?

### Bonus (Optional)

5. Return to the original `Order` sheet and create one more pivot table that calculates the average order `Total` for each `Customer ID`.

6. Using the original `Order` sheet data, create a *histogram* plot using only the `Total` order values.

   * **Hint:** Look at the documentation on [creating a histogram in Excel](https://support.microsoft.com/en-us/office/create-a-histogram-85680173-064b-4024-b39d-80f17ff2f4e8). Be sure to select your appropriate operating system and Excel version. 
   
   * **Hint:** If you are unfamiliar with histogram plots, check out this great article on histograms from [chartio.com](https://chartio.com/learn/charts/histogram-complete-guide/)

7. Take a few moments to compare the summary results of our previous pivot table to that of the histogram. There is no need to write anything down for this step. We will have plenty of time in this course to document our observations and insights. 

   * Does the average order totals match what we are seeing across the distribution of order totals from the histogram? Why or why not?


---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
