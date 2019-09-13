plot.new()
plot.window(xlim = c(-5,5), ylim = c(-0,1))
grid(lwd = 2)
abline(h = 0, v = 0, lwd = 2)
axis(1, at = -5:5, cex.axis = .8, font = 1)
axis(2, at = 0:1, cex.axis = .8, font = 1)
title(main = "Gráfico de V.A. Normal")
title(xlab = "Eixo X"); title(ylab = "Eixo Y")

densidade_normal <- function(x, par = c(0,1)){
  mi <- par[1]
  sigma2 <- par[2]
  
  (1/sqrt(2*pi*sigma2))*exp(-((x - mi)^2)/(2*sigma2))
}

x <- seq(from = -5, to = 5,length.out = 1e3)
y <- densidade_normal(x)
lines(x,y, lwd = 2, col = "red")
text(-2,0.3,expression(X[1]%~%N(0,1)), col = "red")