- view: db_credentials
  sql_table_name: PUBLIC.DB_CREDENTIALS
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: encrypted_password
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD

  - dimension: encrypted_username
    type: string
    sql: ${TABLE}.ENCRYPTED_USERNAME

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UPDATED_AT

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
    - encrypted_username
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name

