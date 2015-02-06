RUNCMD := R --vanilla -f

.PHONY: all
all: plot1.R plot2.R plot3.R plot4.R
	$(RUNCMD) plot1.R
	$(RUNCMD) plot2.R
	$(RUNCMD) plot3.R
	$(RUNCMD) plot4.R

.PHONY: clean
clean:
	rm -f *.png
