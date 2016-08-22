- view: one_time_key
  sql_table_name: PUBLIC.ONE_TIME_KEY
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

  - dimension: token
    type: string
    sql: ${TABLE}.TOKEN

  - measure: count
    type: count
    drill_fields: [id]

