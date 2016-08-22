- view: dashboard
  sql_table_name: PUBLIC.DASHBOARD
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: background_color
    type: string
    sql: ${TABLE}.BACKGROUND_COLOR

  - dimension: content_metadata_id
    type: number
    # hidden: true
    sql: ${TABLE}.CONTENT_METADATA_ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: filter_lookml
    type: string
    sql: ${TABLE}.FILTER_LOOKML

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.HIDDEN

  - dimension: load_configuration
    type: string
    sql: ${TABLE}.LOAD_CONFIGURATION

  - dimension: refresh_interval
    type: string
    sql: ${TABLE}.REFRESH_INTERVAL

  - dimension: show_filters_bar
    type: yesno
    sql: ${TABLE}.SHOW_FILTERS_BAR

  - dimension: show_tile_shadow
    type: yesno
    sql: ${TABLE}.SHOW_TILE_SHADOW

  - dimension: show_title
    type: yesno
    sql: ${TABLE}.SHOW_TITLE

  - dimension: space_id
    type: number
    # hidden: true
    sql: ${TABLE}.SPACE_ID

  - dimension: text_tile_text_color
    type: string
    sql: ${TABLE}.TEXT_TILE_TEXT_COLOR

  - dimension: tile_background_color
    type: string
    sql: ${TABLE}.TILE_BACKGROUND_COLOR

  - dimension: tile_border_radius
    type: number
    sql: ${TABLE}.TILE_BORDER_RADIUS

  - dimension: tile_separator_color
    type: string
    sql: ${TABLE}.TILE_SEPARATOR_COLOR

  - dimension: tile_text_color
    type: string
    sql: ${TABLE}.TILE_TEXT_COLOR

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - dimension: title_color
    type: string
    sql: ${TABLE}.TITLE_COLOR

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
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - space.id
    - space.name
    - content_metadata.id
    - dashboard_element.count
    - dashboard_filter.count
    - dashboard_layout.count
    - scheduled_job.count
    - scheduled_plan.count
    - scheduled_task_dashboard.count

