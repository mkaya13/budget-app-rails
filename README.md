<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    <!-- - [🚀 Live Demo](#live-demo) -->
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  <!-- - [Deployment](#triangular_flag_on_post-deployment) -->
- [👤 Author](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
<!-- - [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq) -->
- [📝 License](#license)

# 📖 Budget App <a name="about-project"></a>

This project a functional Budget App created using Ruby on Rails. It allows user to create transactions with many to many relationship of categories, so that they can track their transaction history.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<!-- <details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details> -->

  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
    <li><a href="https://getbootstrap.com/">Bootstrap</a></li>
    <li><a href="https://www.javascript.com/">JavaScript</a></li>
     <li><a href="https://www.redhat.com/en/topics/api/what-is-a-rest-api#:~:text=choose%20Red%20Hat%3F-,Overview,by%20computer%20scientist%20Roy%20Fielding.">RestAPI</a></li>
  </ul>

### Key Features <a name="key-features"></a>

- **Transactions**
- **Authentication and Authorization**
- **Table Logic**
- **Add Data to DB**

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- IDE or code editor: **VsCode, atom, sublime**...
- To have [Ruby](https://www.ruby-lang.org/en/) and [Git](https://git-scm.com/) installed on your system.
- To have [Node.js](https://nodejs.org/) installed on your system.

After installing Ruby, run the following command to install rails.-

```sh
 gem install rails
```

### Setup

- Clone this project on your local machine using the following command in your terminal:

- Make sure to add .env file on your root directory and setup your .env file with your postgres username and password!

```sh
  git clone https://github.com/Linushaddai99/Group-Recipe-app.git
  bundle install
  rails s
```

### Install

Run the following command to install all project's dependencies:

```sh
  cd recipe-app
  bundle install
  node install
```

### Running the app

rails db:create:all
rails db:migrate
rails db:seed ### to populate the database with some sample data.
rails s ## to start the server.
http://localhost:3000 ## app link in the browser

### Usage

`bundle install`

Next setup your .env so that you can create your dbs. Then:

`rails db:create`

`rails db:migrate`

`rails db:seed`

`rails c` --> To run rails console

`rails s` --> To run rails server

### Run tests

- Make sure to add data to the test db or create dummy data on the test files inside rspec folder.

`bundle install`

`rspec spec`

## 👤 Author <a name="author"></a>

👤 **Mert Kaya**

- GitHub: [@mkaya13](https://github.com/mkaya13)
- Twitter: [@mkaya133](https://twitter.com/mkaya133)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mkaya13/)

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add GUI**
- [ ] **Add User Pages**
- [ ] **Add More Items**
- [ ] **Improve Items**

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## ⭐️ Show your support <a name="support"></a>

If you like this project, kindly give it a star ⭐️

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Microverse
- Ruby on Rails Documentation🙃
- Every person who inspired this codebase.
- Original design idea by Gregoire Vella on Behance with changes and updates [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/legalcode)

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
```
