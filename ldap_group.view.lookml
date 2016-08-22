- view: ldap_group
  sql_table_name: PUBLIC.LDAP_GROUP
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: group_id
    type: number
    # hidden: true
    sql: ${TABLE}.GROUP_ID

  - dimension: ldap_config_id
    type: number
    # hidden: true
    sql: ${TABLE}.LDAP_CONFIG_ID

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - group.id
    - group.name
    - ldap_config.user_attribute_map_last_name
    - ldap_config.user_attribute_map_first_name
    - ldap_config.encrypted_auth_username
    - ldap_config.id
    - ldap_group_role.count

