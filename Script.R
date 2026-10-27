
# NECESSARY PACKAGES:

install.packages("ggplot2")
install.packages("dplyr")


library(ggplot2)
library(dplyr)


# DATA TIDYING AND COMPILATION: 

# collect all data from main file

data <- read.csv("data.csv")

# Main data file separated by species and site number: 

bchf.1<- select(data,time, night, site, species, index) 
bchf.1 <- filter(data, site == c(1), species == "bchf") 

bt.1 <- select(data,time, night, site, species, index) 
bt.1 <- filter(data, site == c(1), species == "bt") 

wf.1 <- select(data,time, night, site, species, index) 
wf.1 <- filter(data, site == c(1), species == "wf") 

bchf.3 <- select(data,time, night, site, species, index) 
bchf.3 <- filter(data, site == c(3), species == "bchf") 

bt.3 <- select(data,time, night, site, species, index) 
bt.3 <- filter(data, site == c(3), species == "bt") 

wf.3 <- select(data,time, night, site, species, index) 
wf.3 <- filter(data, site == c(3), species == "wf") 

#WOOD FROG:

# Site 1(Figure 6):

wf.1$time <- factor(
  wf.1$time, 
  levels = c("21:00", "22:00", "23:00", "0:00", "1:00", "2:00", "3:00", "4:00", "5:00")
)

ggplot(wf.1, aes(x = night, y = time, fill = factor(index))) +
  geom_tile() + 
  scale_fill_manual(
    values = c(
      "0" = "#E3F2E1",
      "1" = "#A8D5A2",
      "2" = "#55A854"
    ),
    na.value = "grey87",
    name = "Calling index"
  ) +
  scale_x_continuous(
    breaks = 3:28,
    expand = c(0,0)
  ) +
  scale_y_discrete(
    na.translate = FALSE
  ) +
  labs(
    x = "Recording Night",
    y = "Time(hr)",
    title = "Wood Frog Calling Intensity",
    subtitle = "Site 1, May 3rd—May 28"
  ) +
  theme_classic()

# Site 3(Figure 7):

wf.3$time <- factor(
  wf.3$time, 
  levels = c("21:00", "22:00", "23:00", "0:00", "1:00", "2:00", "3:00", "4:00", "5:00")
)

ggplot(wf.3, aes(x = night, y = time, fill = factor(index))) +
  geom_tile() + 
  scale_fill_manual(
    values = c(
      "0" = "#E3F2E1",
      "1" = "#A8D5A2",
      "2" = "#55A854"
    ),
    na.value = "grey87",
    name = "Calling index"
  ) +
  scale_x_continuous(
    breaks = 3:28,
    expand = c(0,0)
  ) +
  scale_y_discrete(
    na.translate = FALSE
  ) +
  labs(
    x = "Recording Night",
    y = "Time(hr)",
    title = "Wood Frog Calling Intensity",
    subtitle = "Site 3, May 4—May 29"
  ) +
  theme_classic()

#BOREAL CHORUS FROG:

#Site 1(Figure 4):

bchf.1$time <- factor(
  bchf.1$time, 
  levels = c("21:00", "22:00", "23:00", "0:00", "1:00", "2:00", "3:00", "4:00", "5:00")
)

ggplot(bchf.1, aes(x = night, y = time, fill = factor(index))) +
  geom_tile() + 
  scale_fill_manual(
    values = c(
      "0" = "#D9EAF0",
      "1" = "#8CC8F0",
      "2" = "#3488C8"
    ),
    na.value = "grey87",
    name = "Calling index"
  ) +
  scale_x_continuous(
    breaks = 3:28,
    expand = c(0,0)
  ) +
  scale_y_discrete(
    na.translate = FALSE
  ) +
  labs(
    x = "Recording Night",
    y = "Time(hr)",
    title = "Boreal Chorus Frog Calling Intensity",
    subtitle = "Site 1, May 3rd—May 28"
  ) +
  theme_classic()

#Site 3(Figure 5):

bchf.3$time <- factor(
  bchf.3$time, 
  levels = c("21:00", "22:00", "23:00", "0:00", "1:00", "2:00", "3:00", "4:00", "5:00")
)

ggplot(bchf.3, aes(x = night, y = time, fill = factor(index))) +
  geom_tile() + 
  scale_fill_manual(
    values = c(
      "0" = "#D9EAF0",
      "1" = "#8CC8F0",
      "2" = "#3488C8"
    ),
    na.value = "grey87",
    name = "Calling index"
  ) +
  scale_x_continuous(
    breaks = 3:28,
    expand = c(0,0)
  ) +
  scale_y_discrete(
    na.translate = FALSE
  ) +
  labs(
    x = "Recording Night",
    y = "Time(hr)",
    title = "Boreal Chorus Frog Calling Intensity",
    subtitle = "Site 3, May 4 - May 29"
  ) +
  theme_classic()


#BOREAL TOAD:

#Site 1(Figure 8):

bt.1$time <- factor(
  bt.1$time, 
  levels = c("21:00", "22:00", "23:00", "0:00", "1:00", "2:00", "3:00", "4:00", "5:00")
)

ggplot(bt.1, aes(x = night, y = time, fill = factor(index))) +
  geom_tile() + 
  scale_fill_manual(
    values = c(
      "0" = "#FFF0CC",
      "1" = "#FFD477",
      "2" = "#E99A3C"
    ),
    na.value = "grey90",
    name = "Calling index"
  ) +
  scale_x_continuous(
    breaks = 3:28,
    expand = c(0,0)
  ) +
  scale_y_discrete(
    na.translate = FALSE
  ) +
  labs(
    x = "Recording Night",
    y = "Time(hr)",
    title = "Boreal Toad Calling Intensity",
    subtitle = "Site 1, May 3rd—May 28"
  ) +
  theme_classic()

#Site 3(Figure 9):

bt.3$time <- factor(
  bt.3$time, 
  levels = c("21:00", "22:00", "23:00", "0:00", "1:00", "2:00", "3:00", "4:00", "5:00")
)

ggplot(bt.3, aes(x = night, y = time, fill = factor(index))) +
  geom_tile() + 
  scale_fill_manual(
    values = c(
      "0" = "#FFF0CC",
      "1" = "#FFD477",
      "2" = "#E99A3C"
    ),
    na.value = "grey90",
    name = "Calling index"
  ) +
  scale_x_continuous(
    breaks = 3:28,
    expand = c(0,0)
  ) +
  scale_y_discrete(
    na.translate = FALSE
  ) +
  labs(
    x = "Recording Night",
    y = "Time(hr)",
    title = "Boreal Toad Calling Intensity",
    subtitle = "Site 3, May 4—May 29"
  ) +
  theme_classic()


