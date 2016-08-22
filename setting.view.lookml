- view: setting
  sql_table_name: PUBLIC.SETTING
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: key
    type: string
    sql: ${TABLE}.KEY

  - dimension: value
    type: string
    sql: ${TABLE}."VALUE"

  - measure: count
    type: count
    drill_fields: [id]

