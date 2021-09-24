########################
#####  Exo 1 ###########
########################

# (1) Saisie des variables
CODE <- c("A","B","C","D","E")
X <- c(10,20,40,50,180)
Y <- c(40,60,40,60,50)
coo <- data.frame(X,Y)
row.names(coo) <- CODE
coo

# (2) Affichage d'un graphique
plot(X,Y, 
     col="red", 
     pch=20, 
     xlim=c(0,180),
     ylim=c(0,90),
     asp = 1)
text(X,Y,
     labels = CODE, 
     pos = 2)

# (3) calcul la matrice de distance euclidienne
mat<-dist(coo, upper = T, method = "euclidean")
mat
apply(as.matrix(mat),1,mean)

# (4) calcul la matrice de distance de Manhattan
mat<-dist(coo, upper = T, method = "manhattan")
mat
apply(as.matrix(mat),1,mean)


# (5) calcul de la localisation la plus efficace
medX <- median(X)
medX
medY <- median(Y)
medY


# (6) calcul de la localisation la plus équitable
equX <- (max(X)+min(X))/2
equX
equY <- (max(Y)+min(Y))/2
equY

# (7) Graphique final

plot(X,Y, 
     col="red", 
     pch=20, 
     xlim=c(0,180),
     ylim=c(0,90),
     asp = 1)

text(X,Y,
     labels = CODE, 
     pos = 2)

points(medX, medY, col="blue", pch=3)
text(medX,medY, "Dépôt",pos=1)

points(equX, equY, col="green", pch=3)
text(equX,equY, "Caserne",pos=1)