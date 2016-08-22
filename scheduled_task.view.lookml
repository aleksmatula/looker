- view: scheduled_task
  sql_table_name: PUBLIC.SCHEDULED_TASK
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: attempts
    type: number
    sql: ${TABLE}.ATTEMPTS

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: cron_string
    type: string
    sql: ${TABLE}.CRON_STRING

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: error
    type: string
    sql: ${TABLE}.ERROR

  - dimension_group: last_delivery_attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_DELIVERY_ATTEMPT_AT

  - dimension: last_run_at
    type: number
    sql: ${TABLE}.LAST_RUN_AT

  - dimension: next_run_at
    type: number
    sql: ${TABLE}.NEXT_RUN_AT

  - dimension: timezone
    type: string
    sql: ${TABLE}.TIMEZONE

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

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
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - mail_job.count
    - scheduled_task_action_email.count
    - scheduled_task_dashboard.count
    - scheduled_task_look.count

