# install.packages("BiocManager", dependencies=TRUE, INSTALL_opts=c("--no-lock"), repos="http://cran.us.r-project.org")
install_packages <- function()
{
	successful <- FALSE
	successful<-tryCatch(
	{
		BiocManager::install(c("impute", "preprocessCore", "GO.db", "AnnotationDbi"), dependencies=TRUE, INSTALL_opts=c("--no-lock"))
		return(TRUE)
	},
		error=function(e) {warning(e); return(FALSE)})
	return(successful)
	
}
if(version$major < 4)
{
	# Install the old version of foreign
	if(.Platform$OS.type == "windows"){
		install.packages("https://cran.r-project.org/bin/windows/contrib/3.6/foreign_0.8-76.zip")
	}else{
		install.packages("https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-76.tar.gz")
	}
}
for(i in seq(0, 10))
{
	if(install_packages())
	{
		break
	}
}
warnings()
install.packages("WGCNA", dependencies=TRUE, INSTALL_opts=c("--no-lock"), repos="http://cran.us.r-project.org")
