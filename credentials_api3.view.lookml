- view: credentials_api3
  sql_table_name: PUBLIC.CREDENTIALS_API3
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: client_id
    type: string
    sql: ${TABLE}.CLIENT_ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: encrypted_client_secret
    type: string
    sql: ${TABLE}.ENCRYPTED_CLIENT_SECRET

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOGGED_IN_AT

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
    - access_token.count

