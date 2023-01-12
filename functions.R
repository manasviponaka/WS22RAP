get_data <- function(){
  cleanData::dataset
}

is_out_mad <- function(x, thres = 3, na.rm = TRUE) {
  !(abs(x - median(x, na.rm = na.rm)) <= thres * mad(x, na.rm = na.rm))
  
}

get_outliers <- function(df , feat){
  df|>
    dplyr::filter(!is_out_mad({{feat}}))  
}