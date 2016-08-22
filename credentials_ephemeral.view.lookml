- view: credentials_ephemeral
  sql_table_name: PUBLIC.CREDENTIALS_EPHEMERAL
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

  - dimension: login_used
    type: yesno
    sql: ${TABLE}.LOGIN_USED

  - dimension: token
    type: string
    sql: ${TABLE}.TOKEN

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

