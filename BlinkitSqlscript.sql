SELECT * FROM blinkit_data;

SELECT ROUND(SUM(Total_Sales)/ 1000000,2) AS Total_Sales_in_millions FROM blinkit_data;

SELECT ROUND(AVG(Total_Sales), 2)  AS AVG_Sales FROM blinkit_data;

SELECT COUNT(*) AS No_of_items FROM blinkit_data;

SELECT ROUND(AVG(Rating),2) AS AVG_Rating FROM blinkit_data;

SELECT Item_Fat_Content, 
ROUND(SUM(Total_Sales),2) AS Total_Sales_by_fat_content,
ROUND(AVG(Total_Sales), 2)  AS AVG_Sales,
COUNT(*) AS No_of_items,
ROUND(AVG(Rating),2) AS AVG_Rating
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY SUM(Total_Sales) DESC;


SELECT Item_Type, 
ROUND(SUM(Total_Sales),2) AS Total_Sales_by_fat_content,
ROUND(AVG(Total_Sales), 2)  AS AVG_Sales,
COUNT(*) AS No_of_items,
ROUND(AVG(Rating),2) AS AVG_Rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY SUM(Total_Sales) DESC;

SELECT Outlet_Location_type, Item_Fat_Content, 
ROUND(SUM(Total_Sales),2) AS Total_Sales_by_fat_content,
ROUND(AVG(Total_Sales), 2)  AS AVG_Sales,
COUNT(*) AS No_of_items,
ROUND(AVG(Rating),2) AS AVG_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type, Item_Fat_Content
ORDER BY SUM(Total_Sales) DESC;

SELECT Outlet_Establishment_Year, SUM(Total_Sales) AS Total_Sales FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

-- Total Sales and Percentage of Sales by Outlet size
SELECT Outlet_Size,
ROUND(SUM(Total_Sales),2) AS TOTAl_Sales,
ROUND(SUM(Total_Sales) * 100 / SUM(SUM(Total_Sales)) OVER(),2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- Sales By Outlet Location

SELECT Outlet_Location_Type, 
ROUND(SUM(Total_Sales),2) AS Total_Sales_by_fat_content,
ROUND(AVG(Total_Sales), 2)  AS AVG_Sales,
COUNT(*) AS No_of_items,
ROUND(AVG(Rating),2) AS AVG_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY SUM(Total_Sales) DESC;

