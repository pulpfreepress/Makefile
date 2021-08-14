# Makefile
Makefile template that uses Grep, SED, and AWK to generate a help menu.

# Usage

Running `make` with no target specified displays the menu. Running `make check-tools` calls the check-tools target, which iterates over the **TOOLS** list and verifies they're available, as figure 1 illustrates.

<img src="images/Makefile.png">
<p align="center">Figure 1 - Running make and make check-tools</p>

## Add Menu Text

To add menu text append two hash tags to the end of each target line followed by a space followed by the menu description text.

**Example:** 

build: **##** *Build target descriptive text goes here...*


## TOOLS List

The **TOOLS** list is pre-populated with `aws node git python3`  -- Change these as you see fit

