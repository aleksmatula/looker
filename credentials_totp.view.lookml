- view: credentials_totp
  sql_table_name: PUBLIC.CREDENTIALS_TOTP
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: secret
    type: string
    sql: ${TABLE}.SECRET

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - dimension: verified
    type: yesno
    sql: ${TABLE}.VERIFIED

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

