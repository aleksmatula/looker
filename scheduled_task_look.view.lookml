- view: scheduled_task_look
  sql_table_name: PUBLIC.SCHEDULED_TASK_LOOK
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

  - dimension: format
    type: string
    sql: ${TABLE}.FORMAT

  - dimension: last_run_signature
    type: string
    sql: ${TABLE}.LAST_RUN_SIGNATURE

  - dimension: look_id
    type: number
    # hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: require_change
    type: yesno
    sql: ${TABLE}.REQUIRE_CHANGE

  - dimension: require_no_results
    type: yesno
    sql: ${TABLE}.REQUIRE_NO_RESULTS

  - dimension: require_results
    type: yesno
    sql: ${TABLE}.REQUIRE_RESULTS

  - dimension: scheduled_task_id
    type: number
    # hidden: true
    sql: ${TABLE}.SCHEDULED_TASK_ID

  - measure: count
    type: count
    drill_fields: [id, scheduled_task.id, look.id]

