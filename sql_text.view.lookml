- view: sql_text
  sql_table_name: PUBLIC.SQL_TEXT
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: cache_key
    type: string
    sql: ${TABLE}.CACHE_KEY

  - dimension: text
    type: string
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: [id]

