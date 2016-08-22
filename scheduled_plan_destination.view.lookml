- view: scheduled_plan_destination
  sql_table_name: PUBLIC.SCHEDULED_PLAN_DESTINATION
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: address
    type: string
    sql: ${TABLE}.ADDRESS

  - dimension: apply_formatting
    type: yesno
    sql: ${TABLE}.APPLY_FORMATTING

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: format
    type: string
    sql: ${TABLE}.FORMAT

  - dimension: scheduled_plan_id
    type: number
    # hidden: true
    sql: ${TABLE}.SCHEDULED_PLAN_ID

  - dimension: slug
    type: string
    sql: ${TABLE}.SLUG

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, scheduled_plan.id, scheduled_plan.name]

