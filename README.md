# 💡 BBC Customer Analysis - Personal Project
This is my personal project to find and analyze the patterns on BBC customers, Service and Transaction. Thus, the results give the answer to know if the different BBC ages have different serviceid cluster, and how we do cross-sale to customers.
## ✔ Skills:
`SQL`
`Python`

## Data Description
- Servicedid: The identity of the transaction.
- Date: the date that transaction is performed.
- User_id: The identity of the individual customer.
- User_age: the difference between LastServiceDate and FristServiceDate.

## 📌 Questions and Findings
1. **Determine whether customers in different BBC ages have different serviceid cluster?**
<details>
  <summary> Results </summary>
  

- Customers in 30_age group tend to use Serviceid of 487, 1014, 299, 47, 65.  
- Customers in 100_age group tend to use Serviceid of 333, 667, 981, 1014, 487  
- Customers in 200_age group tend to use Serviceid of 981, 20, 1014, 271, 326. 
- Customers in 300_age group tend to use Serviceid of 18, 667, 333, 981, 268. 
- Customers in 300_plus_age group tend to use Serviceid of 981, 19, 1014, 2, 271.

</details>

  
2. **We would like to know which serviceid we can cross-sales to users?**
<details>
  <summary> Results </summary>
  
- If the customer buy serviceid_667, we will cross-sell the serviceid_333 with the Support of 19%, Confidence ~ 92% and Lift >1.
- If the customer buy serviceid_333, we will cross-sell the serviceid_667 with the Support of 19%, Confidence ~ 99% and Lift >1.
- If the customer buy serviceid_981, we will cross-sell the serviceid_1014 with the Support of 17%, Confidence ~ 62% and Lift >1.
- If the customer buy serviceid_1014, we will cross-sell the serviceid_268 with the Support of 17%, Confidence ~ 79% and Lift >1.
- If the customer buy serviceid_982, we will cross-sell the serviceid_268 with the Support of 11%, Confidence ~ 98% and Lift >1.

....
- If the customer buy serviceid_326, we will cross-sell the serviceid_666 with the Support of 10%, Confidence of 100% and Lift >1.


</details>

## 📝 Key Takeaways
- Know how to use multiple `CTE` and `Natural join` for query optimization and time efficiency.
- Learn to take use of `Python` built-in libraries for data preparation, wrangling and exploration.
- Apply the Association Rules and Apriori Algorigm for cross-selling technique.
- Learn the  `Python` attribute for Exploratory Data Analysis.

🌟 View my project [here](https://github.com/Augustisme/BBC-Customer-Analysis-Personal-Project/blob/main/bbc-customer-analysis%20.ipynb) or on [Kaggle](https://www.kaggle.com/augustisme/bbc-customer-analysis)
