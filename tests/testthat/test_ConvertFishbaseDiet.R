#Test to see if ConvertFishbaseDiet works properly.
#Will test data is downloaded, filtered, and formatted
test_that("ConvertFishbaseDiet function works", {
  skip_on_cran()
  all.diets <- try(ConvertFishbaseDiet(ExcludeStage = NULL), silent = TRUE)
  #download all diet data
  if ("try-error" %in% class(all.diets)) {
    skip("could not connect to remote database")
  } else{
    filtered.diets <- ConvertFishbaseDiet(ExcludeStage = "larvae")#download data without larval stages
    expect_true(nrow(filtered.diets$DietItems) < nrow(all.diets$DietItems))#Check function is removing desired records for larval stages
    expect_length(filtered.diets, 2)#Check that the length is what we expect it to be
    expect_equal(ncol(filtered.diets$Taxonomy), 2)#Check that the taxonomy has desired number of columns
  }
})