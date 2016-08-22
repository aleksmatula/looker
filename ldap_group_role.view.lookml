- view: ldap_group_role
  sql_table_name: PUBLIC.LDAP_GROUP_ROLE
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: ldap_group_id
    type: number
    # hidden: true
    sql: ${TABLE}.LDAP_GROUP_ID

  - dimension: role_id
    type: number
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - measure: count
    type: count
    drill_fields: [id, role.id, role.name, ldap_group.name, ldap_group.id]

