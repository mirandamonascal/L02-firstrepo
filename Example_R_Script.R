# This is an R script.

# All lines that begin with a hash-symbol "#" will be ignored when running code.
# This is useful for writing in-line comments to explain what your code does.

# R contains different data types: e.g. characters, numerics and logical.
# Strings are contained within quotation marks (single or double):

"Hello World!"    # This is a valid character object
'Hello World!'    # This is also a valid character object

# Numbers Lets now do some simple operations

5     # Integers
-9    # Negative values
0.5   # Decimal numbers (specifically floating point values)


# You can use R as a simple calculator!!!

1 + 2
5 * 22
8 / 3
5 * (6 - 2)
5 * 6 - 2
4^3

# R also has some special data types that you may see

TRUE     # Logical true (similar to the numerial value of one)
FALSE    # Logical false (similar to the numerial value of zero)
NULL     # An empty object
NA       # Not Available (indicates that something is missing)
NaN      # Not a Number (result of an invalid calculation, e.g. 0/0)
Inf      # Infinite (e.g. 1/0)


# By default, R contains main standard useful functions.

abs(-1)            # Absolute, |x|
sqrt(25)           # Square-root

pi                 # constant, 3.14...
sin(pi/6)          # Trig commands
tan(pi/4)
acos(1 / sqrt(2))  # Inverse trig commands
asin(0.5)

exp(1)         # Exponential
log(exp(4))    # Natural logarithm by default
log2(64)       # Logarithm base 2
log10(1000)    # Logarithm base 10

# Want to read the manual? Use help() or type "?" before the command's name

help(abs)
?cosh

# The combination "<-" can assign the result of a calculation to memory

x <- 2   # Look at the 'Environment' tab to see what is stored in memory.
x

f <- (2*x - 1) * (x^2 + 2/3) # Doing calculations with objects in memory.
f



# By default, R contains a range of commands for basic data processing,
#  visualisations and simple statistical analysis. However, even this can 
#  be quite limiting for doing somethings even a little more advanced!

# R is designed so that other people can design commands to do a specific thing,
#  make their code pubically available for others to use! The "Comprehensive
#  R Archive Network" contains 1000s of packages that you can easily download
#  and use.


# To download and install the 'tidyverse' package

install.packages("tidyverse")  

# If prompted, select any mirror that is near geographically to your location.
# NOTE: you only need to run the above command once!


# To load the 'tidyverse'
library(tidyverse)


# A simple example using 'tidyverse' on the mamal sleep (msleep) dataset
#  (You will learn what is happening here later in the course.)

msleep %>% 
  summarise(
    avg_sleep = mean(sleep_total), 
    med_wt = median(bodywt)
  )
