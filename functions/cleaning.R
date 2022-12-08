# This function cleans the data provided

clean <- function(data) {
  data %>% 
    # Makes the variable names easier to reference
    clean_names() %>% 
    # Removes empty rows and columns
    remove_empty(c('rows', 'cols')) %>% 
    # Removes unneeded variables
    select(-starts_with('delta')) %>%
    # Removes comments variable
    select(-comments)
}