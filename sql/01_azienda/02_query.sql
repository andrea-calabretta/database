
# 1. Trovare matricola, nome, età e
#    stipendio degli impiegati che 
#    guadagnano più di 40

select matricola, nome, eta, stipendio 
from Impiegato 
where stipendio > 40;


# 2. Trovare le matricole dei capi
#	 degli impiegati che guadagnano 
#	 più di 40

SELECT s.Capo
FROM impiegato i
JOIN supervisione s
  ON i.Matricola = s.Impiegato  
WHERE i.Stipendio > 40;

# prima recupero gli impiegati che 
# guadagnano più di 40, e POI mi chiedo
# chi sono i loro capi, e devo uguagliare 
# le colonne sui cui fare perno

# 3. Trovare nome e stipendio dei capi
# 	 degli impiegati che guadagnano
#    più di 40

SELECT c.Nome, c.Stipendio
FROM impiegato i
JOIN supervisione s
  ON i.Matricola = s.Impiegato
JOIN impiegato c
  ON s.Capo = c.Matricola
WHERE i.Stipendio > 40;

# prima recupero gli impiegati che 
# guadagnano più di 40, poi mi chiedo
# chi sono i loro capi, poi devo fare
# un altra join per recuperare nomi
# e stipendi di questi capi.






