library('workflowr')
# Edit below list of people in the lab to add analysis files and links!
persons = c('dora', 'elliot', 'jake', 'josh', 'layla', 'sample')
# Reads index_start.Rmd to append links to and create new file index.Rmd
analysisDir = 'analysis'
indexRmd = readLines(file.path(analysisDir, 'index_start.Rmd'))
for (person in persons) {
  analysisFilename = file.path('analysis', paste0(person, '_analysis.Rmd'))
  # Creates analysis file if not exists.
  if (!file.exists(analysisFilename)) {
    wflow_open(analysisFilename, change_wd = FALSE, edit_in_rstudio = FALSE, project = NULL)}
  # Appends to index.Rmd if not the sample
  if (person != 'sample') {
    indexRmd = c(
      indexRmd, sprintf(' * [%s](%s_analysis.html)', person, person))}}
# Add file.path below
writeLines(indexRmd, file.path(analysisDir, 'index.Rmd'))
