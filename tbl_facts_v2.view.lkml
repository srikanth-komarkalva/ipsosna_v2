view: tbl_facts_v2 {
  sql_table_name: YouTubeB2B.tblFactsV2 ;;

#Defining parameters for Dynamic column selection in Cross tab charts
  parameter: question_selector1 {
    label: "Question Selector 1"
    description: "Question selector for crosstabs"
    type: unquoted

    allowed_value: {
      label: "brand_ad_placement_you_tube"
      value: "brand_ad_placement_you_tube"
    }
    allowed_value: {
      label: "brand_ad_results"
      value: "brand_ad_results"
    }
    allowed_value: {
      label: "brand_audiences"
      value: "brand_audiences"
    }
    allowed_value: {
      label: "brand_biz_results"
      value: "brand_biz_results"
    }
    allowed_value: {
      label: "brand_channels"
      value: "brand_channels"
    }
    allowed_value: {
      label: "brand_consider"
      value: "brand_consider"
    }
    allowed_value: {
      label: "brand_content"
      value: "brand_content"
    }
    allowed_value: {
      label: "brand_easy"
      value: "brand_easy"
    }

    allowed_value: {
      label: "brand_essential"
      value: "brand_essential"
    }
    allowed_value: {
      label: "brand_fam"
      value: "brand_fam"
    }
    allowed_value: {
      label: "brand_fam_net"
      value: "brand_fam_net"
    }
    allowed_value: {
      label: "brand_import_ad_results"
      value: "brand_import_ad_results"
    }
    allowed_value: {
      label: "brand_import_audiences"
      value: "brand_import_audiences"
    }
    allowed_value: {
      label: "brand_import_biz_results"
      value: "brand_import_biz_results"
    }
    allowed_value: {
      label: "brand_import_channels"
      value: "brand_import_channels"
    }
    allowed_value: {
      label: "brand_import_content"
      value: "brand_import_content"
    }


    allowed_value: {
      label: "brand_import_easy"
      value: "brand_import_easy"
    }
    allowed_value: {
      label: "brand_import_trust"
      value: "brand_import_trust"
    }
    allowed_value: {
      label: "brand_most_essential"
      value: "brand_most_essential"
    }
    allowed_value: {
      label: "brand_prefer"
      value: "brand_prefer"
    }
    allowed_value: {
      label: "brand_purchase"
      value: "brand_purchase"
    }
    allowed_value: {
      label: "brand_spend"
      value: "brand_spend"
    }
    allowed_value: {
      label: "brand_trust"
      value: "brand_trust"
    }
  }


  dimension: question_selector1_dim {
    group_label: "Select Question to Filter"
    label: "Question Selector 1"
#   order_by_field: attribute_selector1_sort
    description: "To be used with the Question Selector filters"
    label_from_parameter: question_selector1
    sql: ${TABLE}.{% parameter question_selector1 %};;
  }


  dimension: brand_ad_placement_you_tube {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Ad_Placement_YouTube ;;
  }

  dimension: brand_ad_results {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_AdResults ;;
  }

  dimension: brand_audiences {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Audiences ;;
  }

  dimension: brand_biz_results {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_BizResults ;;
  }

  dimension: brand_channels {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Channels ;;
  }

  dimension: brand_consider {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Consider ;;
  }

  dimension: brand_content {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Content ;;
  }

  dimension: brand_easy {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Easy ;;
  }

  dimension: brand_essential {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Essential ;;
  }

  dimension: brand_fam {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Fam ;;
  }

  dimension: brand_fam_net {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Fam_Net ;;
  }

  dimension: brand_import_ad_results {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Ad_Results ;;
  }

  dimension: brand_import_audiences {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Audiences ;;
  }

  dimension: brand_import_biz_results {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Biz_Results ;;
  }

  dimension: brand_import_channels {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Channels ;;
  }

  dimension: brand_import_content {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Content ;;
  }

  dimension: brand_import_easy {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Easy ;;
  }

  dimension: brand_import_trust {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import_Trust ;;
  }

  dimension: brand_most_essential {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_MostEssential ;;
  }

  dimension: brand_most_essential_1 {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Most_Essential_1 ;;
  }

  dimension: brand_most_essential_2 {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Most_Essential_2 ;;
  }

  dimension: brand_prefer {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Prefer ;;
  }

  dimension: brand_purchase {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Purchase ;;
  }

  dimension: brand_spend {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Spend ;;
  }

  dimension: brand_trust {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Trust ;;
  }

  dimension: category_id {
    group_label: "Question Information"
    label: "Brand"
    type: string
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: perf_authority {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Authority ;;
  }

  dimension: perf_consider {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Consider ;;
  }

  dimension: perf_essential {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Essential ;;
  }

  dimension: perf_fam {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Fam ;;
  }

  dimension: perf_fam_net {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Fam_Net ;;
  }

  dimension: perf_import_in_store {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_In_Store ;;
  }

  dimension: perf_import_insights {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Insights ;;
  }

  dimension: perf_import_measure {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Measure ;;
  }

  dimension: perf_import_moments {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Moments ;;
  }

  dimension: perf_import_partner_goals {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Partner_Goals ;;
  }

  dimension: perf_import_partner_growth {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Partner_Growth ;;
  }

  dimension: perf_import_roi {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_ROI ;;
  }

  dimension: perf_import_target {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Target ;;
  }

  dimension: perf_import_trust {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import_Trust ;;
  }

  dimension: perf_in_store {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_In_Store ;;
  }

  dimension: perf_insights {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Insights ;;
  }

  dimension: perf_measure {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Measure ;;
  }

  dimension: perf_moments {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Moments ;;
  }

  dimension: perf_most_essential {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Most_Essential ;;
  }

  dimension: perf_most_essential_direct {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Most_Essential_Direct ;;
  }

  dimension: perf_most_essential_mobile {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Most_Essential_Mobile ;;
  }

  dimension: perf_partner_goals {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Partner_Goals ;;
  }

  dimension: perf_partner_growth {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Partner_Growth ;;
  }

  dimension: perf_prefer {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Prefer ;;
  }

  dimension: perf_preferred {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Preferred ;;
  }

  dimension: perf_privacy_google {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Privacy_Google ;;
  }

  dimension: perf_purchase {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Purchase ;;
  }

  dimension: perf_roi {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_ROI ;;
  }

  dimension: perf_satisfaction_google {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Satisfaction_Google ;;
  }

  dimension: perf_spend {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Spend ;;
  }

  dimension: perf_target {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Target ;;
  }

  dimension: perf_top_priority_google {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Top_Priority_Google ;;
  }

  dimension: perf_trust {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Trust ;;
  }

  dimension: unique_id {
    group_label: "Question Information"
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.Unique_ID ;;
  }

  measure: unwtct {
    group_label: "Weight Metrics"
    description: "The count of respondents"
    label: "Unweighted Count"
    type: count_distinct
    sql: ${unique_id} ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
