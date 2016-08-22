- view: lookml_model_db_connection
  sql_table_name: PUBLIC.LOOKML_MODEL_DB_CONNECTION
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: db_connection_id
    type: number
    # hidden: true
    sql: ${TABLE}.DB_CONNECTION_ID

  - dimension: lookml_model_id
    type: number
    # hidden: true
    sql: ${TABLE}.LOOKML_MODEL_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - db_connection.ssh_username
    - db_connection.username
    - db_connection.name
    - db_connection.tmp_db_name
    - db_connection.id
    - lookml_model.project_name
    - lookml_model.id
    - lookml_model.name

