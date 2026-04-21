/* le mot-clé permetant de supprimer les doublons est DELETE */

DELETE FROM table
    LEFT OUTER JOIN (
        SELECT MIN(id) as id, champ1, champ2, champ3
        FROM table
        GROUP BY champ1, champ2, champ3
    ) as t1
ON table.id = t1.id
WHERE t1.id IS NULL