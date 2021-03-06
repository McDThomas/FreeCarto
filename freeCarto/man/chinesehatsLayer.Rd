% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ChinesehatsLayer.R
\name{chinesehatsLayer}
\alias{chinesehatsLayer}
\title{chinesehatsLayer}
\usage{
chinesehatsLayer(spdf, df, spdfid = NULL, dfid = NULL, var1, var2,
  col1 = "red", col2 = "blue", k, add = TRUE)
}
\arguments{
\item{spdf}{SpatialPolygonsDataFrame}

\item{df}{DataFrame with Ids and Labels}

\item{spdfid}{Ids of the obj Spatial*DataFrame}

\item{dfid}{Ids of the DataFrame}

\item{var1}{Symbols variable 1 (numeric)}

\item{var2}{Symbols variable 2 (numeric)}

\item{col1}{Symbols color top}

\item{col2}{Symbols color bottom}

\item{k}{Share of the map occupied by symbols}

\item{add}{Whether to add the layer to an existing map (TRUE) or not (FALSE)}
}
\description{
Plot a "chinese hat" layer
}
\examples{
data("nuts2006")
nuts0.df$sharepop <- round((nuts0.df$pop2008 / sum(nuts0.df$pop2008))*100,2)
nuts0.df$sharegdp <- round((nuts0.df$gdppps2008 / sum(nuts0.df$gdppps2008))*100,2)
plot(countries.spdf,col="#E0E0E0",border="white",lwd=1)
plot(nuts0.spdf,col="#E5CFC1",border="white",lwd=2,add=TRUE)
chinesehatsLayer(spdf = nuts0.spdf, df = nuts0.df, spdfid=NULL, dfid=NULL,var1 = "sharepop",
var2 = "sharegdp", col1="#FF9100",col2="#45C945",k = 0.2, add=TRUE)
}

