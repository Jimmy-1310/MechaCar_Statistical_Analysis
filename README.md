# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- We can identify that the Intercept, Vehicle length, vehicle weight and ground clearence provide a non-random amount of variance based on their loew P coefficient.

![Coefficients](https://user-images.githubusercontent.com/95836718/173390778-5d89402f-b161-4c16-890b-0e75c10721ee.png)

- We can see that the coefficients some coefficients such as vehicle_weight and spoiler_angle are close to 0, but aside from this 2 we can see that the slopes are either positive or negative.

![slopes](https://user-images.githubusercontent.com/95836718/173391803-ddb5ea64-26f6-4108-bf85-d4d411b8b783.png)

- We can see that the linear model accuratly predicts the mpg because it has a high r value that is 0.71

![R coefficient](https://user-images.githubusercontent.com/95836718/173391102-2e3b1802-14c3-4a2e-872a-4c7e718c33ad.png)

## Summary Statistics on Suspension Coils

We first have the total variance statistics:

![Total _summary](https://user-images.githubusercontent.com/95836718/173394138-f4074e00-3ce8-4de1-94e6-15a72c2041a6.png)

Then a the data frame was grouped by its manufacturing lot and calculated the same information:

![Lot_summary](https://user-images.githubusercontent.com/95836718/173394303-a0366543-4ab2-4924-aec1-fe8f1c433fe3.png)

Looking into the variance we see that the 100 pound variance is met in the total, but if we look in each individual lot, we can identify that the 3rd lot does not comply with this requirements.

## T-Tests on Suspension Coils

We first have the total t.test 

![T_test](https://user-images.githubusercontent.com/95836718/173397837-f5fce13b-7764-4496-b805-563680a66a2e.png)

By looking into the P_value we realize that it is above 0.5 which means that we do not reject the null hypothesis and we can assume that both means are statistically. similar. This can also be said about lots 1 and 2 which have 0.99 and 0.61 as P_values.

![T_test_1](https://user-images.githubusercontent.com/95836718/173398306-56deaa66-ef33-4ca3-b2e3-4eb71de39576.png)

![T_test_2](https://user-images.githubusercontent.com/95836718/173398336-c22bc9b0-3ff6-4c71-abfb-3b883180fa93.png)

Although this changes in Lot 3 when we see a P_value of 0.3. In this case we reject the null hypothesis and can confirm that the means are statistically different.

![T_test_3](https://user-images.githubusercontent.com/95836718/173398459-8b052063-67aa-4dac-b1fa-15b4962747c3.png)

## Study Design: MechaCar vs Competition.

One aspect that turns out to be really important is fuel consumption. Because, at the end of the day it represents the most continuos cost that a driver needs to cover. Based on this, a test to see which cars consumes less fuel might be useful to see if the MechaCar is more efficient that the competitions car. But also, we need to check how their consumption changes over time so we can analyze which car is the better long term investment.

- Metrics: Fuel consumption over time.
- Null hypothesis: There is no difference between the fuel consumption between the cars.
- Statistical Analysis: We can develop a regression and identify the slope of each model. Based on the highest slope we can determine the car that their fuel consumptions gets worse over time.
- Data: We need to identify the average fuel consumption per kilometer of each car in at least 5 years to develop a proper model.
