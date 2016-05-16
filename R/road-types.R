# road type

source("R/load-data.R")

# 1 common road types in the study area

b = bb(i1)

h = osmplotr::extract_osm_objects(key = 'highway', bbox = b)
plot(h)
plot(i1, add = T, col = "red")

bi1 = 