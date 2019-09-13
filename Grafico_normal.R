plot.new()
plot.window(xlim = c(-5,5), ylim = c(-0,0.75))
grid(lwd = 2)
abline(h = 0, v = 0, lwd = 2)
axis(1, at = -5:5, cex.axis = .8, font = 1)
axis(2, at = c(0,0.25,0.5,0.75), cex.axis = .8, font = 1)
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
text(-1.3,0.4,expression(X[1]%~%N(0,1)), col = "red")

x <- seq(from = -5, to = 5,length.out = 1e3)
y <- densidade_normal(x, c(0,2))
lines(x,y, lwd = 2, col = "purple")
text(-3,0.12,expression(X[2]%~%N(0,2)), col = "purple")

x <- seq(from = -5, to = 5,length.out = 1e3)
y <- densidade_normal(x, c(2,0.49))
lines(x,y, lwd = 2, col = "blue")
text(3,0.6,expression(X[3]%~%N(2,0.49)), col = "blue")

x <- seq(from = -5, to = 5,length.out = 1e3)
y <- densidade_normal(x, c(-3,0.36))
lines(x,y, lwd = 2, col = "darkgreen")
text(-3,0.7,expression(X[4]%~%N(-3,0.36)), col = "darkgreen")