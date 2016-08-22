- view: credentials_embed
  sql_table_name: PUBLIC.CREDENTIALS_EMBED
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: external_user_id
    type: string
    sql: ${TABLE}.EXTERNAL_USER_ID

  - dimension_group: last_logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_LOGGED_IN_AT

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

