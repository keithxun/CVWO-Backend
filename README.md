# Blog Application

## Description

This application allows verified users to create posts where other users can comment on them. It uses react, toast, material-ui for frontend and ruby on rails on the backend. Docker is used to host the web page on AWS but currently this service is not avaliable.

## Table of Contents

- [Installation](#installation)

- [Usage](#usage)

- [Features](#features)

- [Configuration](#configuration)

- [Contact](#contact)

## Installation

This application is built with Ruby on Rails. Ensure that Ruby is installed on your computer. This app has to be run concurrently with the react frontend. The backend can be cloned from "https://github.com/keithxun/CVWO-Frontend.git"

Run the following comment to install the required gems

`$ bundle install`

## Usage

The React frontend runs on `localhost:3001`, while the Ruby on Rails backend runs on `localhost:3000`.

Example:

# To Run Ruby on Rails backend

$ rails s

## Features

- Create & Delete Posts

- Create Comments

- Account management (Create Account, Sign In & Sign Out) with account authentication through headers

## Configuration

Configure the credentials for the postgres database in config/database.yml
Port for hosting the server can be configured in config/puma.rb

# To create database on rails

`$ rails db:create`

# To generate migration on rails

`$ rails generate migration Name`

# To migrate

`$ rails db:migrate`

## Contact

For any questions, issues, or feedback, feel free to reach out:

- Email: keithonghx@gmail.com
