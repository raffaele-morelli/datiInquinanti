% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pm25.R
\docType{data}
\name{pm25}
\alias{pm25}
\title{Dati giornalieri relativi all'PM25 per tutte le stazioni sul territorio}
\format{
Un tibble con dati da gennaio 2016 a giugno 2020 con 5 variabili:
\describe{
\item{reporting_year}{Anno della rilevazione}
\item{pollutant_fk}{Chiave esterna dell'inquinante}
\item{station_eu_code}{Codice europeo della stazione}
\item{date}{Data della rilevazione}
\item{value}{Dato osservato}
}
}
\usage{
pm25
}
\description{
Per ottenere i dati regionali degli inquinani è sufficiente utilizzare le
funzionalità del pacchetto dplyr
}
\examples{
# i dati relativi al PM25 della regione Piemonte  
dplyr::filter(stazioniAria, region_id == 1) \%>\% inner_join(pm25, by = c("station_eu_code")) 

# analogo al precedente ma usando una *ricerca* (match) sul campo 'regione'
dplyr::filter(stazioniAria, grepl("piemonte", regione, ignore.case = TRUE)) \%>\% inner_join(pm25, by = c("station_eu_code")) 

}
\keyword{datasets}