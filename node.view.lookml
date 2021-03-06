- view: node
  sql_table_name: PUBLIC.NODE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: cache_port
    type: string
    sql: ${TABLE}.CACHE_PORT

  - dimension: clustered
    type: yesno
    sql: ${TABLE}.CLUSTERED

  - dimension: hostname
    type: string
    sql: ${TABLE}.HOSTNAME

  - dimension: is_master
    type: yesno
    sql: ${TABLE}.IS_MASTER

  - dimension_group: last_heartbeat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_HEARTBEAT

  - dimension: mac_adress
    type: string
    sql: ${TABLE}.MAC_ADRESS

  - dimension: new_secret
    type: string
    sql: ${TABLE}.NEW_SECRET

  - dimension: node_cluster_version
    type: number
    sql: ${TABLE}.NODE_CLUSTER_VERSION

  - dimension: node_to_node_port
    type: string
    sql: ${TABLE}.NODE_TO_NODE_PORT

  - dimension: old_secret
    type: string
    sql: ${TABLE}.OLD_SECRET

  - dimension: port
    type: string
    sql: ${TABLE}.PORT

  - dimension: queue_broker_port
    type: string
    sql: ${TABLE}.QUEUE_BROKER_PORT

  - dimension: version
    type: string
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - hostname
    - cache_index.count
    - distributed_mutex.count
    - history.count
    - render_job.count
    - scheduled_job_stage.count

