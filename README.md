# Netflix-Analytics-Project
# Movie Data Analysis Project

This project analyzes a movie dataset, processes it using Python, stores it in an SQLite database, and visualizes key insights using Power BI.

## Project Setup

1.  **Dependencies:** Install the required Python libraries:
    ```bash
    pip install pandas sqlalchemy matplotlib
    ```

2.  **Database Setup:**  The project uses a local SQLite database. The database file (`movie_database.db`) is included in the repository. No external database setup is needed.

## Running the Python Scripts

1.  **Data Processing:** Run the data processing scripts to clean and prepare the data (replace with your actual script name):
    ```bash
    python your_data_processing_script.py
    ```

2.  **Database Population:** Run the script to load the data into the SQLite database (replace with your actual script name):
    ```bash
    python your_database_population_script.py
    ```

## Connecting to the Database and Viewing the Data

You can use a SQLite browser or Python libraries to connect to the database and view the data.  For example, using Python and SQLAlchemy:
```python
import sqlalchemy as sa
gine = sa.create_engine("sqlite:///movie_database.db")
# Your database queries go here
```

## SQL Schema

The database schema includes three tables:

*   **movies:** Stores movie details (imdbId, title, type, release year, rating, votes, genres).
*   **countries:** Stores country availability for each movie (imdbId, country).
*   **genres:** Stores genres for each movie (imdbId, genre).

## Power BI Dashboard

To interact with the Power BI dashboard, open the `.pbix` file in Power BI Desktop, refresh the data, and explore the visualizations.

## Project Summary

This project demonstrates a complete data analysis workflow, from data preparation and database integration to interactive data visualization.

## Deliverables

*   **SQL Database:** `movie_database.db`
*   **Power BI Dashboard:** (Power BI file will be a separate deliverable)
"""

with open("README.md", "w") as f:
    f.write(readme_content)
print("README.md created.")
