view: tbl_facts_v2 {
  sql_table_name: YouTubeB2B.FactsV2 ;;

  dimension: brand_ad_placement {
    type: string
    order_by_field: brand_ad_placement_sort
    sql: ${TABLE}.Brand_Ad_Placement ;;
  }

  dimension: brand_ad_placement_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_ad_placement}
    WHEN 'Strongly agree' THEN 1
    WHEN 'Agree' THEN 2
    WHEN 'Neither agree nor disagree' THEN 3
    WHEN 'Disagree' THEN 4
    WHEN 'Strongly disagree' THEN 5
    WHEN 'Dont Know' THEN 6
    WHEN 'Not Asked' THEN 7
    END
    ;;
  }

  dimension: brand_ad_results {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Ad_Results ;;
  }

  dimension: brand_audiences {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Audiences ;;
  }

  dimension: brand_biz_results {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Biz_Results ;;
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

  dimension: brand_import {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Import ;;
  }

  dimension: brand_most_essential {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Brand_Most_Essential ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: int64_field_0 {
    group_label: "Question Information"
    hidden: yes
    type: number
    sql: ${TABLE}.int64_field_0 ;;
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

  dimension: perf_import {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Import ;;
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

  dimension: perf_preferred {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Preferred ;;
  }

  dimension: perf_privacy {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Privacy ;;
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

  dimension: perf_satisfaction {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Satisfaction ;;
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

  dimension: perf_top_priority {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Top_Priority ;;
  }

  dimension: perf_trust {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.Perf_Trust ;;
  }

  dimension: unique_id {
    group_label: "Question Information"
    hidden: yes
    type: number
    sql: ${TABLE}.Unique_ID ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
