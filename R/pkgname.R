#' Diet Estimated Trophic Levels in R
#'
#' @description Estimates fractional trophic level from quantitative and qualitative diet data and calculates electivity indices in R.
#'
#' @details 
#' Package: dietr
#' 
#' Type: Package
#' 
#' Title: An R package to estimate trophic level from diet and food item data
#' 
#' Version: 1.1.6
#' 
#' Date: 2025-1-2
#' 
#' License: GPL (>= 2)
#' 
#' This package allows users to calculte trophic levels from proportional diet data or from food 
#' items given trophic levels of the prey items. This package calculates trophic level following 
#' the procedures from TrophLab, which was a Microsoft Access program. This implementation is faster
#' than the original microsoft access program and also allows for a hierarchical estimation of 
#' trophic level given a corresponding "taxonomy" data frame (i.e. estimate trophic level for a 
#' individual,population,species, etc.). It also contains other functions for measuring electivity 
#' indices, compound trophic indices (ex. Feeding Quotient, Index of Preponderance), Vacuity Index,
#' and Gastro-somatic Index.
#'  
#' @author Samuel Borstein
#' Maintainer: Samuel Borstein <sam@borstein.com>
#' 
#' @seealso \code{\link{Electivity}},\code{\link{ConvertFishbaseFood}},\code{\link{DietTroph}},\code{\link{FoodTroph}}
#' 
#' @name dietr
#"_PACKAGE"
NULL