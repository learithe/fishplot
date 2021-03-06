% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/object.R
\name{createFishObject}
\alias{createFishObject}
\title{Create a fish object after doing some input validation and data munging}
\usage{
createFishObject(
  frac.table,
  parents,
  timepoints = NULL,
  col = NULL,
  clone.labels = NULL,
  clone.annots = NULL,
  clone.annots.angle = 0,
  clone.annots.col = "black",
  clone.annots.pos = 2,
  clone.annots.cex = 0.7,
  clone.annots.offset = 0.2,
  fix.missing.clones = FALSE
)
}
\arguments{
\item{frac.table}{A numeric matrix containing tumor fraction estimates for all clones at all timepoints}

\item{parents}{An integer vector specifying parental relationships between clones}

\item{timepoints}{An numeric vector specifying the timepoints for each column of the matrix}

\item{col}{A vector of colors to use when plotting each clone}

\item{clone.labels}{A character vector of names to assign to each clone when plotting a legend}

\item{clone.annots}{A character vector of annotations (mutation) to label to each clone in the plot}

\item{clone.annots.angle}{A numeric angle in degrees (0-360) giving the angle at which to plot the annotations}

\item{clone.annots.col}{A string giving the color with which to draw the clone annotations}

\item{clone.annots.pos}{An integer describing the position for the clone annotations (1=below, 2=left, 3=above, 4=right)}

\item{clone.annots.cex}{A numeric specifying the clone annotation text size ("character expansion factor")}

\item{clone.annots.offset}{A numeric specifying distance ("offset") of the annotation from the clone start point}

\item{fix.missing.clones}{A boolean value, telling whether to "correct" clones that have zero values at timepoints between non-zero values. (the clone must still have been present if it came back). Default FALSE.}
}
\value{
A fish object with the relevant slots filled
}
\description{
Create a fish object after doing some input validation and data munging
}
\examples{
timepoints=c(0,30,75,150)
frac.table = matrix(
    c(100, 45, 00, 00,
       02, 00, 00, 00,
       02, 00, 02, 01,
       98, 00, 95, 40),
    ncol=length(timepoints))
parents = c(0,1,1,3)
fish = createFishObject(frac.table,parents,timepoints=timepoints)

}
