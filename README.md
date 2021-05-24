# Analyzing Ecommerce Consumer Behavior through Amazon Reviews

## Presentation

[Presentation PDF](Group1_EcommConsumerBehavior.pdf)

## Overview

### Background

This page contains a summary of our study into consumer behavior. In order to gain insight into how big data can offer ecommerce companies greater opportunity to drive sales and revenue, we leveraged machine learning algorithms to analyze Amazon customer data.

### Research Questions

- Question #1: Can we identify customer segments based on the purchased product categories to better target marketing campaigns?
- Question #2: Can we identify which products a customer will most likely purchase together?
- Question #3: Can we extract key topics within product reviews to help companies analyze and interpret customer feedback?

### Source data

- All analysis is conducted using publicly available Amazon customer review data
- Reviews from a number of product categories were selected from the list of available [US Reviews Datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)

## Data & Technologies

### Languages

- Python
- JS
- HTML
- SQL

A full list of requirements can be found in the [requirments.txt](requirements.txt) document

### Data Exploration

- The ETL processes for each research question share a common structure which is summarized below
- Details concerning the distinct procedures of each process can be found in the [presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd0649fe845_0_64)
- ETL Summary:
  - Extract: Customer review datasets are extracted using the PySpark API and read into dataframes using the Spark SQL module
  - Transform: Various PySpark methods are used to transform extracted data into static datasets suitable for analysis
  - Load: Static datasets are loaded as tables into an AWS Postgres DB instance created for the project
- Copies of the Google Colab notebooks used can be found in the [dev/database/Amazon_Vine-PySpark-ETLs](https://github.com/jbenasuli/consumer_behavior/tree/main/dev/database/Amazon_Vine-PySpark-ETLs) directory

### Machine Learning Models

- Question #1 is evaluated using Unsupervised Learning [K-Means Cluster Analysis](https://github.com/jbenasuli/consumer_behavior/blob/main/KMeans-Customer_Segmentation.ipynb)
- Question #2 is evaluated using Apriori Algorithm Association Analysis
  - The analysis for Apparel, Furniture, Music and Office Products is contained in [this notebook](https://github.com/jbenasuli/consumer_behavior/blob/main/Apriori-Apparel_Furniture_Music_Office.ipynb)
  - The analysis for Personal Care Applicances, Video Games, Videos and Watches is contained in [this notebook](https://github.com/jbenasuli/consumer_behavior/blob/main/Apriori-PersonalCare_VideoGames_Videos_Watches.ipynb)
- Question #3 is evaluated using Natural Language Processing [Topic Analysis](https://github.com/jbenasuli/consumer_behavior/blob/main/Topic_Analysis-Airmattress.ipynb)
- For more information about key packages used in the project's ML models, refer to repositories listed below:
  - K-Means Analysis
    - [scikit-learn](https://github.com/scikit-learn/scikit-learn)
    - [hvPlot](https://github.com/holoviz/hvplot)
  - Apriori Analysis
    - [MLxtend](https://github.com/rasbt/mlxtend)
  - Topic Analysis
    - [NLTK](https://github.com/nltk/nltk)
    - [Spacy](https://github.com/explosion/spaCy)
    - [pyLDAvis](https://github.com/bmabey/pyLDAvis)

## Analysis and Insights

### Results Summary

K-Means Cluster Analysis

- 44% of customers buying products from multi-categories, largest segment
- Cluster 2 (furniture): priority for marketing campaign since there are current customers from Cluster 4 that buys furniture and other products
- Create additional campaigns to cluster 0, 1 and 3 … give discount in other product categories to incentivize product mix and sales

Apriori Analysis

- Higher confidence in same product category instead of various categories (as per data exploration)
- Videos and music categories are the only categories with higher confidence outputs (> 60%)
- Low risk of showing product recommendations with low confidence level … only impact is UX in website

Topic Analysis

- Similar words between topics for good and bad reviews with different connotation
- Analysis can be biased by person interpreting the outputs, hard to extract meaning of topics
- Hard to identify different topics, similar words and feedback, recommended only for a superficial analysis
- Need to improve corpus to combine words for more accurate analysis

### Dashboard and Presentation

[Project Dashboard](https://jbenasuli.github.io/consumer_behavior/)

[Project Google Slides](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit)

### Proposal for Further Study

K-Means Cluster Analysis

- Used customer reviews as a proxy to customer purchases, for next analysis it will be good to access real sales data
- Create A/B testing on website within customer segments to see if targeted marketing campaigns based on K-means customer segmentation can increase sales

Apriori Analysis

- Need more processing power, since it limited the number of products in analysis
- Used customer reviews as a proxy to customer purchases, for next analysis it will be good to access real sales data

Topic Analysis

- Need to improve corpus to combine words for more accurate analysis
- Expand analysis to a larger products set to test and validate improved corpus
- Create an analysis based on specific time frames to evaluate if different topics emerge
