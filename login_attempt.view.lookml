- view: login_attempt
  sql_table_name: PUBLIC.LOGIN_ATTEMPT
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension: ip
    type: string
    sql: ${TABLE}.IP

  - dimension: key
    type: string
    sql: ${TABLE}.KEY

  - measure: count
    type: count
    drill_fields: [id]

