# Machine Learning Schema

## Objective

Help Amazon identify consumer and product trends and predict
consumer behavior.

## Research Question(s)

1. Can we predict which products a consumer will most likely purchase together across product categories?

## Machine Learning Model

## Apriori Algorithm

General Definition

- Apriori is an algorithm for frequent item set mining and association rule learning over relational databases. It proceeds by identifying the frequent individual items in the database and extending them to larger and larger item sets as long as those item sets appear sufficiently often in the database. The frequent item sets determined by Apriori can be used to determine association rules which highlight general trends in the database: this has applications in domains such as market basket analysis.
- Link: <https://en.wikipedia.org/wiki/Apriori_algorithm>

MLxtend Machine Learning Library

- <http://rasbt.github.io/mlxtend/>
- This library/the functions being used are transformed extensions of classic apriori
- MLxtend Frequent Itemsets
  - Apriori function to extract frequent itemsets for association rule mining
  - from mlxtend.frequent_patterns import apriori
  - <http://rasbt.github.io/mlxtend/user_guide/frequent_patterns/apriori/>

### Other Notes

- Medium article : <https://medium.com/edureka/apriori-algorithm-d7cc648d4f1e>
- ‘Apriori Algorithm is a Machine Learning algorithm which is used to gain insight into the structured relationships between different items involved. The most prominent practical application of the algorithm is to recommend products based on the products already present in the user’s cart. Walmart especially has made great use of the algorithm in suggesting products to it’s users.’ - GeeksforGeeks
- The Apriori algorithm evaluates and predicts which items within a dataset will most likely be purchased together. This can be extremely helpful to Amazon, as it can help them create associations between frequently purchased items to target for advertising and as a guide to suggesting new products to customers.
