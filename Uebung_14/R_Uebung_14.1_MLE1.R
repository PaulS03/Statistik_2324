curve(x*exp(-x*20),from=0,to=0.5,ylim = c(0,0.02),bty="n",
      xlab=expression(lambda),ylab=expression(L(lambda)))
abline(h = 0.0183, col="red", lty="dotted")