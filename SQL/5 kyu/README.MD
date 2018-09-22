## SUMMARY

This Repository contains all my completed code katas taken from http://wwww.codewars.com with a difficuly level of 5 kyu

### SQL CHALLENGES

1.CALCULATING RUNNING TOTAL

Description of Kata: Given a posts table that contains a created_at timestamp column write a query that returns date (without time component), a number of posts for a given date and a running (cumulative) total number of posts up until a given date.

Difficulty: kyu5

Module: Runningtotal.sql

Link: https://www.codewars.com/kata/589cf45835f99b2909000115/train/sql

2.Using LATERAL JOIN To Get Top N per Group

Description
Given the schema presented below write a query, which uses a LATERAL join, that returns two most viewed posts for every category.

Order the result set by:

category name alphabetically
number of post views largest to lowest
post id lowest to largest
Note:
Some categories may have less than two or no posts at all.
Two or more posts within the category can be tied by (have the same) the number of views. Use post id as a tie breaker - a post with a lower id gets a higher rank.

Module: Top_n_per_group.sql

Link: https://www.codewars.com/kata/5820176255c3d23f360000a9/train/sql
