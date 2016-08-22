- view: content_metadata_group_user
  sql_table_name: PUBLIC.CONTENT_METADATA_GROUP_USER
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: content_metadata_id
    type: number
    # hidden: true
    sql: ${TABLE}.CONTENT_METADATA_ID

  - dimension: group_id
    type: number
    # hidden: true
    sql: ${TABLE}.GROUP_ID

  - dimension: permission_type
    type: string
    sql: ${TABLE}.PERMISSION_TYPE

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
    - group.id
    - group.name
    - user.id
    - user.last_name
    - user.first_name
    - user.dev_branch_name
    - content_metadata.id

