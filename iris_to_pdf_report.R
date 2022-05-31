### Alstom and HDF libraries
library(alstomR)
library(hdf)

# R advanced plot toolkit
library(ggplot2)

# 0- push some data in object storage
# share_file(iris, "upload/some_project/iris.csv")

# 1- get data file
local_path <- check_files("upload/some_project/iris.csv") #, token = "ZEDFSDKMLFKSDMMFKSDMF")

# 2- decode data
iris <- read.csv(local_path)

# 3- create report
p <- aqplot(iris$Sepal.Length, iris$Petal.Length, color=iris$Species)

# 4- save as file
ggsave(p, file = "plot.pdf" )

# 5- share the report
share_file(data = "plot.pdf" , url = "download/public/report.pdf") #, visibility="public" )
