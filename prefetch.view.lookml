- view: prefetch
  sql_table_name: PUBLIC.PREFETCH
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: computation_time
    type: number
    sql: ${TABLE}.COMPUTATION_TIME

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension: hash
    type: string
    sql: ${TABLE}.HASH

  - dimension: hit_count
    type: number
    sql: ${TABLE}.HIT_COUNT

  - dimension: result_size_bytes
    type: number
    sql: ${TABLE}.RESULT_SIZE_BYTES

  - dimension: results
    type: string
    sql: ${TABLE}.RESULTS

  - dimension_group: touched
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TOUCHED_AT

  - dimension: ttl
    type: number
    sql: ${TABLE}.TTL

  - measure: count
    type: count
    drill_fields: [id]

