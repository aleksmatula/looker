- view: dashboard_filter
  sql_table_name: PUBLIC.DASHBOARD_FILTER
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: dashboard_id
    type: number
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension: default_value
    type: string
    sql: ${TABLE}.DEFAULT_VALUE

  - dimension: dimension
    type: string
    sql: ${TABLE}.DIMENSION

  - dimension: explore
    type: string
    sql: ${TABLE}.EXPLORE

  - dimension: listens_to_filters_json
    type: string
    sql: ${TABLE}.LISTENS_TO_FILTERS_JSON

  - dimension: model_name
    type: string
    sql: ${TABLE}.MODEL_NAME

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, name, model_name, dashboard.id]

