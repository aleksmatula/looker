- view: session
  sql_table_name: PUBLIC.SESSION
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: access_token_id
    type: number
    # hidden: true
    sql: ${TABLE}.ACCESS_TOKEN_ID

  - dimension: browser
    type: string
    sql: ${TABLE}.BROWSER

  - dimension: city
    type: string
    sql: ${TABLE}.CITY

  - dimension: country
    type: string
    sql: ${TABLE}.COUNTRY

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: credentials_type
    type: string
    sql: ${TABLE}.CREDENTIALS_TYPE

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension_group: extended
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXTENDED_AT

  - dimension: extended_count
    type: number
    sql: ${TABLE}.EXTENDED_COUNT

  - dimension: ip_address
    type: string
    sql: ${TABLE}.IP_ADDRESS

  - dimension: operating_system
    type: string
    sql: ${TABLE}.OPERATING_SYSTEM

  - dimension: state
    type: string
    sql: ${TABLE}.STATE

  - dimension: sudo_url
    type: string
    sql: ${TABLE}.SUDO_URL

  - dimension: sudo_user_id
    type: number
    sql: ${TABLE}.SUDO_USER_ID

  - dimension: token
    type: string
    sql: ${TABLE}.TOKEN

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
    - access_token.id
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - access_token.count

