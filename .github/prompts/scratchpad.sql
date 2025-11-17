SELECT
    l.Language AS Language,
    c.Category AS Category,
    COUNT(ci.Id) AS CustomIntelliSenseCount
FROM Languages l
    JOIN Categories c ON 1=1
    LEFT JOIN CustomIntelliSense ci
    ON ci.LanguageID = l.ID AND ci.CategoryID = c.ID
WHERE ci.Id IS NOT NULL
GROUP BY l.[Language], c.Category
ORDER BY l.[Language], c.Category


SELECT *
FROM Languages


SELECT *
FROM Categories

SELECT *
FROM CustomIntelliSense


SELECT *
FROM Launcher

SELECT
    c.Category AS Category,
    l.Name AS Launcher,
    COUNT(l.ID) AS LauncherCount
FROM Categories c
    JOIN Launcher l ON l.CategoryID = c.ID
GROUP BY c.Category, l.Name
ORDER BY c.Category, l.Name