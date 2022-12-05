SELECT név FROM éttermek.vevő
WHERE EXISTS (SELECT típus FROM éttermek.bankkártya c WHERE c.típus = 'PayPal');

