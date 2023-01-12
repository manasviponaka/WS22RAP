#### Author: Manasvi Ponaka

#### Student ID: 0211207542

#### Course : Workshop-II

Email: Manasvi.ponaka.001@student.uni.lu

To run this pipeline, you will have to simply:

..* Clone the repository by running `git clone git@github.com:manasviponaka/WS22RAP.git`


..* Some of the functions and data used in this pipeline are hosted in a separate package called [cleanData](https://github.com/manasviponaka/cleanData)


..* Run renv::restore() to install all the required libraries.

..*   To install the package independently, run - `remotes::install_github("manasviponaka/cleanData")` in rstudio console


..*   or Clone the repository by running `git clone git@github.com:manasviponaka/cleanData.git` 


..* You should now restart your R session and then run the pipeline with `targets::tar_make()`


You can take a look at the data by running:

`targets::tar_read(insurance_data)`

You can take a look at the outlier in a column charges by running:

`targets::tar_read(outliers_charges)`


You can take a look at some plots tables by running:

`targets::tar_read(ageVsCharges)

targets::tar_read(bmiVsCharges)

targets::tar_read(outlier_boxplot)

targets::tar_read(outlier_boxplot)`
