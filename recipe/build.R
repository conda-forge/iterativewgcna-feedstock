install.packages("BiocManager", dependencies=TRUE, INSTALL_opts=c("--no-lock"), repos="http://cran.us.r-project.org")
BiocManager::install(c("impute", "preprocessCore", "GO.db", "AnnotationDbi"))
install.packages("WGCNA", dependencies=TRUE, INSTALL_opts=c("--no-lock"), repos="http://cran.us.r-project.org")
