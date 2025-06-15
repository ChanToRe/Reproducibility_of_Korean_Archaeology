library(ggplot2)
library(here)
library(readr)

data <- read_csv("./Data/Reproducibility_of_Korean_Archaeology.csv")

ggplot(data) +
    geom_bar(aes(x=data$연도,fill=as.factor(data$단계)), position = "fill") +
    theme_bw() +
    theme(legend.position = "top",
          plot.title = element_text(hjust = 0.5,size=15,face='bold')) +
    ggtitle("연도별 단계 비율") +
    labs(x = "연도", y = "비율") +
    scale_x_continuous(limits = c(2014, 2025), breaks=seq(2015, 2024, 1)) +
    scale_fill_grey(start=0.7, end=0) +
    theme(plot.caption = element_text(size = 12, hjust = 0),
      axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 ),
      legend.title=element_blank(),
      legend.text=element_text(size=15),
      axis.text = element_text(size=15, colour="black"),
      axis.title.x = element_text(size=12, colour="black", face='bold'),
      axis.title.y = element_text(size=12, colour="black", face='bold'))

ggsave(here("./Graph/Fig_2.tiff"), dpi=300, width=6, height=6, units='in')
