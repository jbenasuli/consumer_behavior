# Technologies Used

## Data Cleaning and Analysis

- All code is written in python with Google Colab serving as the notebook environment.
- Pyspark is used to extract all the data and complete part of the transformation.
- Pandas is used to finish transforming the data and load the data into a csv file.
- The csv dataset is cleaned one last time using python and pandas completing the ETL process.

## Database Storage

Data which has been through the ETL pipeline is currently stored in flat files (csv).
No output storage has been selected. Once we have a better understanding of the size/shape of the output dataset and our dashboard/visualization needs, we will reevaluate this aspect of the pipeline.

## Machine Learning

The Frequent Itemsets via Apriori Algorithm from the MLxtend library -an extension of the Apriori Function- is used to extract frequent itemsets from our dataset. By leveraging several methods/functions from the mlxtend.frequent_patterns subpackage, we are able to easily transform and analyze our dataset for items purchased together.

Apriori API

- apriori(df, min_support=0.5, use_colnames=False, max_len=None, verbose=0, low_memory=False)
- Get frequent itemsets from a one-hot DataFrame
- Parameters
  - df : pandas DataFrame
  - min_support : float (default: 0.5)
    - A float between 0 and 1 for minimum support of the itemsets returned. The support is computed as the fraction transactions_where_item(s)_occur / total_transactions.
  - use_colnames : bool (default: False)
    - If True, uses the DataFrames' column names in the returned DataFrame instead of column indices.
  - max_len : int (default: None)
    - Maximum length of the itemsets generated. If None (default) all possible itemsets lengths (under the apriori condition) are evaluated.
  - verbose : int (default: 0)
    - Shows the number of iterations if >= 1 and low_memory is True. If =1 and low_memory is False, shows the number of combinations.
  - low_memory : bool (default: False)
    - If True, uses an iterator to search for combinations above min_support. Note that while low_memory=True should only be used for large dataset if memory resources are limited, because this implementation is approx. 3-6x slower than the default.
- Returns
  - pandas DataFrame with columns ['support', 'itemsets'] of all itemsets that are >= min_support and < than max_len (if max_len is not None). Each itemset in the 'itemsets' column is of type frozenset, which is a Python built-in type that behaves similarly to sets except that it is immutable (For more info, see <https://docs.python.org/3.6/library/stdtypes.html#frozenset>).
- Examples
  - For usage examples, please see <http://rasbt.github.io/mlxtend/user_guide/frequent_patterns/apriori/>

Source: <http://rasbt.github.io/mlxtend/user_guide/frequent_patterns/apriori/>

Unsupervised Machine Learning

- Create customer segmentation based on product category
- Goal is to target specific segments based on categories purchased
- Data is loaded from PostgresSQL using SQLalchemy in a Google cloab notebook environment. 
- Code for KMeans analysis is written in Python using Google colab. 
- The sklearn.cluster dependency is used to utilize the KMeans library for analysis.

Natural Language Processing 
- Data is loaded from PostgresSQL using SQLalchemy in a Google colab notebook environment.
- Code for the Topic Analysis is written in Python using Google Colab as the notebook environment.
- Libraries:
  - spaCy 
[Link to documentation](https://pypi.org/project/spacy/#:~:text=spaCy%20is%20a%20library%20for,and%20training%20for%2060%2B%20language)

  - NLTK
    - Stopwords
    - WordNetLemmetizer
    - Word_tokenize
    - FreqDist
[Link to documentation](https://www.nltk.org/)

  - Wordcloud
    - Wordcloud, STOPWORDS
 [Link to documentation](https://amueller.github.io/word_cloud/)

## Dashboard

- **TBD**
- Example options:
  - Visualization library such as Plotly
  - Web app using Flask
  - APIs
- Coding language(s)
  - HTML
  - JS
  - Python

## Collaboration/Project Management

- Project Management: Google Sheets
- Notebook Environment: Google Colab
- Word Processing: Google Docs
- File/version control management: GitHub
- Code Editor: VS Code

## Description of Communication Protocols

Team members communicate primarily via slack
Questions and comments are also relayed by leveraging the Google Apps' comments tool
Deliverables and issues are tracked in the team's google sheets to ensure all team members are aligned on the status of all the project's component parts
All project files are available to team members via this Github repo
