id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

head(employee)

employee %>% separate(name, into = c("first_name","last_name"), sep = " ")

id <- c(1:10)

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


#mutate works for addition/deletion,modification,calculation for column
employee <- data.frame(id,first_name,last_name,job_title)
head(employee)
employee %>% unite(name, first_name, last_name, sep = " ")
view(penguins)
penguins %>%
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/10)

