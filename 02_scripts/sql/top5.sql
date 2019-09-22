((SELECT
n.co_ncm
,n.no_ncm_por
,p.no_pais
,sum(e.qt_estat) as total_toneladas
FROM
ds_exportacoes as e
INNER JOIN ds_ncm as n ON e.co_ncm = n.co_ncm
INNER JOIN ds_pais as p ON p.co_pais = e.co_pais
WHERE
n.co_ncm = '12019000'
AND e.co_ano = '2018'
GROUP BY 
n.co_ncm
,n.no_ncm_por
,p.no_pais
ORDER BY
sum(e.qt_estat) DESC
LIMIT 5)
UNION
(SELECT
n.co_ncm
,n.no_ncm_por
,p.no_pais
,sum(e.qt_estat) as total_toneladas --LEMBRE DE TIRAR DEPOIS DO UPGRADE
FROM
ds_exportacoes as e
INNER JOIN ds_ncm as n ON e.co_ncm = n.co_ncm
INNER JOIN ds_pais as p ON p.co_pais = e.co_pais
WHERE
n.co_ncm = '10059010'
AND e.co_ano = '2018'
GROUP BY 
n.co_ncm
,n.no_ncm_por
,p.no_pais
ORDER BY
sum(e.qt_estat) DESC
LIMIT 5))
UNION
(SELECT
n.co_ncm
,n.no_ncm_por
,p.no_pais
,sum(e.qt_estat) as total_toneladas
FROM
ds_exportacoes as e
INNER JOIN ds_ncm as n ON e.co_ncm = n.co_ncm
INNER JOIN ds_pais as p ON p.co_pais = e.co_pais
WHERE
n.co_ncm = '09011110'
AND e.co_ano = '2018'
GROUP BY 
n.co_ncm
,n.no_ncm_por
,p.no_pais
ORDER BY
sum(e.qt_estat) DESC
LIMIT 5)
ORDER BY 1 ASC,4 DESC;