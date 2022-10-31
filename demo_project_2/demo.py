import os
from google.cloud import bigquery 

os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = "C:/Users/ayesh/Downloads/dbt-scotia-demo-03feb0ff3538.json"
client = bigquery.Client()
dataset_id="dbt-scotia-demo.demo_data"
tables = client.list_tables(dataset_id)  # Make an API request.
tmp_list = []

print("Tables contained in '{}':".format(dataset_id))
for table in tables:
    #tmp_list.append(table.table_id)
    x = "{}.{}.{}".format(table.project, table.dataset_id, table.table_id)
    tmp_list.append(x)
print(tmp_list)

# sql_query = """
# with source_data as (
#  SELECT AVG(price) as average_value from `dbt-scotia-demo.demo_data.sample-data`
# ),

# final as (
#   select * from source_data
# )

# select * from final
# """

# query_job = client.query(sql_query)

# # this gets each row in the query table
# for row in query_job.result():
#   print(row)