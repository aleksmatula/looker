- view: ldap_config_default_new_user_role
  sql_table_name: PUBLIC.LDAP_CONFIG_DEFAULT_NEW_USER_ROLE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: ldap_config_id
    type: number
    # hidden: true
    sql: ${TABLE}.LDAP_CONFIG_ID

  - dimension: role_id
    type: number
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - ldap_config.user_attribute_map_last_name
    - ldap_config.user_attribute_map_first_name
    - ldap_config.encrypted_auth_username
    - ldap_config.id
    - role.id
    - role.name

