A sample SAP CAP (Cloud Application Programming) project demonstrating domain modeling, service exposure via OData V4, relational data modeling, and persistence using PostgreSQL with Docker.
This project forms part of a Deloitte technical interview submission.

.

Project Overview

This project implements a simple Bookshop API using SAP CAP.
It models books, authors, and their relationships, including:

-Books with genre and rating

-Authors

-BookAuthors (join table) for the many-to-many association

-AdminService that exposes OData endpoints

-PostgreSQL persistence running in Docker

-Testable HTTP requests in the /test/http folder

-The goal is to demonstrate strong fundamentals in CAP domain modeling, service design, and real database integration.
