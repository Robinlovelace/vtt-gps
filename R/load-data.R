source("setup.R")
# load shp data
itea = shapefile("data/itea.shp")
plot(itea)
names(itea)

# load gpx data
# the file name (update as appropriate)
f = "data/2013_10_05_1230__20131005_1230.gpx"
download.file("https://www.openstreetmap.org/trace/1595482/data", f)
(layers = ogrListLayers(f))
tracks = readOGR(f, layer = layers[3])
plot(tracks)
