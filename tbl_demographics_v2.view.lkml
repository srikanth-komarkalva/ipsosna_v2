view: tbl_demographics_v2 {
  sql_table_name: YouTubeB2B.tblDemographicsV2 ;;

#Defining parameters for Dynamic column selection in Cross tab charts
  parameter: attribute_selector1 {
    label: "Banner Selector 1"
    description: "Banner selector for crosstabs"
    type: unquoted

    allowed_value: {
      label: "Country"
      value: "country"
    }
    allowed_value: {
      label: "Wave"
      value: "wave"
    }
    allowed_value: {
      label: "Region"
      value: "region"
    }
    allowed_value: {
      label: "Campaign Type"
      value: "campaign_type"
    }
    allowed_value: {
      label: "Type"
      value: "type"
    }
    allowed_value: {
      label: "Type Agency"
      value: "type_agency"
    }
    allowed_value: {
      label: "Job Level"
      value: "job_level"
    }
    allowed_value: {
      label: "Job Function"
      value: "job_function"
    }
  }

  parameter: attribute_selector2 {
    description: "Banner selector for crosstabs"
    label: "Banner Selector 2"
    type: unquoted

    allowed_value: {
      label: "Country"
      value: "country"
    }
    allowed_value: {
      label: "Wave"
      value: "wave"
    }
    allowed_value: {
      label: "Region"
      value: "region"
    }
    allowed_value: {
      label: "Campaign Type"
      value: "campaign_type"
    }
    allowed_value: {
      label: "Type"
      value: "type"
    }
    allowed_value: {
      label: "Type Agency"
      value: "type_agency"
    }
    allowed_value: {
      label: "Job Level"
      value: "job_level"
    }
    allowed_value: {
      label: "Job Function"
      value: "job_function"
    }
  }


  dimension: campaign_type {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Campaign_Type ;;
  }

  dimension: country {
    group_label: "Demographic Fields"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension_group: data_collection_finish {
    group_label: "Demographic Fields"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCollection_FinishTime ;;
  }

  dimension_group: data_collection_start {
    group_label: "Demographic Fields"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCollection_StartTime ;;
  }

  dimension: decision_maker {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Decision_Maker ;;
  }

  dimension: gcs {
    group_label: "Demographic Fields"
    hidden: yes
    type: string
    sql: ${TABLE}.GCS ;;
  }

  dimension: int64_field_0 {
    group_label: "Demographic Fields"
    hidden: yes
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: job_function {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Job_Function ;;
  }

  dimension: job_level {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Job_Level ;;
  }

  dimension: lcs {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.LCS ;;
  }

  dimension: lcs_other {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.LCS_Other ;;
  }

  dimension: media_mobile {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_Mobile ;;
  }

  dimension: media_none {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_None ;;
  }

  dimension: media_online {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_Online ;;
  }

  dimension: media_online_search {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Online_Search ;;
  }

  dimension: media_outdoor {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_Outdoor ;;
  }

  dimension: media_print {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_Print ;;
  }

  dimension: media_radio {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_Radio ;;
  }

  dimension: media_tablet {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Tablet ;;
  }

  dimension: media_tv {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Media_TV ;;
  }

  dimension: region {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: respondent_serial {
    group_label: "Demographic Fields"
    type: number
    sql: ${TABLE}.Respondent_Serial ;;
  }

  dimension: respondent_serial_txt {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Respondent_serial_txt ;;
  }

  dimension: type {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: type_agency {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Type_Agency ;;
  }

  dimension: type_net {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Type_Net ;;
  }

  dimension: unique_id {
    group_label: "Demographic Fields"
    type: number
    sql: ${TABLE}.Unique_ID ;;
  }

  dimension: vertical_automotive {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Automotive ;;
  }

  dimension: vertical_cpg {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_CPG ;;
  }

  dimension: vertical_entertainment {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Entertainment ;;
  }

  dimension: vertical_fashion {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Fashion ;;
  }

  dimension: vertical_finance {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Finance ;;
  }

  dimension: vertical_gaming {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Gaming ;;
  }

  dimension: vertical_gaming_consoles {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_Consoles ;;
  }

  dimension: vertical_gaming_mobile {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_Mobile ;;
  }

  dimension: vertical_gaming_other {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_Other ;;
  }

  dimension: vertical_gaming_pc {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_PC ;;
  }

  dimension: vertical_healthcare {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Healthcare ;;
  }

  dimension: vertical_home {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Home ;;
  }

  dimension: vertical_kids {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Kids ;;
  }

  dimension: vertical_other {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Other ;;
  }

  dimension: vertical_personal_care {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Personal_Care ;;
  }

  dimension: vertical_qsr {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_QSR ;;
  }

  dimension: vertical_retail {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Retail ;;
  }

  dimension: vertical_tech {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Tech ;;
  }

  dimension: vertical_travel {
    group_label: "Demographic Fields"
    type: yesno
    sql: ${TABLE}.Vertical_Travel ;;
  }

 dimension: weight_google_jp {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Weight_Google_JP ;;
  }

  dimension: weight_youtube_jp {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Weight_Youtube_JP ;;
  }

  measure: count {
    group_label: "Demographic Fields"
    type: count
    drill_fields: []
  }

  dimension: wave {
    group_label: "Demographic Fields"
    type: string
    order_by_field: wave_date
    sql: ${TABLE}.Wave ;;
  }

##Converting Wave string to Date format
  dimension: wave_month {
    group_label: "Demographic Fields"
    type: number
    hidden: yes
    sql:  case substr(${wave},1,2)
          WHEN 'Q1' THEN 03
          WHEN 'Q2' THEN 06
          WHEN 'Q3' THEN 09
          WHEN 'Q4' THEN 12
          END;;
  }

  dimension: wave_year {
    group_label: "Demographic Fields"
    type: number
    hidden: yes
    sql: cast( substr(${wave},4,4) as INT64)  ;;
  }

  dimension: wave_date {
    group_label: "Demographic Fields"
    hidden: yes
    type: date
    sql: date(${wave_year},${wave_month},1) ;;
  }

  dimension_group: wave_quarter {
    group_label: "Demographic Fields"
    hidden: yes
    label: "Wave"
    type: time
    timeframes: [quarter]
    sql: ${wave_date};;
  }

  dimension: weight {
    group_label: "Demographic Fields"
    type: number
    sql: ${TABLE}.Weight ;;
  }

  dimension: year {
    group_label: "Demographic Fields"
    description: "The year from the wave"
    type: string
    sql: substr(${wave},4,4) ;;
  }

  dimension: attribute_selector1_sort {
    hidden: yes
    sql:
    {% if attribute_selector1._parameter_value == 'wave' %}
      ${wave_date}
    {% else %}
      ${attribute_selector1_dim}
    {% endif %};;
  }

  dimension: attribute_selector2_sort {
    hidden: yes
    sql:
    {% if attribute_selector2._parameter_value == 'wave' %}
      ${wave_date}
    {% else %}
      ${attribute_selector2_dim}
    {% endif %};;
  }

  dimension: attribute_selector1_dim {
    group_label: "Banner Analysis"
    label: "Banner Selector 1"
    order_by_field: attribute_selector1_sort
    description: "To be used with the Banner Selector filters"
    label_from_parameter: attribute_selector1
    sql: ${TABLE}.{% parameter attribute_selector1 %};;
  }

  dimension: attribute_selector2_dim {
    group_label: "Banner Analysis"
    label: "Banner Selector 2"
    order_by_field: attribute_selector2_sort
    description: "To be used with the Banner Selector filters"
    label_from_parameter: attribute_selector2
    sql: ${TABLE}.{% parameter attribute_selector2 %};;
  }

  parameter: significance_dropdown {
    label: "Significance"
    description: "Choose Significance for crosstabs"
    type: string
    allowed_value: {
      label: "Yes"
      value: "yes"
    }
    allowed_value: {
      label: "No"
      value: "no"
    }
  }

  #Significance Filter
  dimension: significance_dropdown_dim {
    hidden: yes
    label: "Significance"
    type: string
    sql: {% parameter significance_dropdown  %};;
    #
  }

  parameter: confidence_interval {
    label: "Confidence Interval Parameter"
    description: "Choose Confidence % for crosstabs"
    type: string
    allowed_value: {
      label: "85%"
      value: "1.44"
    }
    allowed_value: {
      label: "90%"
      value: "1.65"
    }
    allowed_value: {
      label: "95%"
      value: "1.96"
    }
    allowed_value: {
      label: "99%"
      value: "2.58"
    }
  }

  #Confidence Interval Filter
  dimension: confidence_interval_dim {
    label: "Confidence Interval"
    hidden: yes
    type: string
    sql:  {% parameter confidence_interval  %};;
  }

  measure: wtct{
    group_label: "Weight Metrics"
    description: "The weighted count of respondents"
    label: "Weighted Count"
    type: sum
    sql: ${weight} ;;
    value_format_name: decimal_2
    drill_fields: [country,region,wave,type_net,wtct]
    #  pct_wtct]
  }

  measure: pct_wtct {
    group_label: "Weight Metrics"
    description: "The weighted count of respondents as a percent of all response values"
    label: "Percent of Base"
    type: number
    sql: ${wtct}/${bases.min_wtbase} ;;
    value_format_name: percent_0
    drill_fields: [country,region,wave,type_net,wtct,pct_wtct]
  }

#   parameter: measure_selector_parm {
#     view_label: "Crosstab Question Selector"
#     label: "Measure Selector"
#     description: "Measure Selector for Q by Q Crosstab"
#     type: string
#     allowed_value: {
#       label: "% Weight"
#       value: "pct"
#     }
#     allowed_value: {
#       label: "Weighted Count"
#       value: "weight"
#     }
#   }

  ##html part makes sure percents are displayed with percent formatting, decimals with decimal formatting
#   measure: measure_selector {
#     group_label: "Weight Metrics"
#     label: "Selected Measure"
#     type: number
#     description: "To be used with the Measure Selector filter"
#     label_from_parameter: measure_selector_parm
#     sql:
#     CASE
#       WHEN {% parameter measure_selector_parm %} = 'pct' THEN ${pct_wtct}
#       WHEN {% parameter measure_selector_parm %} = 'weight' THEN ${wtct}
#       ELSE
#         NULL
#     END;;
#     html: {% if measure_selector_parm._parameter_value == "'pct'" %}
#             {{ pct_wtct._rendered_value }}
#           {% else %}
#             {{ wtct._rendered_value }}
#           {% endif %};;
#   }
}
