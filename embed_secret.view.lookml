- view: embed_secret
  sql_table_name: PUBLIC.EMBED_SECRET
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: algorithm
    type: string
    sql: ${TABLE}.ALGORITHM

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: encrypted_secret
    type: string
    sql: ${TABLE}.ENCRYPTED_SECRET

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

