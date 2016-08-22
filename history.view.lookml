- view: history
  sql_table_name: PUBLIC.HISTORY
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: cache
    type: yesno
    sql: ${TABLE}.CACHE

  - dimension: cache_key
    type: string
    sql: ${TABLE}.CACHE_KEY

  - dimension: cache_only
    type: yesno
    sql: ${TABLE}.CACHE_ONLY

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.COMPLETED_AT

  - dimension: connection_id
    type: string
    sql: ${TABLE}.CONNECTION_ID

  - dimension: connection_name
    type: string
    sql: ${TABLE}.CONNECTION_NAME

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dialect
    type: string
    sql: ${TABLE}.DIALECT

  - dimension: force_production
    type: yesno
    sql: ${TABLE}.FORCE_PRODUCTION

  - dimension: generate_links
    type: yesno
    sql: ${TABLE}.GENERATE_LINKS

  - dimension: look_id
    type: number
    # hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: message
    type: string
    sql: ${TABLE}.MESSAGE

  - dimension: node_id
    type: number
    # hidden: true
    sql: ${TABLE}.NODE_ID

  - dimension: path_prefix_id
    type: number
    # hidden: true
    sql: ${TABLE}.PATH_PREFIX_ID

  - dimension: query_id
    type: number
    # hidden: true
    sql: ${TABLE}.QUERY_ID

  - dimension: rebuild_pdts
    type: yesno
    sql: ${TABLE}.REBUILD_PDTS

  - dimension: render_key
    type: string
    sql: ${TABLE}.RENDER_KEY

  - dimension: result_source
    type: string
    sql: ${TABLE}.RESULT_SOURCE

  - dimension: runtime
    type: number
    sql: ${TABLE}.RUNTIME

  - dimension: slug
    type: string
    sql: ${TABLE}.SLUG

  - dimension: source
    type: string
    sql: ${TABLE}.SOURCE

  - dimension: sql_query_id
    type: number
    # hidden: true
    sql: ${TABLE}.SQL_QUERY_ID

  - dimension: status
    type: string
    sql: ${TABLE}.STATUS

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
    - connection_name
    - sql_query.id
    - path_prefix.id
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - query.id
    - look.id
    - node.hostname
    - node.id

