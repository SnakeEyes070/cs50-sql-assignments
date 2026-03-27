# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Random partitioning distributes data evenly across all boats, which helps balance load and prevents any single boat from becoming overloaded. However, it makes queries inefficient, since data for a specific time range may exist on all boats, requiring the query to run on every boat.

## Partitioning by Hour

Partitioning by hour allows efficient queries for time based data, since observations from a specific time range are stored on a single boat. However, it can lead to uneven data distribution, as boats handling high activity time periods may become overloaded.

## Partitioning by Hash Value

Hash partitioning distributes data evenly across boats, ensuring balanced storage and performance. However, it makes range queries inefficient, since related data may be spread across all boats, requiring queries to run on multiple boats.
