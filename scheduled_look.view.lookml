- view: scheduled_look
  sql_table_name: PUBLIC.SCHEDULED_LOOK
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: error
    type: string
    sql: ${TABLE}.ERROR

  - dimension: format
    type: string
    sql: ${TABLE}.FORMAT

  - dimension: last_run_at
    type: number
    sql: ${TABLE}.LAST_RUN_AT

  - dimension: last_run_signature
    type: string
    sql: ${TABLE}.LAST_RUN_SIGNATURE

  - dimension: look_id
    type: number
    # hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: next_run_at
    type: number
    sql: ${TABLE}.NEXT_RUN_AT

  - dimension: require_change
    type: yesno
    sql: ${TABLE}.REQUIRE_CHANGE

  - dimension: require_no_results
    type: yesno
    sql: ${TABLE}.REQUIRE_NO_RESULTS

  - dimension: require_results
    type: yesno
    sql: ${TABLE}.REQUIRE_RESULTS

  - dimension: schedule
    type: string
    sql: ${TABLE}.SCHEDULE

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
    - look.id
    - scheduled_look_action.count

