include: "tbl_variables_values_v2.view"
  view: v_by_v_crosstab {
    extends: [tbl_variables_values_v2]

    filter : value_1 {
      group_label: "Question 1"
      description: "Filter on or select/pivot by values for the first question"
      suggest_explore: tbl_facts_v2
      suggest_dimension: value
    }

    filter: value_2 {
      group_label: "Question 2"
      description: "Filter on or select/pivot by values for the second question"
      suggest_explore: tbl_facts_v2
      suggest_dimension: value
    }
  }
