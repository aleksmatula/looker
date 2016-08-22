- view: sql_query
  sql_table_name: PUBLIC.SQL_QUERY
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: connection_id
    type: string
    sql: ${TABLE}.CONNECTION_ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: hash
    type: string
    sql: ${TABLE}.HASH

  - dimension_group: last_run
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_RUN_AT

  - dimension: last_runtime
    type: number
    sql: ${TABLE}.LAST_RUNTIME

  - dimension: result_set_metadata
    type: string
    sql: ${TABLE}.RESULT_SET_METADATA

  - dimension: run_count
    type: number
    sql: ${TABLE}.RUN_COUNT

  - dimension: slug
    type: string
    sql: ${TABLE}.SLUG

  - dimension: sql
    type: string
    sql: ${TABLE}."SQL"

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - history.count

