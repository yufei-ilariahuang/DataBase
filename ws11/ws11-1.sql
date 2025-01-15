WITH CTE AS
	(
	SELECT
		id, country, state, amount,
		DATE_FORMAT(trans_date, '%Y-%m') AS month
	FROM Transactions
	WHERE state = 'approved'
	UNION
	SELECT
		c.trans_id, t.country, 'chargeback' AS state, t.amount,
		DATE_FORMAT(c.trans_date, '%Y-%m') AS month
	FROM Chargebacks c
	LEFT JOIN Transactions t ON c.trans_id = t.id
	)
# SELECT * FROM CTE;
SELECT
	month,
    country,
    SUM(IF(state='approved', 1, 0)) AS approved_count,
    SUM(IF(state='approved', amount, 0)) AS approved_amount,
    SUM(IF(state='chargeback', 1, 0)) AS chargeback_count,
    SUM(IF(state='chargeback', amount, 0)) AS chargeback_amount
FROM CTE
GROUP BY month, country
;
