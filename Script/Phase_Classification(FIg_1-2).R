library(ggplot2)
library(here)
library(readr)

data <- read_csv("./Data/Reproducibility_of_Korean_Archaeology.csv")

ggplot(data) +
    geom_bar(aes(x=data$단계),
             fill='black') +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5,size=15,face='bold')) +
    ggtitle("단계별 연구 수") +
    labs(x = "단계", y = "연구 수") +
    scale_y_continuous(limits = c(0, 150), breaks=seq(0, 150, 50)) +
    theme(plot.caption = element_text(size = 12, hjust = 0),
      legend.title=element_text(size=18),
      legend.text=element_text(size=15),
      axis.text = element_text(size=15, colour="black"),
      axis.title.x = element_text(size=12, colour="black", face='bold'),
      axis.title.y = element_text(size=12, colour="black", face='bold'))

ggsave(here("./Graph/Fig_1-2.tiff"), dpi=300, width=6, height=6, units='in')
