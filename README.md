## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 VET CLINIC ](#-vet-clinic-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
  - [👥 Authors ](#-authors-)
  - [🤝 Contributing ](#-contributing-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 VET CLINIC <a name="about-project"></a>


**VET CLINIC** contains SQL scripts for setting up a database for a vet clinic and performing various queries on the data.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>



- **Database Setup**: Easily create a PostgreSQL database named `vet_clinic` with the provided SQL scripts.

- **Table Creation**: Initialize the database with a `animals` table, complete with columns for `id`, `name`, `date_of_birth`, `escape_attempts`, `neutered`, and `weight_kg`.

- **Sample Data**: Populate the database with sample data, including information about animals' names, birthdates, escape attempts, neutering status, and weight.

- **Query Templates**: Access pre-written SQL queries for common tasks such as finding animals by name, birth year, neutering status, weight, and more.

- **Custom Queries**: Write and execute your own SQL queries to extract specific information from the database.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
* PostgresSql installed

### Setup

1. Create a PostgreSQL database named `vet_clinic`.
2. Run the SQL commands in `schema.sql` to create the `animals` table.
3. Insert sample data using the SQL commands in `data.sql`.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

👤 **Akorede**

- GitHub: [@githubhandle](https://github.com/Akorede3133)
- Twitter: [@twitterhandle](https://twitter.com/SaheedAkorede7)
- LinkedIn: [LinkedIn](https://linkedin.com/in/akorede)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Akorede3133/vet_clinic/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>


I would like to thank Microverse for providing a ground to learn.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
