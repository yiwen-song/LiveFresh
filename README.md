# LiveFresh Data Analysis                                                                                                                 
## Introduction
This project performs an exploratory data analysis of sales data in LiveFresh Ltd. The program language utilized in this project is T-SQL within MS SQL Server. 

## Data Source
The datasets is downlaoded from [Kaggle-Refreshment_Sales](https://www.kaggle.com/yiorgos1973/refreshment-sales) and contains 4 csv files.

## Description 
LiveFresh Ltd is a dynamic company with Vertical Organisation of Production. Manufactures and sells 5 products that belong in the categories of refreshments and energy drinks. The company provides these 5 products in three different containers. From 2012 until the end of 2018 the company had 6 different points of sales (stores) in 5 big cities. The quality of the products is considered elegant and the prices of them are higher than the competition.

The questions to be answered beyond an exploratory analysis and different summarizations are:
Which shop, city, brand sells better from 2012-2018? 

## Tasks
### 1.summarize the sales amount and quanlity by shop, city
| shop   	| city         	| total_sales 	| total_quantity 	|
|--------	|--------------	|-------------	|----------------	|
| shop_6 	| Patra        	| 50276274.82 	| 52761542       	|
| shop_4 	| Thessaloniki 	| 40288901.85 	| 42368801       	|
| shop_2 	| Irakleion    	| 36944204.7  	| 39114047       	|
| shop_1 	| Athens       	| 30405166.43 	| 32542165       	|
| shop_5 	| Larisa       	| 27567396.17 	| 29590924       	|
| shop_3 	| Athens       	| 23944500.4  	| 26050880       	|
Shop 6 has the best sales amount and quantity compared to other 5 shops. 

### 2.rank top 3 from the total sales amount by brand for each shop
| shop   	| brand        	| total_sales 	| ranking 	|
|--------	|--------------	|-------------	|---------	|
| shop_1 	| adult-cola   	| 7000320.37  	| 1       	|
| shop_1 	| orange-power 	| 6968245.4   	| 2       	|
| shop_1 	| gazoza       	| 5792074.45  	| 3       	|
| shop_2 	| adult-cola   	| 8549767.36  	| 1       	|
| shop_2 	| orange-power 	| 8258138.22  	| 2       	|
| shop_2 	| gazoza       	| 7120402.23  	| 3       	|
| shop_3 	| adult-cola   	| 5585374.29  	| 1       	|
| shop_3 	| orange-power 	| 5571533.37  	| 2       	|
| shop_3 	| gazoza       	| 4456680.98  	| 3       	|
| shop_4 	| adult-cola   	| 9524794.59  	| 1       	|
| shop_4 	| orange-power 	| 9200481.71  	| 2       	|
| shop_4 	| gazoza       	| 7545998.77  	| 3       	|
| shop_5 	| orange-power 	| 6438831.63  	| 1       	|
| shop_5 	| adult-cola   	| 6384738.3   	| 2       	|
| shop_5 	| gazoza       	| 5075864.13  	| 3       	|
| shop_6 	| adult-cola   	| 11782737.28 	| 1       	|
| shop_6 	| orange-power 	| 11254952.86 	| 2       	|
| shop_6 	| gazoza       	| 9636374.08  	| 3       	|
Brand adult-cola and orange-power are the top sellers among 6 stores. 

## 3.list each brand's total sales across shops by year
| brand        	| 2012       	| 2013       	| 2014       	| 2015             	| 2016       	| 2017             	| 2018       	|
|--------------	|------------	|------------	|------------	|------------------	|------------	|------------------	|------------	|
| adult-cola   	| 6359928.7  	| 6704126.16 	| 6768791.59 	| 7020783.55       	| 7139530.92 	| 7340689.59       	| 7493881.68 	|
| gazoza       	| 5435524.83 	| 5551856.79 	| 5610161.61 	| 5653803.41000001 	| 5739293.85 	| 5772914.2        	| 5863839.95 	|
| kinder-cola  	| 4823675.59 	| 4963566.06 	| 5092058.31 	| 5174746.34       	| 5319978.24 	| 5387573.28       	| 5508604.94 	|
| lemon-boost  	| 4944162.79 	| 5042531.18 	| 5164511.82 	| 5295709.95       	| 5375225.49 	| 5563451.55       	| 5623338.81 	|
| orange-power 	| 6435517.66 	| 6504731.42 	| 6729562.35 	| 6762136.01       	| 6861138.51 	| 7100930.30000001 	| 7298166.94 	|
All five brands have growing sales from 2012 to 2018. 

## 4. rank the average yearly sales and population in 2018 by city
| city         	| avg_year_sale    	| rank_sale 	| pop2018 	| rank_pop 	|   	
|--------------	|------------------	|-----------	|---------	|----------	|
| Athens       	| 7764238.11857143 	| 1         	| 664046  	| 1        	|   	
| Patra        	| 7182324.97428571 	| 2         	| 168034  	| 3        	|   	
| Thessaloniki 	| 5755557.40714286 	| 3         	| 354290  	| 2        	|   
| Irakleion    	| 5277743.52857143 	| 4         	| 137154  	| 4        	|   
City Athens has the largest average yearly sales and population.

## 5. list shop 6 each brand's yearly sales from 2016 to 2018
| brand        	| year_nbr 	| yearly_sales 	|
|--------------	|----------	|--------------	|
| adult-cola   	| 2016     	| 1750069.69   	|
| adult-cola   	| 2017     	| 1764686.41   	|
| adult-cola   	| 2018     	| 1796027.48   	|
| gazoza       	| 2016     	| 1373811.12   	|
| gazoza       	| 2017     	| 1423520.87   	|
| gazoza       	| 2018     	| 1400812.55   	|
| kinder-cola  	| 2016     	| 1284262.06   	|
| kinder-cola  	| 2017     	| 1316763.31   	|
| kinder-cola  	| 2018     	| 1340279.62   	|
| lemon-boost  	| 2016     	| 1289819.21   	|
| lemon-boost  	| 2017     	| 1331033.79   	|
| lemon-boost  	| 2018     	| 1338098.26   	|
| orange-power 	| 2016     	| 1618839.52   	|
| orange-power 	| 2017     	| 1653477.07   	|
| orange-power 	| 2018     	| 1729759.11   	|
All five brands' yearly sales is growing from 2016 to 2018. 
