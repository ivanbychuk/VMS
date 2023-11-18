# VMS
## How to set up the project
- ### Create venv
#### Windows

python -m venv venv

#### Linux or MacOS

python3 -m venv venv

- ### Activate venv
#### Windows
(For Windows you need to allow PowerShell scripts to run)

Set-ExecutionPolicy Unrestricted -Scope Process


venv\Scripts\activate.ps1

#### Linux or MacOS

source venv/bin/activate

- ### Install requirements.txt

pip install -r requirements.txt

- ### Migrate the migrations
#### Windows

cd vms_backend
python manage.py migrate

#### Linux or MacOS

cd vms_backend
python3 manage.py migrate

- ### Run the project
#### Windows

python manage.py runserver

#### Linux or MacOS

python3 manage.py runserver

Then go to http://127.0.0.1:8000

#Note that the db password is stored directly in the settings file, you might need to change depending on the user that manges your postrgre admin
#also for the simplicity of the set up and since it is just a univeristy project there is no .env file where the passwords should be stored
