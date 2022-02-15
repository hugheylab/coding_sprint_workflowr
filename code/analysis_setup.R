library('workflowr')
# Edit below list of people in the lab to add analysis files and links!
persons = c('dora', 'elliot', 'jake', 'josh', 'layla', 'sample')
# Reads index.Rmd to append links to
indexRmd = readLines(file.path('analysis', 'index.Rmd'))
for (person in persons) {
  analysisFilename = file.path('analysis', paste0(person, '_analysis.Rmd'))
  # Creates analysis file if not exists.
  if (!file.exists(analysisFilename)) {
    wflow_open(analysisFilename, change_wd = FALSE, edit_in_rstudio = FALSE)}
  # Appends to index.Rmd if not the sample
  if (person != 'sample') {
    indexRmd = c(
      indexRmd, sprintf(' * [%s](%s_analysis.html)', person, person))}}
writeLines(indexRmd, 'analysis/index.Rmd')
