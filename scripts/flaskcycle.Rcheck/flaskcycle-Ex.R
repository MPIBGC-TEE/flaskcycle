pkgname <- "flaskcycle"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('flaskcycle')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("sampledBoxes")
### * sampledBoxes

flush(stderr()); flush(stdout())

### Name: sampledBoxes
### Title: Collect all information from the report produced by the
###   autosampler about packed boxes and prints a report
### Aliases: sampledBoxes

### ** Examples

sampledBoxes()



cleanEx()
nameEx("selectBox")
### * selectBox

flush(stderr()); flush(stdout())

### Name: selectBox
### Title: Selects data for a single box from all sampled boxes
### Aliases: selectBox

### ** Examples

selectBox(box="B0171", year=2023, sampledBoxes = "~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes/sampledBoxes.csv")
selectBox(box="B0171", sampledBoxes = "~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes/sampledBoxes.csv")




### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
