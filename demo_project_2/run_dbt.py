from google.cloud import bigquery
from google.oauth2 import service_account
from pathlib import Path
import yaml

project_id_input = input("Project id: ")
dataset_id_input = input("Dataset id: ") # provide error message for invalid table name
table_name_id_input = input("Table name: ") # provide error message for invalid table name
path_to_json_file = input("Path to JSON file: ")

credentials = service_account.Credentials.from_service_account_file(path_to_json_file)
project_id = project_id_input

client = bigquery.Client(credentials= credentials,project=project_id)

# make sure user has .dbt in their folder

def read_yaml():
  """ 
  A function to read YAML file
  """

  path_to_file = str(Path.home()) + "/.dbt/test.yml"
  with open(path_to_file, 'w') as f:
    f.write("""demo_project_2:
    outputs:
      dev:
        dataset: """ + dataset_id_input + """
        job_execution_timeout_seconds: 300
        job_retries: 1
        keyfile: """ + path_to_json_file + """
        location: US
        method: service-account
        priority: interactive
        project: """ + project_id_input + """
        threads: 4
        type: bigquery
    target: dev""")

read_yaml()


# change profiles.yml name
