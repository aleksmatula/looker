- view: group
  sql_table_name: PUBLIC."GROUP"
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: can_add_to_content_metadata
    type: yesno
    sql: ${TABLE}.CAN_ADD_TO_CONTENT_METADATA

  - dimension: externally_managed
    type: yesno
    sql: ${TABLE}.EXTERNALLY_MANAGED

  - dimension: externally_orphaned
    type: yesno
    sql: ${TABLE}.EXTERNALLY_ORPHANED

  - dimension: include_by_default
    type: yesno
    sql: ${TABLE}.INCLUDE_BY_DEFAULT

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
    - content_metadata_group_user.count
    - group_user.count
    - ldap_group.count
    - role_group.count
    - saml_group.count

