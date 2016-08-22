- view: scheduled_task_action_email
  sql_table_name: PUBLIC.SCHEDULED_TASK_ACTION_EMAIL
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: external_email
    type: string
    sql: ${TABLE}.EXTERNAL_EMAIL

  - dimension: scheduled_task_id
    type: number
    # hidden: true
    sql: ${TABLE}.SCHEDULED_TASK_ID

  - dimension: slug
    type: string
    sql: ${TABLE}.SLUG

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
    - scheduled_task.id
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name

