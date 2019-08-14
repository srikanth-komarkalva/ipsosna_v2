view: tbl_counts_and_percents {
  sql_table_name: YouTubeB2B.tblCountsAndPercents ;;

  dimension: cat_order {
    type: number
    sql: ${TABLE}.CatOrder ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: category_label {
    type: string
    sql: ${TABLE}.CategoryLabel ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: eff_base {
    type: number
    sql: ${TABLE}.EffBase ;;
  }

  dimension: eff_ct {
    type: number
    sql: ${TABLE}.EffCt ;;
  }

  dimension: pct {
    type: number
    sql: ${TABLE}.Pct ;;
  }

  dimension: type_net {
    type: string
    sql: ${TABLE}.type_net ;;
  }

  dimension: unwtbase {
    type: number
    sql: ${TABLE}.unwtbase ;;
  }

  dimension: unwtct {
    type: number
    sql: ${TABLE}.unwtct ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: var_order {
    type: number
    sql: ${TABLE}.VarOrder ;;
  }

  dimension: variable_id {
    type: string
    sql: ${TABLE}.VariableId ;;
  }

  dimension: variable_label {
    type: string
    sql: ${TABLE}.VariableLabel ;;
  }

  dimension: wave {
    type: string
    sql: ${TABLE}.wave ;;
  }

  dimension: wtbase {
    type: number
    sql: ${TABLE}.wtbase ;;
  }

  dimension: wtct {
    type: number
    sql: ${TABLE}.wtct ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
