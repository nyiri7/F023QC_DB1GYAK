SELECT * FROM éttermek.vevő vev
WHERE vev.vevőID NOT IN (SELECT DISTINCT vevőID FROM éttermek.bankkártya);