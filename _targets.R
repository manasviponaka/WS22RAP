library(targets)
library(cleanData)
library(dplyr)
library(ggplot2)
source("functions.R")

list(
  tar_target(insurance_data, get_data()),
  
  tar_target(ageVsCharges, get_plot(insurance_data , age , charges, smoker , ggplot2::geom_point)),
  
  tar_target(bmiVsCharges, get_plot(insurance_data , bmi , charges, smoker , ggplot2::geom_point)),
  
  tar_target(outliers_charges ,  get_outliers(insurance_data , charges)),
  
  tar_target(outlier_bool_array ,is_out_mad(insurance_data$charges , thres = 4)),
  
  
  tar_target(temp_df , insurance_data %>% mutate(charges_outliers = as.factor(outlier_bool_array))),
  
  tar_target(outlier_boxplot ,  get_plot(df = temp_df ,column2= charges,fill_color = charges_outliers, plot_func =  ggplot2::geom_boxplot)),
  
  tar_target(outlier_pointplot ,  get_plot(df = temp_df, column1 = age,
                                           column2= charges,fill_color = charges_outliers, plot_func =  ggplot2::geom_point))
             
)

