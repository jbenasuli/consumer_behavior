# final_project

[Link to project tracker](https://docs.google.com/spreadsheets/d/1WJBlla5ap6cchO12OfbjRwCKj17eBbcxXQNUqc3g52o/edit#gid=2063972108)

## Presentation (15 points)

[Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit)

### Content

The presentation outlines the project, including the following:

Selected topic: ✅

- Ecommerce Consumer Behavior: An Investigation of Amazon’s Consumer Behavior

Reason they selected the topic: ✅

- Data analysis is key for strategic and well-informed decision making
- Big data allows e-commerce businesses to understand customers better through customer behavior analysis
- Helps target specific customers segments to upsell products, increase conversion rates and grows sales
- Better customer segmentation to improve targeted marketing campaigns and increase sales
- Product reviews are a great source of customer feedback and is one of the main drivers for conversion rates, developing an automated way to process them can help drive product enhancements and accelerate decision making

Description of the source of data: ✅

- All analysis is conducted using publicly available Amazon customer review data
- Reviews from a number of product categories were selected from the list of available [US Reviews Datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)

Questions they hope to answer with the data: ✅

- Question #1: Can we predict which products a customer will most likely purchase together within various product segments?
- Question #2: Can we identify customer segments based on the purchased product categories to better target marketing campaigns?
- Question #3: Can we extract key topics within product reviews to help companies analyze and interpret customer feedback?

Description of the data exploration phase of the project: ✅

- The ETL processes for each research question share a common structure which is summarized below
- Details concerning the distinct procedures of each process can be found in the [presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd0649fe845_0_64)
- ETL Summary:
  - Extract: Customer review datasets are extracted using the PySpark API and read into dataframes using the Spark SQL module
  - Transform: Various PySpark methods are used to transform extracted data into static datasets suitable for analysis
  - Load: Static datasets are loaded as tables into an AWS Postgres DB instance created for the project

Description of the analysis phase of the project: ✅  

- Question #1 is evaluated using Apriori Algorithm Association Analysis
- Question #2 is evaluated using Unsupervised Learning K-Means Cluster Analysis
- Question #3 is evaluated using Natural Language Processing Topic Analysis
- For more information on the ML models used in the project, see [ML Models document](https://docs.google.com/document/d/1K7xTmlPEwLLiv--TL-xZdt9zddprN_vzMdLysG-BxtU/edit?usp=sharing)

### Slides

Draft of Presentation Slides: ✅

- [Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd0128d9d41_0_4)

## GitHub Repository (10 points)

### Main Branch

All code in the main branch is production ready ✅

The main branch should include:

- All code necessary to perform exploratory analysis ✅
- Some code necessary to complete the machine learning portion of the project ✅

### README.md

The README.md must include:

- Description of the communication protocols ✅
  - Team members communicate primarily via slack
  - Questions and comments are also relayed by leveraging the Google Apps' comments tool
  - Deliverables and issues are tracked in the team's google sheet to ensure all team members are aligned on the status of all the project's component parts
  
- Outline of the project (this may include images, but should be easy to follow and digest) ✅

Note: The descriptions and explanations required in all other project deliverables should also be your README.md as part of your outline unless otherwise noted ✅

### Individual Branches

Requirements for the individual branches follow:

- At least one branch for each team member ✅
- Each team member has at least four commits for the duration of the second segment ✅

List of all active branches:

- main
- markdowns
- resources
- dashboard
- database
- ml-model

Note: branches were merged, deleted and recreated before submission.

## Machine Learning Model (30 points)

Team members submit the code for their machine learning model, as well as the following: ✅

- Description of preliminary data preprocessing ✅
- Description of preliminary feature engineering and preliminary feature selection, including their decision- making process ✅
- Description of how data was split into training and testing sets ✅
- Explanation of model choice, including limitations and benefit ✅

Please see the [Machine Learning Models document](https://docs.google.com/document/d/1K7xTmlPEwLLiv--TL-xZdt9zddprN_vzMdLysG-BxtU/edit) for information regarding the project's ML model processes
## Database Integration (30 points)

[Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd6fa5732b4_8_195)

Team members present a fully integrated database:

Database stores static data for use during the project ✅
<img width="798" alt="Screen Shot 2021-05-06 at 6 23 46 PM" src="https://user-images.githubusercontent.com/74932178/117372841-3442ff00-ae98-11eb-98b5-851f9b88777d.png">

Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model) ✅
<img width="993" alt="Screen Shot 2021-05-06 at 6 24 24 PM" src="https://user-images.githubusercontent.com/74932178/117372900-4ae95600-ae98-11eb-8c56-d6eac6e2f80e.png">


Includes at least two tables ✅

[Link to Github](https://github.com/jbenasuli/final_project/tree/database/dev/database/ERDs)

Includes at least one join using the database language (not including any joins in Pandas) ✅

<img width="840" alt="Screen Shot 2021-05-06 at 6 24 51 PM" src="https://user-images.githubusercontent.com/74932178/117372938-5b013580-ae98-11eb-9d8a-23e8108087c3.png">


Includes at least one connection string (using SQLAlchemy or PyMongo) ✅

<img width="1054" alt="Screen Shot 2021-05-06 at 6 25 06 PM" src="https://user-images.githubusercontent.com/74932178/117372957-63597080-ae98-11eb-8c8a-df56806efbfd.png">

General note: If you use a SQL database, you must provide your ERD with relationships. ✅

Please see presentation slides for ERD. [Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd6fa5732b4_8_229)

## Dashboard (15 points)

A blueprint for the dashboard is created and includes all of the following:

Storyboard on Google Slide(s) ✅

[Link to presentation](https://docs.google.com/presentation/d/1BNm6gF_iD4guTDOlRPsiFmyAij_SqHRqjMEp_T4HXd8/edit#slide=id.gd4bf7f7e4a_1_5)

Description of the tool(s) that will be used to create final dashboard ✅

[Link to document](https://docs.google.com/document/d/1lPof0bc4AOgBFZfB7Lall5XLBZpl9NIVMYmQW-yhuiM/edit)

Description of interactive element(s): ✅

[Link to document](https://docs.google.com/document/d/1lPof0bc4AOgBFZfB7Lall5XLBZpl9NIVMYmQW-yhuiM/edit)

## Analysis and Insights

- Draft document describing the questions we have worked on and insights we have so far ✅
- [Link to document](https://docs.google.com/document/d/15iCBus6TBfVCmOw-nTj2KKg-ZvalTn0ShCdW_uw1PM0/edit)

