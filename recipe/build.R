# install.packages("BiocManager", dependencies=TRUE, INSTALL_opts=c("--no-lock"), repos="http://cran.us.r-project.org")
install_packages <- function()
{
	successful <- FALSE
	successful<-tryCatch(
	{
#		install.packages(c("digest"), dependencies=TRUE, INSTALL_opts=c("--no-lock"))
		BiocManager::install(c("impute", "preprocessCore", "GO.db", "AnnotationDbi"), dependencies=TRUE, INSTALL_opts=c("--no-lock"))
		return(TRUE)
	},
		error=function(e) {warning(e); return(FALSE)})
	return(successful)
	
}
for(i in seq(0, 10))
{
	if(install_packages())
	{
		break
	}
}
warnings()
install.packages("WGCNA", dependencies=TRUE, INSTALL_opts=c("--no-lock"), repos="http://cran.us.r-project.org", type="binary")
