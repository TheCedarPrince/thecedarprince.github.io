@def title = "Exploring Ancestors and Descendants of a Concept"
@def slug = "07282021202459-exploring-ancestors-concept"
@def tags = ["ohdsi", "sql", "ancestor", "descendant", "r", "archive"]
@def description = "How to explore ancestors and descendants of OHDSI concepts"

@def rss_title = "Exploring Ancestors and Descendants of a Concept"
@def rss_description = "How to explore ancestors and descendants of OHDSI concepts"
@def rss_pubdate = Date(2021, 7, 28)


Exploring Ancestors and Descendants of a Concept
=========

**Date:** July 28 2021

**Summary:** How to explore ancestors and descendants of OHDSI concepts

**Keywords:** #ohdsi #sql #ancestor #descendant #r  #archive

Bibliography
==========

EHDEN Academy

Table of Contents
=========

\toc

### Setting Up Environment

#### Installation Requirements

We install the OHDSI dummy database, `Eunomia`, to write our queries:

```R
install.packages(c("SqlRender", "DatabaseConnector", "remotes"))
remotes::install_github("ohdsi/Eunomia", ref = "v1.0.0")
```

We will also install the package `knitr` for viewing and working with resulting tables easily:

```R
install.packages("knitr")
```

#### Making Connection to Eunomia

Here we load the `DatabaseConnector` library to connect to `Eunomia`: 

```R
library('DatabaseConnector')
```

And set a connection to Eunomia

```R
connectionDetails <-Eunomia::getEunomiaConnectionDetails()
connection <- connect(connectionDetails)
```

#### Querying Ancestors from OHDSI

First we need to write our SQL query as follows:

```R
sql <-	"
	SELECT max_levels_of_separation, concept.*
	FROM @cdm.concept_ancestor
	JOIN concept ON ancestor_concept_id = concept_id
	WHERE descendant_concept_id = 313217
	ORDER BY max_levels_of_separation
	"
```

And then we can run our SQL query and return the results as follows:

```
result <- renderTranslateQuerySql(connection, sql,cdm ="main")
knitr::kable(result)
```

#### Querying Descendants from OHDSI

First we need to write our SQL query as follows:

```R
sql <-	"
	SELECT max_levels_of_separation, concept.*
	FROM @cdm.concept_ancestor
	JOIN concept ON descendant_concept_id = concept_id
	WHERE descendant_concept_id = 4478217
	ORDER BY max_levels_of_separation
	"
```

And then we can run our SQL query and return the results as follows:

```
result <- renderTranslateQuerySql(connection, sql,cdm ="main")
knitr::kable(result)
```

## References

## References:
## Discussion: 

{{ addcomments }}
