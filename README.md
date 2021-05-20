# Analyzing Ecommerce Consumer Behavior through Amazon Reviews

## Presentation

[Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit)

## Overview

### Background

The goal of the project is to investigate how big data and machine learning can help ecommerce companies drive growth and improvements.

### Research Questions

- Question #1: Can we predict which products a customer will most likely purchase together within various product segments?
- Question #2: Can we identify customer segments based on the purchased product categories to better target marketing campaigns?
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
- Copies of the Google Colab notebooks used can be found in the [dev/database/Amazon_Vine-PySpark-ETLs](https://github.com/jbenasuli/final_project/tree/main/dev/database/Amazon_Vine-PySpark-ETLs) directory

### Machine Learning Models

- Question #1 is evaluated using Apriori Algorithm Association Analysis
  - The analysis for Apparel, Furniture, Music and Office Products is contained in [this notebook](https://github.com/jbenasuli/final_project/blob/main/Apriori-Apparel_Furniture_Music_Office.ipynb)
  - The analysis for Personal Care Applicances, Video Games, Videos and Watches is contained in [this notebook](https://github.com/jbenasuli/final_project/blob/main/Apriori-PersonalCare_VideoGames_Videos_Watches.ipynb)
- Question #2 is evaluated using Unsupervised Learning [K-Means Cluster Analysis](https://github.com/jbenasuli/final_project/blob/main/KMeans-Customer_Segmentation.ipynb)
- Question #3 is evaluated using Natural Language Processing [Topic Analysis](https://github.com/jbenasuli/final_project/blob/main/Topic_Analysis-Airmattress.ipynb)
- For more information on the ML models used in the project, see [ML Models document](https://docs.google.com/document/d/1K7xTmlPEwLLiv--TL-xZdt9zddprN_vzMdLysG-BxtU/edit?usp=sharing)

## Analysis and Insights

### Results Summary

- Group 1 Analysis Summary

### Results Vizulization

[Project Dashboard](https://jbenasuli.github.io/final_project/)

### Proposal for Further Study

Enter idea here.
