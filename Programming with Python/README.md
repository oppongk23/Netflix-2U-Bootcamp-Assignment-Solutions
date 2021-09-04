# Python Programming Skill Drill

Now that we have spent the day reviewing Python programming structure and syntax, it is time to bring it all together in our skill drill. For today's take home skill drill, you will import a CSV file in Python, process the imported data with loops and conditionals, and then print the resulting variables out to the user. 

The CSV file you will import contains [S&P 500 stock market data retrieved from Yahoo Stock](https://www.kaggle.com/arashnic/time-series-forecasting-with-yahoo-stock-price?select=yahoo_stock.csv). Time-series data, or data that is retrieved over a set interval of time, is commonly used by finance and product development jobs.

## Instructions

1. Import both the `os` and `csv` libraries to your notebook.

2. In your notebook, set a path for importing the CSV file using `os.path.join()`.

3. Open a connection to the comma-delimited CSV file and read in the CSV file using `csv.DictReader()` class.

4. Create a variable to save our output row named `printrow` and greatest daily percent change named `max_pct`.

5. Iterate through each row and calculate the daily percent change. Be sure to round the percent change to the nearest hundredth. 

   * **Note:** Percent change is calculated by the following formula:

      * (`Closing price` - `Opening price` / `Opening Price`) * 100

6. While looping through each row, determine which day had the absolute greatest percent daily change. 

   * **Hint:** Determine if the absolute daily percent change is greater than the previous greatest percent change. If the newly calculated absolute percent change is greater, store the output row to the `printrow` variable and greatest daily percent change to the `max_pct` variable.

   * **Note:** Absolute values ignore positive or negative direction. Check out [this tutorial](https://www.tutorialspoint.com/How-to-calculate-absolute-value-in-Python) on absolute value for more information. 

7. After looping through all rows, print out the date, stock high, stock low, volume and percent change for the day with the greatest absolute percent change.

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
