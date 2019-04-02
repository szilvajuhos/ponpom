library(ggplot2)
All_samples <- read.csv("strelka.csv")
# Samples 
S103A <- subset(All_samples,sample=="T103" & filtering=="All")
S103F <- subset(All_samples,sample=="T103" & filtering=="filtered")

S104A <- subset(All_samples,sample=="T104" & filtering=="All")
S104F <- subset(All_samples,sample=="T104" & filtering=="filtered")

S105A <- subset(All_samples,sample=="T105" & filtering=="All")
S105F <- subset(All_samples,sample=="T105" & filtering=="filtered")

S107A <- subset(All_samples,sample=="T107" & filtering=="All")
S107F <- subset(All_samples,sample=="T107" & filtering=="filtered")

S109A <- subset(All_samples,sample=="T109" & filtering=="All")
S109F <- subset(All_samples,sample=="T109" & filtering=="filtered")

S110A <- subset(All_samples,sample=="T110" & filtering=="All")
S110F <- subset(All_samples,sample=="T110" & filtering=="filtered")

S119A <- subset(All_samples,sample=="T119" & filtering=="All")
S119F <- subset(All_samples,sample=="T119" & filtering=="filtered")


ggplot(All_samples,aes(PON,calls)) + 
  geom_point(data=S103A, colour='red') + geom_smooth(data=S103A,size=0.2, method = 'loess') + 
  geom_point(data=S103F, colour='red') + geom_smooth(data=S103F,size=0.2, method = 'loess') +
  geom_point(data=S104A,colour='green') + geom_smooth(data=S104A,size=0.2, method = 'loess') + 
  geom_point(data=S104F,colour='green') + geom_smooth(data=S104F,size=0.2, method = 'loess') +
  geom_point(data=S105A,colour='blue') + geom_smooth(data=S105A,size=0.2, method = 'loess') + 
  geom_point(data=S105F,colour='blue') + geom_smooth(data=S105F,size=0.2, method = 'loess') +
  geom_point(data=S107A,colour='orange') + geom_smooth(data=S107A,size=0.2, method = 'loess') + 
  geom_point(data=S107F,colour='orange') + geom_smooth(data=S107F,size=0.2, method = 'loess') +
  geom_point(data=S109A,colour='cyan') + geom_smooth(data=S109A,size=0.2, method = 'loess') + 
  geom_point(data=S109F,colour='cyan') + geom_smooth(data=S109F,size=0.2, method = 'loess') +
  geom_point(data=S110A,colour='brown1') + geom_smooth(data=S110A,size=0.2, method = 'loess') + 
  geom_point(data=S110F,colour='brown1') + geom_smooth(data=S110F,size=0.2, method = 'loess') +
  geom_point(data=S119A,colour='darkblue') + geom_smooth(data=S119A,size=0.2, method = 'loess') + 
  geom_point(data=S119F,colour='darkblue') + geom_smooth(data=S119F,size=0.2, method = 'loess') +
	scale_y_continuous(trans='log10') +
  annotate("text", x=20, y=800, label="Filtered calls", color="black") +
  annotate("text", x=20, y=8000, label="All calls", color="black") + 
  xlab("Number of samples in Panel Of Normals (PON)") +
  ylab("Number of calls") 


