RUNCMD := R --vanilla -f

.PHONY: all
all: data plot1.R plot2.R plot3.R plot4.R
	$(RUNCMD) plot1.R
	$(RUNCMD) plot2.R
	$(RUNCMD) plot3.R
	$(RUNCMD) plot4.R

data: household_power_consumption.txt
	head -n1 household_power_consumption.txt > chopped.txt
	egrep '^(1|2)/2/2007' household_power_consumption.txt >> chopped.txt

.PHONY: clean
clean:
	rm -f *.png
