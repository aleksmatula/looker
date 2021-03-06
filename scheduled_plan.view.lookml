- view: scheduled_plan
  sql_table_name: PUBLIC.SCHEDULED_PLAN
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: crontab
    type: string
    sql: ${TABLE}.CRONTAB

  - dimension: dashboard_id
    type: number
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: look_id
    type: number
    # hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: lookml_dashboard_id
    type: string
    sql: ${TABLE}.LOOKML_DASHBOARD_ID

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

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

  - dimension: run_once
    type: yesno
    sql: ${TABLE}.RUN_ONCE

  - dimension: timezone
    type: string
    sql: ${TABLE}.TIMEZONE

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UPDATED_AT

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
    - dashboard.id
    - look.id
    - scheduled_job.count
    - scheduled_plan_destination.count

