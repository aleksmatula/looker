- view: embed_config
  sql_table_name: PUBLIC.EMBED_CONFIG
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: domain_whitelist
    type: string
    sql: ${TABLE}.DOMAIN_WHITELIST

  - dimension: sso_auth_enabled
    type: yesno
    sql: ${TABLE}.SSO_AUTH_ENABLED

  - measure: count
    type: count
    drill_fields: [id]

