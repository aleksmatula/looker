- view: space_user
  sql_table_name: PUBLIC.SPACE_USER
  fields:

  - dimension: space_id
    type: number
    # hidden: true
    sql: ${TABLE}.SPACE_ID

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - space.id
    - space.name

