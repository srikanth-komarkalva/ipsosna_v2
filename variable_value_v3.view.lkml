view: variable_value_v3 {
  sql_table_name: YouTubeB2B.VariableValueV3 ;;

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: Variable_Id{
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: Value {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
