---
title       : Predict your cars MPG
subtitle    : Based on mtcars dataset
author      : Vamshideep
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Purpose

The purpose of this application is to predict your car's MPG.

To predict the MPG, we will need 
1. The number of cylinders in your car 
2. Transmission type of your car like Automatic or Manual

--- .class #id 

## Review of mtcars data set


```r
str(mtcars)
```

```
## 'data.frame':	32 obs. of  11 variables:
##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
##  $ disp: num  160 160 108 258 360 ...
##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
##  $ qsec: num  16.5 17 18.6 19.4 17 ...
##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
##  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

--- .class #id 

## Prediction Model

I have trained the model using Regression Modeling with number of cylinders and transmission type from mtcars data set


```r
fit <- lm(mpg ~ factor(cyl)+factor(am),data=mtcars)
```

--- .class #id 

## Application Link

Please check out the application your self over here

https://vamshideep.shinyapps.io/Projects

<img src="C:/Users/vdeversh/Downloads/CourseEra/DataProducts/Projects/predictMPG/assets/img/Capture.PNG" alt="Predicted Output">

--- .class #id
