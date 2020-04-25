library(tidyverse)

tibble(x = 1:43,
       stup_r_bar_charts_arms = c(rep(0,4),9,10,rep(0,13),10,9,rep(0,42 - 20)),
       stup_r_bar_charts_shirt = c(rep(0,6),rep(10,4),rep(9,5),rep(10,2),rep(11,2),rep(0,42 - 18)),
       stup_r_bar_charts_face = c(rep(0,9),1,12,rep(13,3),12,rep(1,2),rep(0,42 - 16)),
       stup_r_bar_charts_hair = c(rep(0,7),4,8,11,2,rep(2,3),2,11,9,4,3,rep(0,42 - 18)),
       me_r_bar_shirt_1 = c(rep(0,22),1,4,14,rep(18,2),19,rep(0,2),4,6,rep(16,2),11,rep(0,42 - 34)),
       me_r_bar_shirt_2 = c(rep(0,28),15,10,8,7,rep(0,42 - 31)),
       me_r_bar_arm_1 = c(rep(0,28),5,10,rep(0,42 - 29)),
       me_r_bar_arm_2 = c(rep(0,30),6,4,rep(0,42 - 31)),
       me_r_bar_face_1 = c(rep(0,23),5,rep(6,2),5,1,rep(0,42 - 27)),
       me_r_bar_hair_1 = c(rep(0,23),rep(1,3),2,3,rep(0,42 - 27)),
       me_r_bar_hair_2 = c(rep(0,27),2,3,rep(0,42 - 28)),
       useful_things_arm_1 = c(rep(0,35),2,3,4,7,9,6,2,rep(0,42 - 41)),
       useful_things_shirt_1 = c(rep(0,36),8,6,5,rep(1,3),rep(0,42 - 41)),
       useful_things_shirt_2 = c(rep(0,37),1,1,4,7,11,14),
       useful_things_face_1 = c(rep(0,36),2,4,5,3,rep(0,42 - 39)),
       useful_things_hair_1 = c(rep(0,36),6,4,1,0,rep(5,2),rep(0,42 - 41)),
       useful_things_hair_2 = c(rep(0,36),rep(2,2),1,3,rep(0,42 - 39)),
       void_space = c(rep(0,23),15,4,rep(0,42 - 24)),
       mother_earth_land = c(2,4,3,2,rep(0,43 - 4)),
       mother_earth_sea_1 = c(2,rep(0,43 - 1)),
       mother_earth_sea_2 = c(rep(0,2),1,2,rep(0,43 - 4)),
       mother_earth_void_space = c(rep(26,4),rep(0,43 - 4))) %>%
    gather('VAR1','VAL',-x) %>%
    ggplot(aes(x = x, y = VAL,
               fill = factor(VAR1,levels = c('mother_earth_sea_2','mother_earth_land','mother_earth_sea_1','mother_earth_void_space',
                                        'stup_r_bar_charts_hair','stup_r_bar_charts_face','stup_r_bar_charts_shirt','stup_r_bar_charts_arms',
                                        'me_r_bar_hair_1','me_r_bar_face_1','me_r_bar_hair_2','void_space','me_r_bar_shirt_2','me_r_bar_arm_2',
                                        'me_r_bar_shirt_1','me_r_bar_arm_1','useful_things_hair_2','useful_things_face_1','useful_things_hair_1',
                                        'useful_things_shirt_1','useful_things_arm_1','useful_things_shirt_2')))) +
    geom_col(width = 1,alpha = 0.85) +
    scale_fill_manual(values = c('blue','green','blue','black','#8a00d8','#afec03','#fb0367','#afec03','#4d0000','#afec03','#4d0000','black',
                                 '#03e8fb','#afec03','#03e8fb','#afec03','#4b1103','#afec03','#4b1103','#fbcb03','#afec03','#fbcb03')) +
    theme_void() +
    theme(legend.position = 'none',panel.background = element_rect(fill = "black"))
