view: tbl_variables_categories_v2 {
  sql_table_name: YouTubeB2B.tblVariablesCategoriesV2 ;;

  dimension: category_id {
    group_label: "Question Information"
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: index {
    hidden: yes
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: int64_field_0 {
    hidden: yes
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: variable_id {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.VariableID ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
