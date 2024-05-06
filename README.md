**Aditi Patil**


**The Sparks Foundation Data Science Internship**


**Task1:Prediction using supervised ML**


**GRIPMAY2024**


**Simple Linear Regression**


        In this regression task we will predict the precentage of marks that a student is expected to score based on the number of hours they studied.
      <P> This is a simple linear regression task as it involves only two variables that are hours studied and score or marks.</P> 
      
R version 4.2.0 (2022-04-22 ucrt) -- "Vigorous Calisthenics"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

Loading required package: Matrix
Error: package or namespace load failed for ‘Matrix’ in stopifnot(length(class2) == 1L):
 reached elapsed time limit
> #Grip Task 1 Prediction using supervised ml with R
> #Aditi Patil 
> #importing data
> data=read.csv("C://Users//91878//Documents//Book1data.csv",header = TRUE)
> data
   Hours Scores
1    2.5     21
2    5.1     47
3    3.2     27
4    8.5     75
5    3.5     30
6    1.5     20
7    9.2     88
8    5.5     60
9    8.3     81
10   2.7     25
11   7.7     85
12   5.9     62
13   4.5     41
14   3.3     42
15   1.1     17
16   8.9     95
17   2.5     30
18   1.9     24
19   6.1     67
20   7.4     69
21   2.7     30
22   4.8     54
23   3.8     35
24   6.9     76
25   7.8     86
>
> 
> #summary of data
> summary(data)
     Hours           Scores     
 Min.   :1.100   Min.   :17.00  
 1st Qu.:2.700   1st Qu.:30.00  
 Median :4.800   Median :47.00  
 Mean   :5.012   Mean   :51.48  
 3rd Qu.:7.400   3rd Qu.:75.00  
 Max.   :9.200   Max.   :95.00
>
> 
> x=data$Hours
> y=data$Scores
>
> 
> #fitting model
> model=lm(y~x)
> model

Call:
lm(formula = y ~ x)

Coefficients:
(Intercept)            x  
      2.484        9.776  

> #plotting the model
> plot(x,y,main="Hours vs Scores",xlab="Hours studied",ylab="score",col="red")
> abline(model,col="blue")
> http://127.0.0.1:10601/graphics/7427117d-fbfc-4890-9dd1-be079380fa3e.png
>
> 
> #comparing actual and predicted scores
> actual=y
>
> 
> hour=data.frame(x)
>
> 
> predicted=predict(model,hour)
>
> 
> cbind(actual,predicted)
   actual predicted
1      21  26.92318
2      47  52.34027
3      27  33.76624
4      75  85.57800
5      30  36.69899
6      20  17.14738
7      88  92.42106
8      60  56.25059
9      81  83.62284
10     25  28.87834
11     85  77.75736
12     62  60.16091
13     41  46.47479
14     42  34.74382
15     17  13.23706
16     95  89.48832
17     30  26.92318
18     24  21.05770
19     67  62.11607
20     69  74.82462
21     30  28.87834
22     54  49.40753
23     35  39.63173
24     76  69.93672
25     86  78.73494
>
> 
> #predicted score if student studied for 9.25hrs/day
> test=data.frame(x=9.25)
>
> 
> predict(model,test)
       1 
92.90985 
> #number of hours=9.25 and score=92.90985 
> 
