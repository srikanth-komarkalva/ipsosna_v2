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
    type: string
    sql: ${TABLE}.Brand_Ad_Results ;;
  }

  dimension: brand_audiences {
    type: string
    sql: ${TABLE}.Brand_Audiences ;;
  }

  dimension: brand_biz_results {
    type: string
    sql: ${TABLE}.Brand_Biz_Results ;;
  }

  dimension: brand_channels {
    type: string
    sql: ${TABLE}.Brand_Channels ;;
  }

  dimension: brand_consider {
    type: string
    sql: ${TABLE}.Brand_Consider ;;
  }

  dimension: brand_content {
    type: string
    sql: ${TABLE}.Brand_Content ;;
  }

  dimension: brand_easy {
    type: string
    sql: ${TABLE}.Brand_Easy ;;
  }

  dimension: brand_essential {
    type: string
    sql: ${TABLE}.Brand_Essential ;;
  }

  dimension: brand_fam {
    type: string
    sql: ${TABLE}.Brand_Fam ;;
  }

  dimension: brand_fam_net {
    type: string
    sql: ${TABLE}.Brand_Fam_Net ;;
  }

  dimension: brand_import {
    type: string
    sql: ${TABLE}.Brand_Import ;;
  }

  dimension: brand_most_essential {
    type: string
    sql: ${TABLE}.Brand_Most_Essential ;;
  }

  dimension: brand_purchase {
    type: string
    sql: ${TABLE}.Brand_Purchase ;;
  }

  dimension: brand_spend {
    type: string
    sql: ${TABLE}.Brand_Spend ;;
  }

  dimension: brand_trust {
    type: string
    sql: ${TABLE}.Brand_Trust ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: perf_consider {
    type: string
    sql: ${TABLE}.Perf_Consider ;;
  }

  dimension: perf_essential {
    type: string
    sql: ${TABLE}.Perf_Essential ;;
  }

  dimension: perf_fam {
    type: string
    sql: ${TABLE}.Perf_Fam ;;
  }

  dimension: perf_import {
    type: string
    sql: ${TABLE}.Perf_Import ;;
  }

  dimension: perf_in_store {
    type: string
    sql: ${TABLE}.Perf_In_Store ;;
  }

  dimension: perf_insights {
    type: string
    sql: ${TABLE}.Perf_Insights ;;
  }

  dimension: perf_measure {
    type: string
    sql: ${TABLE}.Perf_Measure ;;
  }

  dimension: perf_moments {
    type: string
    sql: ${TABLE}.Perf_Moments ;;
  }

  dimension: perf_most_essential {
    type: string
    sql: ${TABLE}.Perf_Most_Essential ;;
  }

  dimension: perf_partner_goals {
    type: string
    sql: ${TABLE}.Perf_Partner_Goals ;;
  }

  dimension: perf_partner_growth {
    type: string
    sql: ${TABLE}.Perf_Partner_Growth ;;
  }

  dimension: perf_preferred {
    type: string
    sql: ${TABLE}.Perf_Preferred ;;
  }

  dimension: perf_privacy {
    type: string
    sql: ${TABLE}.Perf_Privacy ;;
  }

  dimension: perf_purchase {
    type: string
    sql: ${TABLE}.Perf_Purchase ;;
  }

  dimension: perf_roi {
    type: string
    sql: ${TABLE}.Perf_ROI ;;
  }

  dimension: perf_satisfaction {
    type: string
    sql: ${TABLE}.Perf_Satisfaction ;;
  }

  dimension: perf_spend {
    type: string
    sql: ${TABLE}.Perf_Spend ;;
  }

  dimension: perf_target {
    type: string
    sql: ${TABLE}.Perf_Target ;;
  }

  dimension: perf_top_priority {
    type: string
    sql: ${TABLE}.Perf_Top_Priority ;;
  }

  dimension: perf_trust {
    type: string
    sql: ${TABLE}.Perf_Trust ;;
  }

  dimension: unique_id {
    type: number
    sql: ${TABLE}.Unique_ID ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
