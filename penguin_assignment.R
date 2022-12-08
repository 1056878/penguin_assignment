# Sets the working directory to the current file location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Loads all packages and functions
source('functions/packages.r')
source('functions/cleaning.r')
source('functions/plotting.r')
source('functions/saving.r')

# Saves the raw data as a backup
write.csv(penguins_raw, paste('data_raw/penguins_raw.csv'))

# Cleans the data
penguins_clean <- clean(penguins_raw)

# Saves the clean data as a backup
write.csv(penguins_clean, paste('data_clean/penguins_clean.csv'))

# Fits a linear model between species and body mass
# then runs an ANOVA on the linear model
body_mod <- lm(body_mass_g ~ species, penguins_clean)
anova(body_mod)

# Creates a violin plot of body mass, grouped by species
# then saves the plot
body_plot <- plot_body_violin(penguins_clean)
save_plot_png(body_plot, 'figures/body violin plot.png', 5000, 5000, 300, 3)
