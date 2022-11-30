
# summarize DEMO ---------------------------------------------------------------

# Load dplyr and styler packages
library(dplyr)
library(lintr)
library(styler)

# package contains dataframe used in examples below
# install.packages("pscl")      # only once per machine
library(pscl)                   # once per script

View(presidentialElections)     # this is the dataframe that comes w the package

# create new variable called `filter_CA` which stores only the data
# located as California
filter_CA <- filter(
  presidentialElections,
  state == "California"
)
View(filter_CA)                 # it's a good idea to verify that your filters
                                # do exactly what you intend it to do before 
                                # performing more complicated operations

summarized_df <- summarize(
  filter_CA,                    # use this df
  avg_dem_vote = mean(demVote)  # and create new col with the avg values in demVote
  )

# pull the value in the demVote column and store in variable `avg_dem`
avg_dem_vote_CA <- summarized %>%
  pull()                        # now `avg_dem_vote_CA` holds decimal value
                                # pull is helpful for extracting values from 
                                # dataframes

# group_by DEMO ----------------------------------------------------------------

summary_by_state <- presidentialElections %>%   # original df
  group_by(state) %>%                           # group rows by state, no visual change
  summarize(
    mean_dem_vote = mean(demVote),              # new column mean_dem_vote
    mean_other_vote = mean(100 - demVote)       # new column mean_other_vote
  ) %>%
  filter(state == "California") %>%             # filter for only California
  select(mean_other_vote) %>%                   # select the mean_other_vote column
  pull()                                        # pull value (decimal)






























