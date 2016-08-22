- view: credentials_email
  sql_table_name: PUBLIC.CREDENTIALS_EMAIL
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

  - dimension: encrypted_password
    type: string
    sql: ${TABLE}.ENCRYPTED_PASSWORD

  - dimension: last_login_attempt_id
    type: number
    sql: ${TABLE}.LAST_LOGIN_ATTEMPT_ID

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOGGED_IN_AT

  - dimension_group: password_reset_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PASSWORD_RESET_SENT_AT

  - dimension: password_reset_token
    type: string
    sql: ${TABLE}.PASSWORD_RESET_TOKEN

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

