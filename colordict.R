#dict_o_colors.R, an R package for Senzo Wada's "A Dictionary of Color Combinations"

cmyk2rgb <- function(cmyk) {
  C <- cmyk[1] / 100.0
  M <- cmyk[2] / 100.0
  Y <- cmyk[3] / 100.0
  K <- cmyk[4] / 100.0
  n.c <- (C * (1-K) + K)
  n.m <- (M * (1-K) + K)  
  n.y <- (Y * (1-K) + K)
  r.col <- ceiling(255 * (1-n.c))
  g.col <- ceiling(255 * (1-n.m))
  b.col <- ceiling(255 * (1-n.y))
  return(sprintf("#%02s%02s%02s",
                         as.hexmode(r.col), 
                         as.hexmode(g.col), 
                         as.hexmode(b.col)))
}


colordict <- list(
 hermosa_pink=c(0,30,6,0),
 corinhian_pink=c(0,35,15,0),
 cameo_pink=c(10,32,19,0),
 fawn=c(18,31,30,0),
 light_brown_drab=c(8,30,20,25),
 coral_red=c(0,55,40,0),
 fresh_color=c(0,53,45,0),
 grenadine_pink=c(0,62,58,0),
 eosine_pink=c(0,63,23,0),
 spinel_red=c(0,70,21,0),
 old_rose=c(15,70,40,0),
 eugenia_red_1=c(7,76,60,0),
 eugenia_red_2=c(0,80,50,10),
 raw_sienna=c(18,58,100,12),
 vinaceous_tawny=c(17,72,100,6),
 jasper_red=c(2,83,100,0),
 spectrum_red=c(5,100,100,0),
 red_orange=c(9,90,100,0),
 etruscan_red=c(16,80,74,6),
 burnt_sienna=c(22,76,100,15),
 ocher_red=c(18,73,63,20),
 scarlet=c(10,95,72,7),
 carmine=c(0,100,75,16),
 indian_lake=c(12,89,35,9),
 rosolane_purple=c(30,90,33,0),
 pomegranate_purple=c(23,100,50,6),
 hydrangea_red=c(38,90,70,20),
 brick_red=c(22,84,100,18),
 carmine_red=c(25,95,80,16),
 pompeian_red=c(18,97,74,19),
 red=c(30,100,70,10),
 brown=c(35,74,90,35),
 hays_russet=c(37,85,87,35),
 vandyke_red=c(32,95,95,33),
 pansy_purple=c(34,100,60,34),
 pale_burnt_lake=c(25,90,80,40),
 violet_red=c(75,100,50,5),
 vistoris_lake=c(40,71,55,40),
 sulphur_yellow=c(4,4,28,0),
 pale_lemon_yellow=c(0,4,38,0),
 naples_yellow=c(2,7,44,0),
 ivory_buff=c(8,15,40,0),
 seashell_pink=c(0,19,23,0),
 ligh_pinkish_cinnammon=c(0,25,40,0),
 pinkish_cinnamon=c(5,32,53,0),
 cinnamon_buff=c(0,25,57,0),
 cream_yellow=c(0,28,68,0),
 golden_yellow=c(2,42,74,0),
 vinaceous_cinnamon=c(4,40,42,0),
 ochraceous_salmon=c(15,38,55,0),
 isabella_color=c(15,28,60,10),
 maple=c(5,26,56,20),
 olive_buff=c(16,6,42,12),
 ecru=c(20,25,40,6),
 yellow=c(0,0,100,0),
 lemon_yellow=c(5,0,85,0),
 apricot_yellow=c(0,10,100,0),
 pyrite_yellow=c(23,25,80,0),
 olive_ocher=c(18,26,90,0),
 yellow_ocher=c(12,28,88,0),
 orange_yellow=c(0,33,100,0),
 yellow_orange=c(0,45,100,0),
 apricot_orange=c(0,55,75,0),
 orange=c(0,68,100,0),
 peach_red=c(0,80,90,0),
 english_red=c(13,73,100,0),
 cinnamon_rufous=c(20,60,100,8),
 orange_rufous=c(18,65,100,8),
 sulphine_yellow=c(24,32,100,4),
 khaki=c(24,45,100,6),
 citron_yellow=c(35,17,95,0),
 citrine=c(36,32,100,7),
 buffy_citrine=c(42,40,82,8),
 dark_citrine=c(38,34,67,20),
 light_grayish_olive=c(43,36,62,19),
 kronbergs_green=c(48,35,70,12),
 olive=c(48,38,100,15),
 orange_citrine=c(28,48,92,24),
 sudan_brown=c(25,60,65,19),
 olive_green=c(56,40,85,22),
 light_brownish_olive=c(42,46,73,24),
 deep_grayish_olive=c(50,48,78,37),
 pale_raw_umber=c(46,63,87,32),
 sepia=c(48,60,100,40),
 madder_brown=c(36,88,100,38),
 mars_brown_tobacco=c(39,76,100,47),
 vandyke_brown=c(56,71,97,52),
 turquoise_green=c(29,0,24,0),
 glaucous_green=c(30,9,24,0),
 dark_greenish_glaucous=c(30,15,36,0),
 yellow_green=c(35,0,72,0),
 light_green_yellow=c(26,5,85,0),
 night_green=c(52,0,100,0),
 olive_yellow=c(40,30,80,0),
 artemisia_green=c(57,28,39,8),
 andover_green=c(60,40,50,10),
 rainette_green=c(42,20,62,28),
 chromium_green=c(50,16,58,20),
 pistachio_green=c(64,29,56,6),
 sea_green=c(80,0,51,0),
 benzol_green=c(100,15,55,0),
 light_porcelain_green=c(86,22,50,3),
 green=c(75,21,73,0),
 dull_viridian_green=c(90,20,80,0),
 oil_green=c(53,28,100,8),
 diamine_green=c(87,20,100,10),
 cossack_green=c(76,32,91,18),
 lincoln_green=c(60,48,86,37),
 blackish_olive=c(56,32,63,55),
 deep_slate_olive=c(76,60,80,62),
 nile_blue=c(25,0,10,0),
 pale_kings_blue=c(33,4,7,0),
 light_glaucous_blue=c(35,10,14,0),
 salvia_blue=c(41,25,10,0),
 cobalt_green=c(42,0,42,0),
 calamine_blue=c(50,0,20,0),
 venice_green=c(58,0,30,0),
 cerulian_blue=c(84,26,32,0),
 peacock_blue=c(100,19,43,0),
 green_blue=c(82,24,40,3),
 olympic_blue=c(69,44,10,0),
 blue=c(95,54,0,0),
 antwarp_blue=c(100,40,30,10),
 helvetia_blue=c(100,62,19,10),
 dark_medici_blue=c(70,45,45,15),
 dusky_green=c(100,30,64,50),
 deep_lyons_blue=c(100,85,15,6),
 violet_blue=c(85,79,38,16),
 vandar_poels_blue=c(100,73,43,10),
 dark_tyrian_blue=c(90,66,36,50),
 dull_violet_black=c(100,90,38,50),
 deep_indigo=c(100,92,52,60),
 deep_slate_green=c(80,50,60,70),
 grayish_lavender_1=c(28,28,0,0),
 grayish_lavender_2=c(25,33,20,0),
 laelia_pink=c(20,48,18,0),
 lilac=c(28,54,8,0),
 eupatorium_purple=c(25,79,12,0),
 light_mauve=c(43,62,5,0),
 aconite_violet=c(39,68,5,0),
 dull_blue_violet=c(57,60,17,0),
 dark_soft_violet=c(70,68,13,0),
 blue_violet=c(72,80,0,0),
 purple_drab=c(38,65,49,26),
 deep_violet_plumbeous=c(61,52,43,7),
 vermonia_purple=c(42,78,46,15),
 dark_slate_purple=c(64,85,60,10),
 taupe_brown=c(30,70,35,40),
 violet_carmine=c(64,90,70,10),
 violet=c(85,90,18,0),
 red_violet=c(76,100,25,15),
 cotinga_purple=c(66,100,42,40),
 dusky_madder_violet=c(75,100,46,30),
 white=c(0,0,0,0),
 neutral_gray=c(29,18,20,0),
 mineral_gray=c(33,18,25,7),
 warm_gray=c(37,28,36,3),
 slate_color=c(85,70,62,30),
 black=c(20,10,15,100)
)


getcolordict <- function(names){
  for(n in names){
    if(!n %in% names(colordict)){
      print(paste(n,"is not a valid name"))
      return()
      }
  } 
  sapply(names,function(e) cmyk2rgb(colordict[[e]]))
}


plotcolordict <- function(names){
  rgb <- getcolordict(names)
  pos <- data.frame(x=1:length(rgb),y=1,rgb=rgb,names=unlist(names))
  p <- ggplot(data=pos,aes(x=x,y=y,col=rgb))+
    xlim(0,max(pos$x)+1)+
    scale_color_manual(values=rgb)+
    geom_point(size=20,shape=15)
  print(pos)
  print(p)
  }
# 
# plotcolordict(list('lilac','dusky_madder_violet','raw_sienna'))
