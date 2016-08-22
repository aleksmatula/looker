- view: dashboard_layout
  sql_table_name: PUBLIC.DASHBOARD_LAYOUT
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: active
    type: yesno
    sql: ${TABLE}.ACTIVE

  - dimension: column_width
    type: number
    sql: ${TABLE}.COLUMN_WIDTH

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dashboard_id
    type: number
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - dimension: width
    type: number
    sql: ${TABLE}.WIDTH

  - measure: count
    type: count
    drill_fields: [id, dashboard.id, dashboard_layout_component.count]

