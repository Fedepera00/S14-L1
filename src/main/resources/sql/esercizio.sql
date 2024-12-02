    --esercizio 1
    SELECT numero_cliente, nome, cognome, anno_di_nascita, regione_residenza
	FROM public.clienti WHERE nome = 'Mario';

    --esercizio2
    SELECT nome, cognome FROM clienti WHERE anno_di_nascita = '1982-10-23';

    -- esercizio 3
    SELECT numero_fattura, tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore
    AS numero_fatture FROM public.fatture WHERE iva = 22.00;

    --esercizio 4
    SELECT id_prodotto, descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione
	FROM public.prodotti WHERE EXTRACT(YEAR FROM data_attivazione) = 2017
	AND (in_produzione = TRUE OR in_commercio = TRUE);

	--esercizio 5
    SELECT f.numero_fattura, f.importo, c.nome, c.cognome, c.regione_residenza
    FROM fatture f
    JOIN clienti c ON f.id_cliente = c.numero_cliente
    WHERE f.importo < 1000;

    --esercizio 6
    SELECT fatture.numero_fattura, fatture.importo, fatture.iva, fatture.data_fattura, fornitori.denominazione AS nome_fornitore
    FROM fatture
    JOIN fornitori ON fatture.numero_fornitore = fornitori.numero_fornitore;

    --esercizio 7
    SELECT EXTRACT(YEAR FROM fatture.data_fattura) AS anno,
           COUNT(*) AS numero_fatture
    FROM fatture
    WHERE fatture.iva = 22.00
    GROUP BY EXTRACT(YEAR FROM fatture.data_fattura);

    --esercizio 8
    SELECT EXTRACT(YEAR FROM fatture.data_fattura) AS anno,
           COUNT(*) AS numero_fatture,
           SUM(fatture.importo) AS totale_importi
    FROM fatture
    GROUP BY EXTRACT(YEAR FROM fatture.data_fattura);

    --esercizio 9
    SELECT EXTRACT(YEAR FROM fatture.data_fattura) AS anno
    FROM fatture
    WHERE fatture.tipologia = 'abbigliamento'
    GROUP BY EXTRACT(YEAR FROM fatture.data_fattura)
    HAVING COUNT(*) > 2;

    --esercizio 10
    SELECT clienti.regione_residenza,
           SUM(fatture.importo) AS totale_importi
    FROM fatture
    JOIN clienti ON fatture.id_cliente = clienti.numero_cliente
    GROUP BY clienti.regione_residenza;

    --esercizio 11

    /*SELECT COUNT(DISTINCT clienti.numero_cliente) AS numero_clienti
    FROM clienti
    JOIN fatture ON clienti.numero_cliente = fatture.id_cliente
    WHERE clienti.anno_di_nascita = 1980
      AND fatture.importo > 50;*/
