# coding_sprint_workflowr

A [workflowr][] project.

[workflowr]: https://github.com/workflowr/workflowr

## Setup

1. Create a new repository using this template.
    1. Click the “Use this template” button to create a new repository.
    2. Check the “Include all branches” box.
    3. Name your repository as follows: `coding_sprint_{YYYY}_{MM}` where `YYYY` and `MM` are the integer representations for year and month, respectively.
2. Clone your newly created repository to your local machine.
3. Install workflowr - 

    ```r
    install.packages('workflowr')
    ```
    
4. Source the `analysis_setup.R` script - 
    - Note that the `analysis_setup.R` script has a vector of the names of people in the lab on line 3.
    - If there are changes to lab personnel, edit this line to only have names of active lab members before sourcing the script.

    ```r
    source(file.path('code', 'analysis_setup.R'))
    ```
    
5. To update the docs folder and prepare the repository for automated site generation, run the following two commands in R:
    - If you are not using RStudio or do not already have pandoc installed, you will need to install pandoc [here.](https://pandoc.org/installing.html)
    
        ```r
        workflowr::wflow_build()
        workflowr::wflow_publish(republish = TRUE)
        ```
    
6. Add your analysis data into the `data` directory. To access this data, your filename (including the path) will be the following:

    ```r
    dataFilename = file.path('data', '{dataFilename}`)
    ```

7. Edit `analysis/sample_analysis.Rmd` script to contain your sample analysis.
8. Add dependencies to the “Imports” section of the `DESCRIPTION` file.
9. Place any necessary reusable functions/scripts into the `code` directory. To access these in an analysis script, source the script by dadding the following line to the top of your analysis:

    ```r
    source(file.path('code', '{scriptFilename}.r'))
    ```

10. Navigate to your repository on GitHub’s website, then go to the “Settings” tab and select “Pages” in the side panel.
11. Under “Source”, select `gh-pages` as the source branch, set the directory as `/docs` and click “Save”. This will publish and create the GitHub Pages site!
12. Add your changes to a git commit, then commit using the following lines:

    ```bash
    git add -A
    git commit -m "{REPLACE WITH YOUR COMMIT MESSAGE}"
    ```

13. Push to github and it will build and publish the site each time someone pushes, no longer necessary for users to build and push!

## Guide for running sprint

1. Have everyone clone the repository you have made locally.
2. Discuss and demonstrate the sample analysis script.
3. Have each participant edit their respective analysis file that has already been created in the repository.
4. Once it is time to review everyone’s analyses, have everyone take turns pulling from and then pushing to the repository. 
    1. Since GitHub Pages can be slow on updating the site, it’s recommended that you push and pull in order of who will be presenting. This way the site is updated by the time each person is discussing their analysis!
    2. If additional packages are required for the analysis, have the first person add all dependencies to their `DESCRIPTION` file so everyone gets them in subsequent pulls.
5. Once finished, the GitHub pages site will be updated with everyone’s analysis and you should be able to view them!
