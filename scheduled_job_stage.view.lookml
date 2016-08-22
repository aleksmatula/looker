- view: scheduled_job_stage
  sql_table_name: PUBLIC.SCHEDULED_JOB_STAGE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.COMPLETED_AT

  - dimension: node_id
    type: number
    # hidden: true
    sql: ${TABLE}.NODE_ID

  - dimension: scheduled_job_id
    type: number
    # hidden: true
    sql: ${TABLE}.SCHEDULED_JOB_ID

  - dimension: stage
    type: string
    sql: ${TABLE}.STAGE

  - dimension_group: started
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.STARTED_AT

  - measure: count
    type: count
    drill_fields: [id, scheduled_job.name, scheduled_job.id, node.hostname, node.id]

