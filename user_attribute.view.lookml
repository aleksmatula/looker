- view: user_attribute
  sql_table_name: PUBLIC.USER_ATTRIBUTE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: key
    type: string
    sql: ${TABLE}.KEY

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - dimension: value
    type: string
    sql: ${TABLE}."VALUE"

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

