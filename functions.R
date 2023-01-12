
# this function loads data
get_data <- function(){
  cleanData::dataset
}

# this function out outputs a logical list with boolean values True and false in indexes with outliers in the given vector/list
is_out_mad <- function(x, thres = 3, na.rm = TRUE) {
  !(abs(x - median(x, na.rm = na.rm)) <= thres * mad(x, na.rm = na.rm))
  
}

#outputs the observation with outliers in the given column
get_outliers <- function(df , feat){
  df|>
    dplyr::filter(!is_out_mad({{feat}}))  
}