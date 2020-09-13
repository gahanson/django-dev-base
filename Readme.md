Django Docker development environment  

This setup provides a basic django project and postgres database to start a new project with.  

1. Fill out .env files with required info.  
2. At the command line, ~# docker-compose up --build
3. That's it, once the containers are running you are ready to develop. The /src folder is bind mounted to the source directory in the container and the development web server has been started.

Python modules installed in container:  
- Django  
- djangorestframework  
- psycopg2-binary  
- python-dotenv  

About the base project:  

- global static files in 'staticfiles' directory
- base template with bootstrap nav-bar on top 
- auth system with login, logout, signup and password reset templates. Password reset sends a fake email as a local text file, replace with real email service in production.

note: bash script has default password for the site superuser. Change this setting before running docker-compose up so it is not same as in repo. I'll hide this in env as soon as I figure out how.

