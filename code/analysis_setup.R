# Edit below list of people in the lab to add analysis files and links!
labNames = c('Dora', 'Elliot', 'Jake', 'Josh', 'Layla', 'Sample')
indexRmd = readLines('analysis/index.Rmd')
for (name in labNames) {
  analysisFilename = file.path('analysis', paste0(name, '_analysis.Rmd'))
  if (!file.exists(analysisFilename)) {
    wflow_open(analysisFilename, change_wd = FALSE, edit_in_rstudio = FALSE)
  }
  if (name != 'Sample') {
    indexRmd = c(indexRmd, paste0(' * [', name, '](', name, '_analysis.html)'))
  }
}
writeLines(indexRmd, 'analysis/index.Rmd')
