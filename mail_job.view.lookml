- view: mail_job
  sql_table_name: PUBLIC.MAIL_JOB
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: attachment_file
    type: string
    sql: ${TABLE}.ATTACHMENT_FILE

  - dimension: attachment_file_name
    type: string
    sql: ${TABLE}.ATTACHMENT_FILE_NAME

  - dimension: attempts
    type: number
    sql: ${TABLE}.ATTEMPTS

  - dimension: bcc
    type: string
    sql: ${TABLE}.BCC

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: hash
    type: string
    sql: ${TABLE}.HASH

  - dimension: html_body
    type: string
    sql: ${TABLE}.HTML_BODY

  - dimension_group: last_attempted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_ATTEMPTED_AT

  - dimension_group: next_attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.NEXT_ATTEMPT_AT

  - dimension: raw
    type: string
    sql: ${TABLE}.RAW

  - dimension: reply_to
    type: string
    sql: ${TABLE}.REPLY_TO

  - dimension: scheduled_task_id
    type: number
    # hidden: true
    sql: ${TABLE}.SCHEDULED_TASK_ID

  - dimension: subject
    type: string
    sql: ${TABLE}.SUBJECT

  - dimension: to
    type: string
    sql: ${TABLE}."TO"

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, attachment_file_name, scheduled_task.id]

