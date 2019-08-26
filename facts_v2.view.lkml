view: tbl_facts_v2 {
  sql_table_name: YouTubeB2B.FactsV2 ;;

  dimension: brand_ad_placement {
    group_label: "Question Information"
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
    order_by_field: brand_ad_results_sort
    sql: ${TABLE}.Brand_Ad_Results ;;
  }

  dimension: brand_ad_results_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_ad_results}
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

  dimension: brand_audiences {
    group_label: "Question Information"
    type: string
    order_by_field: brand_audiences_sort
    sql: ${TABLE}.Brand_Audiences ;;
  }

  dimension: brand_audiences_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_audiences}
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

  dimension: brand_biz_results {
    group_label: "Question Information"
    type: string
    order_by_field: brand_biz_results_sort
    sql: ${TABLE}.Brand_Biz_Results ;;
  }

  dimension: brand_biz_results_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_biz_results}
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

  dimension: brand_channels {
    group_label: "Question Information"
    type: string
    order_by_field: brand_channels_sort
    sql: ${TABLE}.Brand_Channels ;;
  }

  dimension: brand_channels_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_channels}
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

  dimension: brand_consider {
    group_label: "Question Information"
    type: string
    order_by_field: brand_consider_sort
    sql: ${TABLE}.Brand_Consider ;;
  }

  dimension: brand_consider_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_consider}
          WHEN 'Yes' THEN 1
          WHEN 'No' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }

  dimension: brand_content {
    group_label: "Question Information"
    type: string
    order_by_field: brand_content_sort
    sql: ${TABLE}.Brand_Content ;;
  }

  dimension: brand_content_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_content}
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


  dimension: brand_easy {
    group_label: "Question Information"
    type: string
    order_by_field: brand_easy_sort
    sql: ${TABLE}.Brand_Easy ;;
  }

  dimension: brand_easy_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_easy}
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

  dimension: brand_essential {
    group_label: "Question Information"
    order_by_field: brand_essential_sort
    type: string
    sql: ${TABLE}.Brand_Essential ;;
  }

  dimension: brand_essential_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_essential}
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

  dimension: brand_fam {
    group_label: "Question Information"
    type: string
    order_by_field: brand_fam_sort
    sql: ${TABLE}.Brand_Fam ;;
  }

  dimension: brand_fam_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_fam}
          WHEN 'Extremely familiar' THEN 1
          WHEN 'Very familiar' THEN 2
          WHEN 'Somewhat familiar' THEN 3
          WHEN 'Not very familiar' THEN 4
          WHEN 'Not at all familiar / Never heard of' THEN 5
          WHEN 'Not Asked' THEN 6
          END
          ;;
  }

  dimension: brand_fam_net {
    group_label: "Question Information"
    type: string
    order_by_field: brand_fam_net_sort
    sql: ${TABLE}.Brand_Fam_Net ;;
  }

  dimension: brand_fam_net_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_fam_net}
          WHEN 'Yes' THEN 1
          WHEN 'No' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }


  dimension: brand_import {
    group_label: "Question Information"
    type: string
    order_by_field: brand_import_sort
    sql: ${TABLE}.Brand_Import ;;
  }

  dimension: brand_import_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_import}
          WHEN 'Extremely important' THEN 1
          WHEN 'Very important' THEN 2
          WHEN 'Somewhat important' THEN 3
          WHEN 'Not very important' THEN 4
          WHEN 'Not at all important' THEN 5
          WHEN 'Dont Know' THEN 6
          WHEN 'Not Asked' THEN 7
          END
          ;;
  }

  dimension: brand_most_essential {
    group_label: "Question Information"
    type: string
    order_by_field: brand_most_essential_sort
    sql: ${TABLE}.Brand_Most_Essential ;;
  }

  dimension: brand_most_essential_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_most_essential}
          WHEN 'Yes' THEN 1
          WHEN 'No' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }

  dimension: brand_purchase {
    group_label: "Question Information"
    type: string
    order_by_field: brand_purchase_sort
    sql: ${TABLE}.Brand_Purchase ;;
  }

  dimension: brand_purchase_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_purchase}
          WHEN 'Yes' THEN 1
          WHEN 'No' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }

  dimension: brand_spend {
    group_label: "Question Information"
    type: string
    order_by_field: brand_spend_sort
    sql: ${TABLE}.Brand_Spend ;;
  }

  dimension: brand_spend_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_spend}
          WHEN 'Increase' THEN 1
          WHEN 'Decrease' THEN 2
          WHEN 'Stay the same' THEN 3
          WHEN 'Dont Know' THEN 4
          WHEN 'Not Asked' THEN 5
          END
          ;;
  }

  dimension: brand_trust {
    group_label: "Question Information"
    type: string
    order_by_field: brand_trust_sort
    sql: ${TABLE}.Brand_Trust ;;
  }

  dimension: brand_trust_sort {
    type: number
    hidden: yes
    sql: CASE ${brand_trust}
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
    order_by_field: perf_consider_sort
    sql: ${TABLE}.Perf_Consider ;;
  }

  dimension: perf_consider_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_consider}
          WHEN 'Yes' THEN 1
          WHEN 'No' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }

  dimension: perf_essential {
    group_label: "Question Information"
    type: string
    order_by_field: perf_essential_sort
    sql: ${TABLE}.Perf_Essential ;;
  }

  dimension: perf_essential_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_essential}
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

  dimension: perf_fam {
    group_label: "Question Information"
    type: string
    order_by_field: perf_fam_sort
    sql: ${TABLE}.Perf_Fam ;;
  }

  dimension: perf_fam_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_fam}
          WHEN 'Extremely familiar' THEN 1
          WHEN 'Very familiar' THEN 2
          WHEN 'Somewhat familiar' THEN 3
          WHEN 'Not very familiar' THEN 4
          WHEN 'Not at all familiar / Never heard of' THEN 5
          WHEN 'Yes' THEN 6
          WHEN 'No' THEN 7
          WHEN 'Not Asked' THEN 8
          END
          ;;
  }


  dimension: perf_import {
    group_label: "Question Information"
    type: string
    order_by_field: perf_import_sort
    sql: ${TABLE}.Perf_Import ;;
  }

  dimension: perf_import_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_import}
          WHEN 'Extremely important' THEN 1
          WHEN 'Very important' THEN 2
          WHEN 'Somewhat important' THEN 3
          WHEN 'Not very important' THEN 4
          WHEN 'Not at all important' THEN 5
          WHEN 'Dont Know' THEN 6
          WHEN 'Not Asked' THEN 7
          END
          ;;
  }


  dimension: perf_in_store {
    group_label: "Question Information"
    type: string
    order_by_field: perf_in_store_sort
    sql: ${TABLE}.Perf_In_Store ;;
  }

  dimension: perf_in_store_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_in_store}
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

  dimension: perf_insights {
    group_label: "Question Information"
    type: string
    order_by_field: perf_insights_sort
    sql: ${TABLE}.Perf_Insights ;;
  }

  dimension: perf_insights_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_insights}
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

  dimension: perf_measure {
    group_label: "Question Information"
    type: string
    order_by_field: perf_measure_sort
    sql: ${TABLE}.Perf_Measure ;;
  }

  dimension: perf_measure_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_measure}
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

  dimension: perf_moments {
    group_label: "Question Information"
    type: string
    order_by_field: perf_moments_sort
    sql: ${TABLE}.Perf_Moments ;;
  }

  dimension: perf_moments_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_moments}
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

  dimension: perf_most_essential {
    group_label: "Question Information"
    type: string
    order_by_field: perf_most_essential_sort
    sql: ${TABLE}.Perf_Most_Essential ;;
  }

  dimension: perf_most_essential_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_most_essential}
          WHEN 'Most Essential' THEN 1
          WHEN 'Second Most Essential' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }

  dimension: perf_partner_goals {
    group_label: "Question Information"
    type: string
    order_by_field: perf_partner_goals_sort
    sql: ${TABLE}.Perf_Partner_Goals ;;
  }

  dimension: perf_partner_goals_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_partner_goals}
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

  dimension: perf_partner_growth {
    group_label: "Question Information"
    type: string
    order_by_field: perf_partner_growth_sort
    sql: ${TABLE}.Perf_Partner_Growth ;;
  }

  dimension: perf_partner_growth_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_partner_growth}
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

  dimension: perf_preferred {
    group_label: "Question Information"
    type: string
    order_by_field: perf_preferred_sort
    sql: ${TABLE}.Perf_Preferred ;;
  }

  dimension: perf_preferred_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_preferred}
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

  dimension: perf_privacy {
    group_label: "Question Information"
    type: string
    order_by_field: perf_privacy_sort
    sql: ${TABLE}.Perf_Privacy ;;
  }

  dimension: perf_privacy_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_privacy}
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

  dimension: perf_purchase {
    group_label: "Question Information"
    type: string
    order_by_field: perf_purchase_sort
    sql: ${TABLE}.Perf_Purchase ;;
  }

  dimension: perf_purchase_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_purchase}
          WHEN 'Yes' THEN 1
          WHEN 'No' THEN 2
          WHEN 'Not Asked' THEN 3
          END
          ;;
  }

  dimension: perf_roi {
    group_label: "Question Information"
    type: string
    order_by_field: perf_roi_sort
    sql: ${TABLE}.Perf_ROI ;;
  }

  dimension: perf_roi_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_roi}
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

  dimension: perf_satisfaction {
    group_label: "Question Information"
    type: string
    order_by_field: perf_satisfaction_sort
    sql: ${TABLE}.Perf_Satisfaction ;;
  }

  dimension: perf_satisfaction_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_satisfaction}
          WHEN 'Satisfied' THEN 1
          WHEN 'Neither satisfied nor dissatisfied' THEN 2
          WHEN 'Dissatisfied' THEN 3
          WHEN 'Dont know' THEN 4
          WHEN 'Not Asked' THEN 5
          END
          ;;
  }


  dimension: perf_spend {
    group_label: "Question Information"
    type: string
    order_by_field: perf_spend_sort
    sql: ${TABLE}.Perf_Spend ;;
  }

  dimension: perf_spend_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_spend}
          WHEN 'Increase' THEN 1
          WHEN 'Decrease' THEN 2
          WHEN 'Stay the same' THEN 3
          WHEN 'Dont Know' THEN 4
          WHEN 'Not Asked' THEN 5
          END
          ;;
  }

  dimension: perf_target {
    group_label: "Question Information"
    type: string
    order_by_field: perf_target_sort
    sql: ${TABLE}.Perf_Target ;;
  }

  dimension: perf_target_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_target}
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

  dimension: perf_top_priority {
    group_label: "Question Information"
    type: string
    order_by_field: perf_top_priority_sort
    sql: ${TABLE}.Perf_Top_Priority ;;
  }

  dimension: perf_top_priority_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_top_priority}
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


  dimension: perf_trust {
    group_label: "Question Information"
    type: string
    order_by_field: perf_trust_sort
    sql: ${TABLE}.Perf_Trust ;;
  }

  dimension: perf_trust_sort {
    type: number
    hidden: yes
    sql: CASE ${perf_trust}
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

  dimension: unique_id {
    group_label: "Question Information"
    hidden: yes
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
    type: count
    hidden: yes
    drill_fields: []
  }
}
