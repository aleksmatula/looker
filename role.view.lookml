- view: role
  sql_table_name: PUBLIC.ROLE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: built_in
    type: yesno
    sql: ${TABLE}.BUILT_IN

  - dimension: embed
    type: yesno
    sql: ${TABLE}.EMBED

  - dimension: model_set_id
    type: number
    # hidden: true
    sql: ${TABLE}.MODEL_SET_ID

  - dimension: models
    type: string
    sql: ${TABLE}.MODELS

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: permission_set_id
    type: number
    # hidden: true
    sql: ${TABLE}.PERMISSION_SET_ID

  - dimension: permissions
    type: string
    sql: ${TABLE}.PERMISSIONS

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - permission_set.id
    - permission_set.name
    - model_set.name
    - model_set.id
    - access_token.count
    - ldap_config_default_new_user_role.count
    - ldap_group_role.count
    - role_group.count
    - role_user.count
    - saml_config_default_new_user_role.count
    - saml_group_role.count

