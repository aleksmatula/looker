- view: event
  sql_table_name: PUBLIC.EVENT
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: category
    type: string
    sql: ${TABLE}.CATEGORY

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

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
    - id
    - name
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - event_attribute.count

