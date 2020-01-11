install.packages("DiagrammeR")
library(DiagrammeR)

# Elements that are in the flowchart
collabQ = "Are there any collaborators on this project?"
collab_Y1 = "Discuss authorship"
collab_Y2 = "Discuss alocation of tasks"

osf = "Create OSF project"
osf1 = paste("Use OSF project template, see", osf1_link, "for an example")
osf1_link = "[add link]"
osf2 = "Add collaborators to OSF project"

dataMan = "Create a data management plan"
dataMan1 = paste("See", dataMan1_link, "for an online platform to create your plan")
dataMan1_link = "https://dmponline.dcc.ac.uk/"

repo = "Set up a repository"
repo1 = paste("Examples of repositories are GitHub/GitLab/Bitbucket", repo1_link)
repo1_link = "[add link to template or example]"
repo2 = "Add collaborators to repository"
repo3 = paste("Link repository to OSF as shown in", repo3_link)
repo3_link = "[link to how to add repo to osf]"
repro4 = "Determine sharability of data [fix]"

jour = "Consider journals"
jour1 = paste("see", jour1_link, "for an overview of registered report journals")

lit = "Literature review"
lit1 = "Read a ton"
lit2 = "Ask authors for e.g. effect sizes, non-open data"

# Theoretical framework write up  (Introduction)
# Define variables
# Determine population 
# Form hypotheses & study design
# Write down H0 & Ha per hypotheses
# Determine data structure
# Overview of type of variables and ranges
# Simulation
# Determine analysis: (how will I answer my RQ)
# Subflow chart?
#    Inclusion/Exclusion criteria
# Prepare analysis: (what to do before I can do my analysis) 
# Create script for data cleaning
# Decide how to handle missing data / outliers
# Create script for analysis (including assumption checks)
# Test analysis script with dummy data
# Sample size determination
# Power analysis
# Simulate data
# Create experiment
# Choose or create stimuli
# Choose measuring tool variables
# Determine procedure
# Pilot above elements
# Choose sample
# Write up methods
# Submit for ethical review (IRB)
# After approval, continue on 
# If changes are necessary, go through steps 7 - 14 again as necessary
# (preprint at this stage?)
# Preregistration / submit stage 1 registered report
# Preregister everything up to and including ethics
# Data collection
# Analysis
# Clean / anonymize data
# Upload data on OSF
# Run preregistered preparation and analysis (point 8)
# Exploratory analysis
# Write up results and discussion
# Preprint authors’ version (Open Access Publishing - UKRN Primers)
# Publish / Stage 2 Registered Report 
# 

# Definitions of shape of flow chart
# node definitions with substituted label text
nodeDef =
"node [fontname = Helvetica, shape = rectangle]        
tab1 [label = '@@1']
tab2 [label = '@@2']
tab3 [label = '@@3']
tab4 [label = '@@4']
tab5 [label = '@@5']
"

# Definitions of connections (edges) between elements
# edge definitions with the node IDs
edgeDef = 
"tab1 -> tab2 -> tab3 -> tab4 -> tab5;
tab1 -> tab4;
"

labNames = paste0(
"
[1]: '", collabQ,"'
[2]: '", collab_Y1,"'
[3]: '", collab_Y2,"'
[4]: '", osf,"'
[5]: '", osf1,"'
"
)

grViz(
   paste("digraph flowchart {",
         nodeDef,
         edgeDef,
         "}", 
         labNames
         )
   )

