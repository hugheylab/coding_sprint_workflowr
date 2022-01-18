descFile = 'DESCRIPTION'
if (!file.exists(descFile)) usethis::use_description(fields = list(Imports = 'withr'), check_name = FALSE)
labNames = c('Dora', 'Elliot', 'Jake', 'Josh', 'Layla', 'Sample')
for (name in labNames) {
  analysisFilename = file.path('analysis', paste0(name, '_file.Rmd'))
  if (!file.exists(analysisFilename)) {
    wflow_open(analysisFilename, change_wd = FALSE, edit_in_rstudio = FALSE)
  }
}
