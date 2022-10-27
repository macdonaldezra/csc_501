
# Assignment 1

This project provides scripts and functionality for Assignment 1 of the Data Models and Algorithms course at the University of Victoria.

## MySQL

This project uses MySQL which can be installed by following the instructions found [here](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/) for your respective operating system.


#### Load Data to MySQL

Note that you may need to perform additional steps on your operating system to enable MySQL to load data from files before executing the following commands.

```bash
mysql --local-infile=1 -u root -p
```

## Install Project

This project uses Python 3.9. If you do not have Python 3.9 explicitly installed on your machine, I recommend using a tool like [pyenv](https://github.com/pyenv/pyenv) to install it as it allows you to install and easily manage multiple Python versions and virtual environments. Once you have Python 3.9 installed, you can run the following command to install the project dependencies:

```bash
pip install -r requirements.txt
```
