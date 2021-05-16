# Analyzing Ecommerce Consumer Behavior through Amazon Reviews

## Presentation (15 points)

[Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit)

## Overview

### Background

- Data analysis is key for strategic and well-informed decision making
- Big data allows e-commerce businesses to understand customers better through customer behavior analysis
- Helps target specific customers segments to upsell products, increase conversion rates and grows sales
- Better customer segmentation to improve targeted marketing campaigns and increase sales
- Product reviews are a great source of customer feedback and is one of the main drivers for conversion rates, developing an automated way to process them can help drive product enhancements and accelerate decision making

### Source data

- All analysis is conducted using publicly available Amazon customer review data
- Reviews from a number of product categories were selected from the list of available [US Reviews Datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)

### Research Questions

- Question #1: Can we predict which products a customer will most likely purchase together within various product segments?
- Question #2: Can we identify customer segments based on the purchased product categories to better target marketing campaigns?
- Question #3: Can we extract key topics within product reviews to help companies analyze and interpret customer feedback?

## Data & Technologies

### Languages

- Python
- JS
- HTML
- SQL

### Data Exploration

- The ETL processes for each research question share a common structure which is summarized below
- Details concerning the distinct procedures of each process can be found in the [presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd0649fe845_0_64)
- ETL Summary:
  - Extract: Customer review datasets are extracted using the PySpark API and read into dataframes using the Spark SQL module
  - Transform: Various PySpark methods are used to transform extracted data into static datasets suitable for analysis
  - Load: Static datasets are loaded as tables into an AWS Postgres DB instance created for the project

### Machine Learning Models

- Question #1 is evaluated using Apriori Algorithm Association Analysis
- Question #2 is evaluated using Unsupervised Learning K-Means Cluster Analysis
- Question #3 is evaluated using Natural Language Processing Topic Analysis
- For more information on the ML models used in the project, see [ML Models document](https://docs.google.com/document/d/1K7xTmlPEwLLiv--TL-xZdt9zddprN_vzMdLysG-BxtU/edit?usp=sharing)

A full list of requirements can be found in the [requirments.txt](link-to-file) document

## Analysis and Insights

### Results Summary

- [Group 1 Analysis Summary](https://github.com/jbenasuli/final_project/blob/main/Final_Project_Group1_Analysis_Summary.pdf)

### Results Vizulization

[Project Dashboard](https://jbenasuli.github.io/final_project/)

### Proposal for Further Study

Enter idea here.
