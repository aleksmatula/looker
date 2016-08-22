- view: credentials_looker_openid
  sql_table_name: PUBLIC.CREDENTIALS_LOOKER_OPENID
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: email
    type: string
    sql: ${TABLE}.EMAIL

  - dimension_group: last_login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_LOGIN_AT

  - dimension: last_login_ip
    type: string
    sql: ${TABLE}.LAST_LOGIN_IP

  - dimension: secret
    type: string
    sql: ${TABLE}.SECRET

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

