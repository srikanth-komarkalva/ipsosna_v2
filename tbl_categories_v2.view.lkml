view: tbl_categories_v2 {
  sql_table_name: YouTubeB2B.tblCategoriesV2 ;;

  dimension: category_id {
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: category_label {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.CategoryLabel ;;
  }

  dimension: catorder {
    hidden: yes
    type: number
    sql: ${TABLE}.Catorder ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
