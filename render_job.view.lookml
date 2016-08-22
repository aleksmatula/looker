- view: render_job
  sql_table_name: PUBLIC.RENDER_JOB
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: caching_runtime
    type: number
    sql: ${TABLE}.CACHING_RUNTIME

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: finalized
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.FINALIZED_AT

  - dimension: node_id
    type: number
    # hidden: true
    sql: ${TABLE}.NODE_ID

  - dimension: phantom_runtime
    type: number
    sql: ${TABLE}.PHANTOM_RUNTIME

  - dimension: phantomjs_pid
    type: number
    value_format_name: id
    sql: ${TABLE}.PHANTOMJS_PID

  - dimension: render_options
    type: string
    sql: ${TABLE}.RENDER_OPTIONS

  - dimension: slug
    type: string
    sql: ${TABLE}.SLUG

  - dimension: status
    type: string
    sql: ${TABLE}.STATUS

  - dimension: status_detail
    type: string
    sql: ${TABLE}.STATUS_DETAIL

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
    - node.hostname
    - node.id

