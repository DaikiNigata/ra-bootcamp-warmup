#cleaning Dataの読込
df_3 <- read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/intermediate/clean_covariates.csv")
df_2 <- read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/intermediate/clean_outcome.csv")
df_1 <- read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/intermediate/clean_semester_dummy.csv")

#Mastar Dataの作成
install.packages("dplyr")
library("dplyr")
left_joined_data <- left_join(df_1, df_2, df_3, by = "unitid")

#各列のNAの個数
colSums(is.na(left_joined_data))
    
#問題背景などを知る上で役立つ記述統計の作成


