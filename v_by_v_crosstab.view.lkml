include: "tbl_variables_values_v2.view"
  view: v_by_v_crosstab {
    extends: [tbl_variables_values_v2]

    dimension: value_1 {
      description: "Filter on or select/pivot by values for the first question"
      sql: ${value} ;;
    }

    dimension: value_2 {
      description: "Filter on or select/pivot by values for the second question"
      sql: ${value}  ;;
    }
  }
