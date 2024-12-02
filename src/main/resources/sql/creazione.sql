INSERT INTO public.clienti(
	nome, cognome, anno_di_nascita, regione_residenza)
	VALUES
	( 'Mario', 'Rossi', '1999-12-15', 'Toscana'),
	( 'Luca', 'Bianchi', '1980-11-19', 'Piemonte'),
	( 'Federico', 'Peralta', '1982-10-23', 'Sicilia'),
	( 'Christian', 'Aquilante', '1990-08-12', 'Toscana');

	INSERT INTO public.fornitori(
    	 denominazione, regione_residenza)
    	VALUES
    	( 'Fornitore 1', 'Toscana'),
    	( 'Fornitore 2', 'Sicilia'),
    	( 'Fornitore 3', 'Piemonte');

    	INSERT INTO public.prodotti(
        	 descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione)
        	VALUES
        	( 'Prodotto 1', TRUE, TRUE, '2017-03-01', NULL),
        	( 'Prodotto 2', FALSE, TRUE, '2016-05-15', '2020-01-01'),
        	( 'Prodotto 3', TRUE, FALSE, '2017-06-10', NULL);

        	INSERT INTO public.fatture(
            	 tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore)
            	VALUES
            	( 'abbigliamento', 150.00, 22.00, 1, '2022-06-10', 1),
            	( 'accessori', 190.00, 22.00, 2, '2022-06-10', 2),
            	( 'musica', 100.00, 22.00, 3, '2022-06-10', 1),
            	( 'informatica', 500.00, 22.00, 4, '2022-06-10', 3);