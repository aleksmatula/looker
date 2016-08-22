- view: credentials_ldap
  sql_table_name: PUBLIC.CREDENTIALS_LDAP
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: email
    type: string
    sql: ${TABLE}.EMAIL

  - dimension: last_login_attempt_id
    type: number
    sql: ${TABLE}.LAST_LOGIN_ATTEMPT_ID

  - dimension: ldap_dn
    type: string
    sql: ${TABLE}.LDAP_DN

  - dimension: ldap_id
    type: string
    sql: ${TABLE}.LDAP_ID

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOGGED_IN_AT

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.id, user.last_name, user.first_name, user.dev_branch_name]

