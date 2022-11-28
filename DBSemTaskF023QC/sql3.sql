SELECT COUNT(vev.vevőID) AS Nem_MasterCard_kártyák FROM éttermek.vevő vev
JOIN éttermek.bankkártya bank ON bank.vevőID = vev.vevőID
WHERE bank.típus != 'MasterCard';