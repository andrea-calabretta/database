# 1. Mostrare tutto il contenuto della tabella.
SELECT * FROM studenti;

# Mostrare solo il contenuto di alcune colonne della tabella.
SELECT nome, cognome
FROM studenti;

# 2. FILTRARE (LOGICA SEMPLICE)
# Trova gli studenti che hanno residenza a Catania.
SELECT * FROM studenti
WHERE residenza = 'Catania';

# =======================
#  3. OPERATORI BOOLEANI
# =======================
# ==> AND
# Trova tutte le iscrizioni promosse sia per profitto 
# che per condotta.
SELECT * FROM iscrizioni
WHERE profitto >= 6
AND condotta > 7;

# ==> OR
# Trova gli studenti che hanno residenza
# o a Catania o a Palermo.
SELECT * FROM studenti
WHERE residenza = 'Catania'
OR residenza = 'Palermo';

# ==> NOT
# Trova gli studenti che NON hanno residenza a Catania.
SELECT * FROM studenti
WHERE NOT residenza = 'Catania';

# ====================
#  4. Filtri avanzati
# ====================
# Trova gli studenti con età compresa tra 18 e 25 anni.
SELECT * FROM studenti
WHERE eta BETWEEN 18 AND 25;

# Trova gli studenti con residenza a Catania o Palermo.
SELECT * FROM studenti
WHERE residenza IN ('Catania', 'Palermo');
# Confronta l'operatore IN con l'operatore OR.

# ===============================
#  5. LIKE - Match di un pattern 
# ===============================
# ==> Trova gli studenti, i cui cognomi cominciano con la lettera 'R'.
SELECT * FROM studenti
WHERE cognome LIKE 'R%';

# ==> Trova gli studenti, i cui cognomi finiscono con la lettera 'i'.
SELECT * FROM studenti
WHERE cognome LIKE '%i';

# ==> Trova gli studenti, i cui cognomi hanno lunghezza di 5 lettere.
SELECT * FROM studenti
WHERE cognome LIKE '_____';

# ==> Trova gli studenti, i cui cognomi iniziano per 'R' e hanno 5 lettere.
SELECT * FROM studenti
WHERE cognome LIKE 'R____';

# ==> Trova gli studenti, i cui cognomi hanno 'a' come seconda lettera.
SELECT * FROM studenti
WHERE cognome LIKE '_a%';

# ==> Trova gli studenti, i cui cognomi che NON iniziano con 'R'.
SELECT * FROM studenti 
WHERE cognome NOT LIKE 'R%';

# ==============
#  6. ORDER BY 
# ==============
# Visualizza gli studenti in base ai cognomi in ordine alfabetico CRESCENTE.
SELECT * FROM studenti
ORDER BY cognome ASC;

# Visualizza gli studenti in base all'età in ordine DECRESCENTE.
SELECT * FROM studenti
ORDER BY eta DESC;

# =========================================================
#  7. Funzione di Aggregazione (AVG, SUM, COUNT, MIN, MAX)
# =========================================================
# Conta il n° totale di studenti
SELECT COUNT(*) FROM studenti;
SELECT COUNT(*) AS tot_studenti FROM studenti;

# Calcola il n° di studenti per città di residenza
SELECT residenza, COUNT(*) FROM studenti
GROUP BY residenza;

# Calcola la media dei voti di profitto di tutti gli studenti (poco utile).
SELECT AVG(profitto) FROM iscrizioni;

# Calcola la media dei voti di profitto per ciascuno studente.
SELECT id_studente, AVG(profitto) FROM iscrizioni
GROUP BY id_studente;
# Esigenza: non vediamo il nome e il cognome associato a id_studente; 
# successivamente scopriremo come vederli (JOIN)

# Per ogni materia, calcoliamo la media dei voti di profitto presi in generale.
SELECT id_materia, AVG(profitto) AS media FROM iscrizioni
GROUP BY id_materia;

# Mostrami gli ID degli studenti e la loro media solo se maggiore o uguale a 7.
SELECT id_studente, AVG(profitto) AS media FROM iscrizioni
GROUP BY id_studente
HAVING AVG(profitto) >= 7;

# ==========
#  8. JOIN
# ==========
