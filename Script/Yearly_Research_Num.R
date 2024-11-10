library(ggplot2)
library(here)
library(readr)

data <- read_csv("./Data/Reproducibility_of_Korean_Archaeology.csv")

ggplot(data) +
    geom_bar(aes(x=data$연도),
             fill='black') +
    theme_bw() +
    theme(legend.position = c(0.08, 0.750),
          legend.background = element_rect(size=0.1, colour="black"),
          legend.margin = margin(10, 20, 10, 10),
          plot.title = element_text(hjust = 0.5,size=15,face='bold')) +
    ggtitle("연도별 연구 수") +
    labs(x = "연도", y = "연구 수") +
    scale_x_continuous(limits = c(2014, 2025), breaks=seq(2015, 2024, 1)) +
    scale_y_continuous(limits = c(0, 60), breaks=seq(0, 60, 10)) +
    theme(plot.caption = element_text(size = 12, hjust = 0),
      axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 ),
      legend.title=element_text(size=18),
      legend.text=element_text(size=15),
      axis.text = element_text(size=15, colour="black"),
      axis.title.x = element_text(size=12, colour="black", face='bold'),
      axis.title.y = element_text(size=12, colour="black", face='bold'))

ggsave(here("./Graph/Fig_00.tiff"), dpi=300, width=6, height=6, units='in')
