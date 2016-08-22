- view: api_nonce
  sql_table_name: PUBLIC.API_NONCE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: nonce
    type: string
    sql: ${TABLE}.NONCE

  - dimension_group: time
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."TIME"

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

