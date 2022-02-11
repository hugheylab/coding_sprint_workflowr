# coding_sprint_workflowr

A [workflowr][] project.

[workflowr]: https://github.com/workflowr/workflowr

## Setup

1. Create a new repository using this template.
    1. Click the “Use this template” button to create a new repository.
    2. Check the “Include all branches” box.
    3. Name your repository as follows: `coding_sprint_{YYYY}_{MM}` where `YYYY` and `MM` are the integer representations for year and month, respectively.
2. Clone your newly created repository to your local machine.
3. Install workflowr - `install.packages('workflowr')`
4. Source the `analysis_setup.R` script - `source(file.path('code', 'analysis_setup.R'))`
5. To update the docs folder and prepare the repository for automated site generation, run the following two commands in R:
    
    ```r
    workflowr::wflow_build()
    workflowr::wflow_publish(republish = TRUE)
    ```
    
6. Add data into the `data` directory, edit `analysis/sample_analysis.Rmd` script, add dependencies to the “Imports” section of the `DESCRIPTION` file, and place any necessary reusable functions/scripts into the `code` directory.
7. Navigate to your repository on GitHub’s website, then go to the “Settings” tab and select “Pages” in the side panel.
8. Under “Source”, select `gh-pages` as the source branch, set the directory as `/docs` and click “Save”. This will publish and create the GitHub Pages site!
9. Push to github and it will build and publish the site each time someone pushes, no longer necessary for users to build and push!

## Guide for running sprint

1. Have everyone clone the repository you have made locally.
2. Discuss and demonstrate the sample analysis script.
3. Have each participant edit their respective analysis file that has already been created in the repository.
4. Once it is time to review everyone’s analyses, have everyone take turns pulling from and then pushing to the repository. 
    1. Since GitHub Pages can be slow on updating the site, it’s recommended that you push and pull in order of who will be presenting. This way the site is updated by the time each person is discussing their analysis!
    2. If additional packages are required for the analysis, have the first person add all dependencies to their `DESCRIPTION` file so everyone gets them in subsequent pulls.
5. Once finished, the GitHub pages site will be updated with everyone’s analysis and you should be able to view them!
