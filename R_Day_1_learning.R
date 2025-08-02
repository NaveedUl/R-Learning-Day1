print("Hi! Welcome to the Course")
print(Hi Welcome to the Course)
data<-1:10
data[0]
data<-read.csv(file.choose()) 
#a window will pop out, from where you may choose file (csv/xlsx, any file you want)
install.packages("readxl")
install.packages("dplyr")
naveed <- readxl::read_excel(file.choose())
#I choose Fragile States Index Data
colnames(naveed)
row.names(naveed) #sometimes, you don't need row_index but the other row names: 
#for this purpose use the following command
rownames(naveed$country) # shows Null? what to do?
naveed$Country #want to assign it to variable? let's do the following:
sample_names=naveed$Country #as we have assigned whole column to a variable, now we
# can delete it from the data: But How? Check below:
mr_naveed= naveed[,-1] #now we have 15 columns instead of 16
# if you want to remove first five columns instead of only one, do it:
mr_naveed= naveed[,-1:-5] #now we have 11 columns instead of 16
mr_naveed_selected_columns=naveed[,1:5] #to get only five columns
#now if we want to get data from single row, like from 21, than:
mr_naveed_selected_data=naveed[21,1:5]
#excel usually processed can not have more than 10,000 columns/rows
#Now, see how to change the column names?
colnames(naveed)[1]="Region" #renaming Country to Region
#Now, see how to change some characters
library(dplyr)
naveed=naveed %>% rename_with(
  ~ gsub("A", "NEW", .x),
  .cols = contains("A")
)
