#* plotRandomHistogram.R
#* 
#* Author: Elena Ziccarelli
#* 
#* Purpose:
#*      A function that wil generate a sample of normal "observations"
#*      and plot the histogram of that data 
#*      
#* Inputs: 
#*       num_pts = the numeber of observations
#*               to randomly gen 
#*       mu= the theoretical mean. of the normal distribution that generates my data 
#*       
#*       sigma= the theoretical standard dev
#*       
#*       seed = an optional random number generator
#*              seed value defautls to NULL
#*              
#*      meancolor=the color of the line corresponding to the sample mean of data 
#*              
#*  Output: 
#*        a histogram of the generated data 
#*            is drawn 
#*            
#*        a list with the following elements: 
#*        Mean_Random_Obs = sample mean corresponding the randomly gen'd data
#*        
#*        SD_Radnom_obs = corresponding sd
#*      

plotRandomHistogram <- function(num_pts = 30, mu=0, sigma=1,
                       seed=NULL,meanColor="royalblue") {
  set.seed(seed)
  x <- rnorm(num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, lwd=5, col=meanColor)

#*      In R in a function, the utputfrom t
#*      the last lineis auto returned
#*      

  list(RandomObs = x,
       Mean_Random_obs = mean_x,
       SD_Random_obs = sd(x))
  
}

plotRandomHistogram()
plotRandomHistogram(seed=19)
plotRandomHistogram(seed=19, num_pts = 1000000)
plotRandomHistogram(seed=19, num_pts = 1000000,
                    meanColor = "forestgreen")

my_output <- plotRandomHistogram(seed=5, num_pts = 200, mu=70, 
                                 meanColor = "goldenrod" )





