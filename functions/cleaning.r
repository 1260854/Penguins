cleaning <- function(data_raw){
  data_raw %>%
    clean_names() %>%
    remove_empty(c("rows", "cols")) %>%
    dplyr::select(-starts_with("delta")) %>%
    dplyr::select(-comments)
}

remove_empty_flipper_body <- function(data_clean){
  data_clean %>%
    filter(!is.na(flipper_length_mm)) %>%
    dplyr::select(species, flipper_length_mm, body_mass_g) %>%
    filter(!is.na(body_mass_g))
}
