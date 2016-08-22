- view: schema_migrations
  sql_table_name: PUBLIC.SCHEMA_MIGRATIONS
  fields:

  - dimension: filename
    type: string
    sql: ${TABLE}.FILENAME

  - measure: count
    type: count
    drill_fields: [filename]

