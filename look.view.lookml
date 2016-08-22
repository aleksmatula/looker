- view: look
  sql_table_name: PUBLIC.LOOK
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: content_metadata_id
    type: number
    # hidden: true
    sql: ${TABLE}.CONTENT_METADATA_ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: public
    type: yesno
    sql: ${TABLE}.PUBLIC

  - dimension: public_slug
    type: string
    sql: ${TABLE}.PUBLIC_SLUG

  - dimension: query_id
    type: number
    # hidden: true
    sql: ${TABLE}.QUERY_ID

  - dimension: space_id
    type: number
    # hidden: true
    sql: ${TABLE}.SPACE_ID

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

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
    - query.id
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - content_metadata.id
    - space.id
    - space.name
    - dashboard_element.count
    - history.count
    - scheduled_job.count
    - scheduled_look.count
    - scheduled_plan.count
    - scheduled_task_look.count

