# dfname

Pipe-friendly functions to name and unname data.frames in R.

``` r
# devtools::install_github("mdlincoln/dfname")
library(dfname)

head(mtcars)
#>                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
#> Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#> Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#> Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#> Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#> Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

name_in_cars <- name_in(mtcars, col_name = "car_name")
head(name_in_cars)
#>    mpg cyl disp  hp drat    wt  qsec vs am gear carb          car_name
#> 1 21.0   6  160 110 3.90 2.620 16.46  0  1    4    4         Mazda RX4
#> 2 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4     Mazda RX4 Wag
#> 3 22.8   4  108  93 3.85 2.320 18.61  1  1    4    1        Datsun 710
#> 4 21.4   6  258 110 3.08 3.215 19.44  1  0    3    1    Hornet 4 Drive
#> 5 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2 Hornet Sportabout
#> 6 18.1   6  225 105 2.76 3.460 20.22  1  0    3    1           Valiant

name_out_cars <- name_out(name_in_cars, col_name = "car_name")
head(name_out_cars)
#>                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
#> Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#> Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#> Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#> Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#> Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

---

[Matthew Lincoln](http://matthewlincoln.net)

