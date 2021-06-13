using CSV

using Pkg
using DataFrames

Pkg.add("CSV")
Pkg.add("DataFrames")

iris = CSV.read("Iris.csv", normalizenames = true, DataFrame)

typeof(iris)

names(iris)

size(iris)

first(iris, 10)

describe(iris)

iris.Species

#all rows in column 3
iris[:,3]

# 4 rows 2 columns
iris[1:4, 1:2]

Pkg.add("Plots")

Pkg.build("Plots")

using Plots

x = iris.Species

y = iris.PetalLengthCm

plot(x,y)


scatter(x,y)

bar(x,y)

histogram(y)


