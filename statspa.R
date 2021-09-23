library("spatstat")
library("sp")
# Fichier de la BPE sur le site insee.fr :
# Données pour ces exemples :
load(url("https://zenodo.org/record/1308085/files/ConfPoints.gz"))
bpe_eco <- bpe[bpe$TYPEQU=="C104", ]
bpe_pha <- bpe[bpe$TYPEQU=="D301", ]
bpe_vet <- bpe[bpe$TYPEQU=="B302", ]
bpe_med <- bpe[bpe$TYPEQU=="D201", ]
par(mfrow=c(2,2), mar=c(2, 2, 2, 2))
plot(carte, main="Ecoles") ; points(bpe_eco[, 2:3])
plot(carte, main="Pharmacies") ; points(bpe_pha[, 2:3])
plot(carte, main="Magasins de vêtements") ; points(bpe_vet[, 2:3])
plot(carte, main="Médecins") ; points(bpe_med[, 2:3])
par(mfrow=c(1,1))

plot(bpe$lambert_x,bpe$lambert_y,col = bpe$TYPEQU)
??ellipse()

library(car)
plot(carte)
dataEllipse(bpe_med$lambert_x,
            bpe_med$lambert_y,
            levels=c(0.1,0.25,0.5,0.75,0.9), 
            fill = TRUE,ellipse.label = c(0.1,0.25,0.5,0.75,0.9),
            col = c("blue","red"),
            add=T)

            