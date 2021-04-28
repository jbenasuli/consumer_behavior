# Sentiment Analysis:

## Overview

Sentiment analysis (or opinion mining) is a natural language processing technique used to determine whether data is positive, negative or neutral. Sentiment analysis is often performed on textual data to help businesses monitor brand and product sentiment in customer feedback, and understand customer needs.

Natural Language Processing, usually shortened as NLP, is a branch of artificial intelligence that deals with the interaction between computers and humans using the natural language. The ultimate objective of NLP is to read, decipher, understand, and make sense of the human languages in a manner that is valuable. The methods by which NLP tries to achieve this is by implementing methods such as sentence segmentation, word tokenization, identifying stop words, finding noun phrases, name entity recognition, 

Any machine learning model that hopes to achieve suitable accuracy needs to be able to determine what textual information is relevant to the prediction at hand, have an understanding of negation, human patterns of speech, idioms, metaphors, etc, and be able to assimilate all of this knowledge into a rational judgment about a quantity as vast as “sentiment.”


Traditional machine learning methods such as Naïve Bayes, Logistic Regression and Support Vector Machines (SVM) are widely used for large-scale sentiment analysis because they scale well.

## Traditional ML methods

Here is a brief description of some of the traditional ML methods mentioned above:

- Naïve Bayes: Naive Bayes classifiers are a collection of classification algorithms based on Bayes’ Theorem. It is not a single algorithm but a family of algorithms where all of them share a common principle, i.e. every pair of features being classified is independent of each other. The fundamental Naive Bayes assumption is that each feature makes an equal and independent contribution to the outcome. Bayes’ Theorem finds the probability of an event occurring given the probability of another event that has already occurred. Basically, we are trying to find the probability of event A, given the event B is true. (References: <https://en.wikipedia.org/wiki/Naive_Bayes_classifier> , <https://www.geeksforgeeks.org/naive-bayes-classifiers/>)
    
- Logistic Regression: Logistic regression is a technique borrowed by machine learning from the field of statistics. The logistic function, also called the sigmoid function was developed by statisticians to describe properties of population growth in ecology, rising quickly and maxing out at the carrying capacity of the environment. It’s an S-shaped curve that can take any real-valued number and map it into a value between 0 and 1, but never exactly at those limits. Logistic Regression predicts probabilities. For example, if we are modeling people’s sex as male or female from their height, then the first class could be male and the logistic regression model could be written as the probability of male given a person’s height. Logistic regression becomes a classification technique only when a decision threshold is brought into the picture. The setting of the threshold value is a very important aspect of Logistic regression and is dependent on the classification problem itself. (References: <https://machinelearningmastery.com/logistic-regression-for-machine-learning/> , <https://www.geeksforgeeks.org/understanding-logistic-regression/>)

- Support Vector Machines (SVM): Support Vector Machine (SVM) is a relatively simple Supervised Machine Learning Algorithm used for classification and/or regression. It is more preferred for classification but is sometimes very useful for regression as well. Basically, SVM finds a hyper-plane that creates a boundary between the types of data. In 2-dimensional space, this hyper-plane is nothing but a line. Hyper-planes are decision boundaries that help classify the data points. Data points falling on either side of the hyper-plane can be attributed to different classes. Also, the dimension of the hyper-plane depends upon the number of features. If the number of input features is 2, then the hyper-plane is just a line. (Reference: <https://www.geeksforgeeks.org/introduction-to-support-vector-machines-svm/>)        

## Research Question

1. Can we predict which products a consumer will most likely purchase together across product categories?  

Based on our research question one approach could possibly be to use sentiment analysis on customer reviews to see which items that complement a purchased item is mentioned in a review and how favorably it is regarded. Specifically in eCommerce companies can use sentiment analysis to develop their strategies, to understand customers’ feelings towards products or brands, how people respond to their campaigns or product launches and why consumers don’t buy some products.

Some dependencies/packages or tools that may be able to assist us with this question and possibly simplify the analysis are:

- Natural Language ToolKit (NLTK): The NLTK module is a massive tool kit, aimed at helping with the entire Natural Language Processing (NLP) methodology.      



- TextBlob: TextBlob module is a Python library and offers a simple API to access its methods and perform basic NLP tasks. It is built on the top of NLTK module. TextBlob uses polarity and a subjectivity instead of the different scores featured in the NTLK module, but it's basically the same idea.



__*It is important to note*__ that NLTK's Sentiment Intensity Analyzer uses a tool called VADER, which is a list of words that have a sentiment associated with each of them. For example:
- The word “Tragedy” would have a sentiment score of -3.4 
- The word “Rejoiced” would have a sentiment score of 2.0
- The word “Disaster” would have a sentiment score of -3.1
- The word “Great” would have a sentiment score of 3.1

If you have more positives, the sentence is more positive. If you have more negatives, it's more negative. It can also take into account things like capitalization.

TextBlob's sentiment analysis is based on a separate library called pattern. Pattern is similar to NLTK's VADER, but it specifically looks at words from customer reviews. Pattern looks at (mostly) adjectives that occur in customer reviews and hand-tags them.

TextBlob's other option uses a NaiveBayesAnalyzer as mentioned earlier in this sentiment analysis research document. When you use this option with TextBlob, the sentiment is coming from "an NLTK classifier trained on a movie reviews corpus." (References: <https://colab.research.google.com/github/littlecolumns/ds4j-notebooks/blob/master/sentiment-analysis-is-bad/notebooks/Comparing%20sentiment%20analysis%20tools.ipynb#scrollTo=wfegbtpi6qUV> , <https://www.geeksforgeeks.org/python-tokenize-text-using-textblob/> , <https://www.geeksforgeeks.org/python-sentiment-analysis-using-vader/>) 
