- view: role_group
  sql_table_name: PUBLIC.ROLE_GROUP
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: group_id
    type: number
    # hidden: true
    sql: ${TABLE}.GROUP_ID

  - dimension: role_id
    type: number
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - measure: count
    type: count
    drill_fields: [id, role.id, role.name, group.id, group.name]

