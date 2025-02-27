% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ConvertFishbaseFood.R
\name{ConvertFishbaseFood}
\alias{ConvertFishbaseFood}
\title{Converts FishBase/SealifBase food item diet data obtained from the diet function into a usable format for dietr}
\usage{
ConvertFishbaseFood(FishBaseFood, ExcludeStage = NULL)
}
\arguments{
\item{FishBaseFood}{a data frame produced by the rfishbase fooditem function}

\item{ExcludeStage}{a character, indicating which life stages to exclude. Must match stage names given by rfishbase (i.e. larvae, rec./juveniles, juv./adults, adults).}
}
\value{
a list of length two, with two data frames. One containing the re-formatted food item data and one containing the Taxonomy with species names.
}
\description{
Converts FishBase/SealifBase food item diet data obtained from the diet function into a usable format for dietr
}
\details{
This converts the data frame produced by rfishbase fooditem function into a usable format for dietr.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
\donttest{
#Get rfishbase food item data for a few species
my.food <- try(as.data.frame(rfishbase::fooditems(c("Lutjanus apodus","Epinephelus itajara"))))
if (!"try-error" \%in\% class(my.food)) {
#use the ConvertFishbaseFood function to format it for dietr and exclude recruits/juveniles
cleaned.food <- ConvertFishbaseFood(FishBaseFood=my.food, ExcludeStage=c("larvae","recruits/juv."))
cleaned.food
}
}
\dontshow{\}) # examplesIf}
}
\author{
Samuel Borstein
}
