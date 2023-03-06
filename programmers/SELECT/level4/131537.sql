SELECT DATE_FORMAT(A.SALES_DATE, "%Y-%m-%d") AS SALES_DATE, A.PRODUCT_ID, A.USER_ID, A.SALES_AMOUNT
FROM ONLINE_SALE A
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 3
UNION ALL
SELECT DATE_FORMAT(B.SALES_DATE, "%Y-%m-%d") AS SALES_DATE, B.PRODUCT_ID, NULL AS USER_ID, B.SALES_AMOUNT
FROM OFFLINE_SALE B
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 3
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID