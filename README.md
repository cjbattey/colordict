This is an R script for converting the beautiful CMYK color combinations in Senzo Wada's "A Dictionary of Color Combinations" to RGB for use in plots. You can find the book at your local art book store or on Amazon (https://www.amazon.com/s?k=a+dictionary+of+color+combinations). It's great, go buy it.

To use this script download colordict.R and then source it at the top of your file.
You can then use get RGB hex codes for any named color in the book by passing a list of color names as character strings to the function 'getcolordict()', and pass those to scale_color_manual() or plot(). All color names are lower case only,spaces have been replaced with an underscore, and apostrophes are removed. So "Vandar Poel's Blue" is now "vander_poels_blue".

Fair warning that many of these colors are pretty different in CMYK versus RGB -- blues in particular are much more luminant in RGB. You can check how a set of colors look on the screen with the function 'plotcolordict()', which takes a list of color names. 

Here's an example use case: 
```
#colordict.R example
source("colordict.R")

colornames <- list('red_orange',
                   'dark_medici_blue',
                   'pale_lemon_yellow',
                   'isabella_color')

plotcolordict(colornames)

ggplot(data=data.frame(x=runif(100,1,10),
                       y=runif(100,1,10),
                       bin=sample(1:4,100,T)),
       aes(x=x,y=y,fill=factor(bin)))+
       scale_fill_manual(values=getcolordict(colornames))+
         geom_point(shape=21,stroke=0.2,size=4)
```

The last command should produce this: 
![alt text](https://github.com/cjbattey/colordict/blob/master/Screen%20Shot%202019-03-18%20at%209.54.27%20AM.png "Example plot")


I'll get around to making this a package and adding real help etc at some point. Enjoy!
