# 1. Mostrare tutto il contenuto della tabella.
SELECT * FROM STUDENTI;

# Mostrare solo il contenuto di alcune colonne della tabella.
SELECT NOME, COGNOME
FROM STUDENTI;

# 2. FILTRARE (LOGICA SEMPLICE)
# Trova gli studenti che hanno residenza a Catania.
SELECT * FROM STUDENTI
WHERE RESIDENZA = 'Catania';

# =======================
#  3. OPERATORI BOOLEANI
# =======================
# ==> AND
# Trova tutti gli studenti promossi sia per profitto 
# che per condotta.
SELECT * FROM VOTI
WHERE PROFITTO >= 6
AND CONDOTTA > 7;

# ==> OR
# Trova gli studenti che hanno residenza
# o a Catania o a Palermo.
SELECT * FROM STUDENTI
WHERE RESIDENZA = 'Catania'
OR RESIDENZA = 'Palermo';

# ==> NOT
# Trova gli studenti che non hanno residenza a Milano.
SELECT * FROM STUDENTI
WHERE NOT RESIDENZA = 'Catania';

# ====================
#  4. Filtri avanzati
# ====================
# Trova gli studenti con età compresa tra 18 e 25 anni.
SELECT * FROM STUDENTI
WHERE ETA BETWEEN 18 AND 25;

# Trova gli studenti con residenza a Catania o Palermo.
SELECT * FROM STUDENTI
WHERE RESIDENZA IN ('Catania', 'Palermo');
# Confronta l'operatore IN con l'operatore OR.

# ===============================
#  5. LIKE - Match di un pattern 
# ===============================
# 	Like serve a individuare un testo che segue un pattern, 
#   non una stringa esatta, come fatto in precedenza.

#   %  ->  indica qualsiasi numero di caratteri (anche Zero)
#   _  ->  indica esattamente un carattere

# ==> Trova gli studenti, i cui cognomi cominciano con la lettera 'R'.
SELECT * FROM STUDENTI
WHERE COGNOME LIKE 'R%';

# ==> Trova gli studenti, i cui cognomi finiscono con la lettera 'i'.
SELECT * FROM STUDENTI
WHERE COGNOME LIKE '%i';

# ==> Trova gli studenti, i cui cognomi hanno lunghezza di 5 lettere.
SELECT * FROM STUDENTI
WHERE COGNOME LIKE '_____';

# ==> Trova gli studenti, i cui cognomi iniziano per 'R' e hanno 5 lettere.
SELECT * FROM STUDENTI
WHERE COGNOME LIKE 'R____';

# ==> Trova gli studenti, i cui cognomi hanno 'a' come seconda lettera.
SELECT * FROM STUDENTI
WHERE COGNOME LIKE '_a%';

# ==> Trova gli studenti, i cui cognomi che NON iniziano con 'R'.
SELECT * FROM STUDENTI 
WHERE COGNOME NOT LIKE 'R%';

# ==============
#  6. ORDER BY 
# ==============
# Visualizza gli studenti in base ai cognomi in ordine alfabetico CRESCENTE.
SELECT * FROM STUDENTI
ORDER BY COGNOME ASC;

# Visualizza gli studenti in base all'età in ordine DECRESCENTE.
SELECT * FROM STUDENTI
ORDER BY ETA DESC;

# =========================================================
#  7. Funzione di Aggregazione (AVG, SUM, COUNT, MIN, MAX)
# =========================================================
# Conta il n° totale di studenti
SELECT COUNT(*) FROM STUDENTI;
SELECT COUNT(*) AS tot_studenti FROM STUDENTI;


# Calcola il n° di studenti per città di residenza
SELECT RESIDENZA, COUNT(*) FROM STUDENTI
GROUP BY RESIDENZA;

# Calcola la media dei voti di tutti gli studenti (poco utile).
SELECT AVG(PROFITTO) FROM VOTI;

# Calcola la media dei voti per ciascuno studente.
SELECT STUDENTE_ID, AVG(PROFITTO) FROM VOTI
GROUP BY STUDENTE_ID;
# Esigenza: non vediamo il nome e il cognome associato allo STUDENTE_ID; 
# successivamente scopriremo come vederli

# Per ogni materia, calcoliamo la media dei voti presi in generale.
SELECT MATERIA_ID, AVG(PROFITTO) AS MEDIA FROM VOTI
GROUP BY MATERIA_ID;

# Mostrami gli ID degli studenti e la loro media solo se maggiore o uguale a 7.
SELECT STUDENTE_ID, AVG(PROFITTO) AS MEDIA FROM VOTI
GROUP BY STUDENTE_ID
HAVING AVG(PROFITTO) >= 7;

# ==========
#  8. JOIN
# ==========


