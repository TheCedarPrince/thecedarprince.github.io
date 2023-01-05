+++
title = "Learning MySQL"
slug = "03152021204433-mysql-programming"
tags = ["zettel", "mysql", "sql", "query", "language", "databases", "archive"]
description = "Notes on my adventures in learning MySQL syntax and concepts"
rss_title = "Learning MySQL"
rss_description = "Notes on my adventures in learning MySQL syntax and concepts"
rss_pubdate = Date(2021, 3, 15)
+++



Learning MySQL
=========

**Date:** March 15 2021

**Summary:** Notes on my adventures in learning MySQL syntax and concepts

**Keywords:** ##zettel #mysql #sql #query #language #databases #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Security

#### Adjusting Password Security

##### Low Validate Password Policy

```sql
SET GLOBAL validate_password.policy=LOW;
```

### Managing Users and Permissions

#### User Creation

```sql
CREATE USER 'username'@'localhost' IDENTIFIED BY 'mypassword';
```

#### Adding User Permissions

##### Grant User Permission to Everything

```sql
GRANT ALL PRIVILEGES ON * . * TO 'username'@'localhost';
```

### Manipulating Databases

#### Create a Database

```sql
CREATE DATABASE mydatabase;
```

### Manipulating Tables

#### Creating Tables

#### Keys

##### Primary Key

```sql
CREATE TABLE foo (
	id INT PRIMARY KEY
);
```

#### Wildcards

##### Gobble

```sql
SELECT * FROM table WHERE last_name LIKE '%Smith';
```

##### Placeholder

```sql
SELECT * FROM table WHERE date LIKE '____-10%';
```

## References

## References
## Discussion: 

{{ addcomments }}
