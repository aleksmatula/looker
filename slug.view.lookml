- view: slug
  sql_table_name: PUBLIC.SLUG
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: guid
    type: string
    sql: ${TABLE}.GUID

  - dimension_group: last_fetched
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_FETCHED

  - dimension: query_id
    type: number
    # hidden: true
    sql: ${TABLE}.QUERY_ID

  - measure: count
    type: count
    drill_fields: [id, query.id]

