# Add any project specific configuration here.
add.config(
  apply.override = FALSE,
  currentYr = as.numeric(format(Sys.Date(), format="%y")),
  currentYr4 = as.numeric(format(Sys.Date(), format="%Y")),
  lastYr = as.numeric(format(Sys.Date(), format="%y")) - 1,
  LastYr4 = as.numeric(format(Sys.Date(), format="%Y"))-1,
  currentAY = as.numeric(paste(as.numeric(format(Sys.Date(), format="%y")) - 1, as.numeric(format(Sys.Date(), format="%y")), sep = "")),
  header = "Project Template" # header in reports
)
# ------------------------------------------------------------------------------keyring
plotly_api <- keyring::key_get("plot.ly", "UTexas80")
Sys.setenv("plotly_username"="UTexas80")
Sys.setenv("plotly_api_key"=plotly_api)
################################################################################
## Repo Package: data management to build centralized metadata repository       ### https://github.com/franapoli/repo
## Check existence of directory and create if doesn't exist                     ### https://tinyurl.com/y3adrqwa
################################################################################
mainDir <- (".")
subDir  <- ("repo")
rp_path <- file.path(mainDir, subDir)

# Add project specific configuration that can be overridden from load.project()
add.config(
  apply.override = TRUE
)
