- view: saml_group
  sql_table_name: PUBLIC.SAML_GROUP
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: group_id
    type: number
    # hidden: true
    sql: ${TABLE}.GROUP_ID

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: saml_config_id
    type: number
    # hidden: true
    sql: ${TABLE}.SAML_CONFIG_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - saml_config.user_attribute_map_last_name
    - saml_config.user_attribute_map_first_name
    - saml_config.id
    - group.id
    - group.name
    - saml_group_role.count

