# Created by tarflow.iquizoo::use_targets_pipeline().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  # packages = "base", # uncomment this if you want to use more packages
  # imports = "preproc.iquizoo", # uncomment this if indices will be calculated
  # format = "qs", # Optionally set the default storage format. qs is fast.
  #
  # For distributed computing in tar_make(), supply a {crew} controller
  # as discussed at https://books.ropensci.org/targets/crew.html.
  # Choose a controller that suits your needs. For example, the following
  # sets a controller with 8 workers which will run as local R processes:
  controller = crew::crew_controller_local(workers = 8)
  #
  # Set other options as needed.
)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# source("other_functions.R") # Source other scripts as needed.

# fmt: skip
params <- tibble::tribble(
  ~organization_name, ~project_name, ~course_name, ~game_name,
  # TODO: replace these with your own
  "Organization1", "Project1", NA, NA,
  "Organization2", NA, NA, NA # set as NA to skip that column
)

# Replace the target list below with your own:
list(
  tarflow.iquizoo::tar_prep_iquizoo(
    params,
    # contents = NULL, # uncomment this if you want to use custom contents
    what = c("raw_data", "scores"), # change to "scores" or "raw_data" if you want to
    action_raw_data = "all", # change to "parse" or "none" if you want to
    combine = NULL, # change to the names you want to combine
    # For advanced usage, set custom templates by uncommenting next line
    #  templates = tarflow.iquizoo::setup_templates(),
    check_progress = TRUE # set as `FALSE` if projects finalized
  )
  # more targets goes here
)
