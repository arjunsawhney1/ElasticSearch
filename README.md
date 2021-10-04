# ElasticSearch Project
Github project adapted from my summer project at Whatfix.
In this repo, I attempt to quantify the search relevance of different query settings using the Normalized Discounted Cumulative Gain (NDCG).

## Normalized Discounted Cumulative Gain (NDCG)
To measure search relevancy, we will use NDCG as our metric. This is because NDCG is the only metric that looks at all the search result and calculates one metric from the drops in relevancy between all ranked search results. We shall use the ElasticSearch relevancy `score` as our relevancy metric. However, this metric is flawed because relevancy is a subjective term. To really attempt to measure search relevancy, we would have to have a large dataset of human ranked scores for all search results for a fixed set of search terms.  In the absence of this data, however, we shall resort to the ElasticSearch relevancy `score`

Read more: https://en.wikipedia.org/wiki/Discounted_cumulative_gain

## Visualization
We generate plots to compare the NDCG by search result rank for the base query and the new query
