# SQL Projects

This repository contains various SQL-related projects and queries to demonstrate skills in database management and data manipulation.

## Projects

1. **Data Cleaning with SQL**
: This project demonstrates various techniques for cleaning data in SQL. It uses an ecommerce customer database to showcase how to handle common data cleaning challenges, such as:

      - **Handling Missing Data**: 
        - Identifying and replacing missing values in key fields like email and total spent.
      - **Removing Duplicates**:
        - Finding and removing duplicate records based on criteria like first name, last name, and email.
      - **Fixing Inconsistent Data Formatting**:
        - Standardizing phone numbers and city/country names for consistency.
      - **Handling Outliers**:
        - Identifying and capping outliers in the `total_spent` column.
      - **Data Transformation**:
        - Converting string dates to a standard date format and ensuring correct data types.
      - **Dealing with Irrelevant Data**:
        - Dropping unnecessary columns and removing irrelevant rows.
      - **Data Consistency**:
        - Ensuring referential integrity and checking for logical consistency in the data.
      - **Date/Time Data Handling**:
        - Ensuring dates are correctly formatted and parsed.
      - **Validation and Reporting**:
        - Enforcing data constraints (e.g., unique emails) and generating reports for validation and profiling.

   
2. **Insta Data Clone** : This project mimics the data structure of an Instagram-like social media platform. It demonstrates various SQL operations such as managing users, photos, comments, likes, and tags. The database schema is designed to handle social media interactions between users, their posts, and the engagement (likes, comments, follows).

      Key features:
      
      - **Users Table**: Stores information about the users such as username and account creation date.
      - **Photos Table**: Contains information about the photos posted by users, including the photo's URL and user reference.
      - **Comments Table**: Users can comment on photos, and each comment is linked to a photo and a user.
      - **Likes Table**: Records which users have liked which photos, allowing tracking of engagement.
      - **Follows Table**: Allows users to follow one another, forming a network of followers and followees.
      - **Tags Table**: Allows tagging of photos, and the junction table `photo_tags` is used to link photos to tags.
      
      #### Key SQL Queries:
      
      - **Find the 5 oldest users**: Selects the users who have been around the longest based on their `created_at` timestamp.
      - **Day of the week with most registrations**: Identifies which day of the week has the highest number of user signups. This can help schedule marketing campaigns.
      - **Find users who have never posted a photo**: Selects users who have registered but never uploaded a photo.
      - **Find the most liked photo**: Identifies which photo has received the most likes.
      - **User ranking by the number of posts**: Ranks users based on the number of photos they have posted.
      - **Find the top 5 most commonly used hashtags**: Determines which hashtags are most frequently used across photos.
      - **Identify users who have liked every photo**: Finds users who have liked all the photos posted in the platform, which could indicate bot activity.
      - **Find users who have never commented on any photos**: Helps identify inactive users who have not interacted with the photos by leaving comments.
      - **Identify the percentage of users who have either never commented or have commented on every photo**: This helps determine the level of user engagement with photos and comments.
      

3. **SQL 30 Queries**
   - A collection of 30 useful SQL queries for practical data manipulation.

## Getting Started

To get started with these projects, clone the repository to your local machine using the following command:

```bash
git clone https://github.com/Success-The-Analyst/SQL-Projects.git
```

Once cloned, you can navigate to the respective folders and run SQL queries on any database that supports them (e.g., MySQL, PostgreSQL, SQLite).

## Prerequisites

Ensure you have a working SQL database environment to execute the queries. You can use MySQL, PostgreSQL, or any other SQL-based database management system.

## Contributing

Feel free to fork the repository, submit pull requests, or raise issues if you find any bugs or have suggestions for improvement.
