SELECT  irányítószám,
        közterület_neve,
        közterület_megnevezése,
        házszám,
        emelet_ajtó,
        rend.megjegyzés
FROM éttermek.vevő vev
JOIN éttermek.rendelés rend ON rend.vevőID = vev.vevőID
WHERE rend.megjegyzés IS NOT NULL;