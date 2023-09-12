library("readxl")
library("ggpubr")

scores = readxl::read_excel("C:\\Users\\dpate336\\Desktop\\Spring 2023\\CS5942\\Final Report\\Formatted Arranged Scores.xlsx")


ggpubr::ggdensity(scores$VR, 
                  main="Density plot of VR scores",
                  xlab="VR Score")

ggpubr::ggdensity(scores$APP, 
                  main="Density plot of APP scores",
                  xlab="APP Score")

ggpubr::ggqqplot(scores$VR)

ggpubr::ggqqplot(scores$APP)

shapiro.test(scores$APP)

shapiro.test(scores$VR)

t.test(scores$VR,scores$APP,var.equal = TRUE)
