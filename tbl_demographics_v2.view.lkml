view: tbl_demographics_v2 {
  sql_table_name: YouTubeB2B.DemographicsV2 ;;

#Defining parameters for Dynamic column selection in Cross tab charts
  parameter: attribute_selector1 {
    label: "Demographic Banner Selector 1"
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
    label: "Demographic Banner Selector 2"
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
    type: string
    sql: ${TABLE}.Media_Mobile ;;
  }

  dimension: media_none {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_None ;;
  }

  dimension: media_online {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Online ;;
  }

  dimension: media_online_search {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Online_Search ;;
  }

  dimension: media_outdoor {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Outdoor ;;
  }

  dimension: media_print {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Print ;;
  }

  dimension: media_radio {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Radio ;;
  }

  dimension: media_tablet {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Media_Tablet ;;
  }

  dimension: media_tv {
    group_label: "Demographic Fields"
    type: string
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
    primary_key: yes
    type: number
    sql: ${TABLE}.Unique_ID ;;
  }

  dimension: vertical_automotive {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Automotive ;;
  }

  dimension: vertical_cpg {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_CPG ;;
  }

  dimension: vertical_entertainment {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Entertainment ;;
  }

  dimension: vertical_fashion {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Fashion ;;
  }

  dimension: vertical_finance {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Finance ;;
  }

  dimension: vertical_gaming {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Gaming ;;
  }

  dimension: vertical_gaming_consoles {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Gaming_Consoles ;;
  }

  dimension: vertical_gaming_mobile {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Gaming_Mobile ;;
  }

  dimension: vertical_gaming_other {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Gaming_Other ;;
  }

  dimension: vertical_gaming_pc {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Gaming_PC ;;
  }

  dimension: vertical_healthcare {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Healthcare ;;
  }

  dimension: vertical_home {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Home ;;
  }

  dimension: vertical_kids {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Kids ;;
  }

  dimension: vertical_other {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Other ;;
  }

  dimension: vertical_personal_care {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Personal_Care ;;
  }

  dimension: vertical_qsr {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_QSR ;;
  }

  dimension: vertical_retail {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Retail ;;
  }

  dimension: vertical_tech {
    group_label: "Demographic Fields"
    type: string
    sql: ${TABLE}.Vertical_Tech ;;
  }

  dimension: vertical_travel {
    group_label: "Demographic Fields"
    type: string
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
    hidden: yes
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

#   parameter: significance_dropdown {
#     label: "Significance"
#     description: "Choose Significance for crosstabs"
#     type: string
#     allowed_value: {
#       label: "Yes"
#       value: "yes"
#     }
#     allowed_value: {
#       label: "No"
#       value: "no"
#     }
#   }
#
#   #Significance Filter
#   dimension: significance_dropdown_dim {
#     hidden: yes
#     label: "Significance"
#     type: string
#     sql: {% parameter significance_dropdown  %};;
#     #
#   }

#   parameter: confidence_interval {
#     label: "Confidence Interval Parameter"
#     description: "Choose Confidence % for crosstabs"
#     type: string
#     allowed_value: {
#       label: "85%"
#       value: "1.44"
#     }
#     allowed_value: {
#       label: "90%"
#       value: "1.65"
#     }
#     allowed_value: {
#       label: "95%"
#       value: "1.96"
#     }
#     allowed_value: {
#       label: "99%"
#       value: "2.58"
#     }
#   }
#
#   #Confidence Interval Filter
#   dimension: confidence_interval_dim {
#     label: "Confidence Interval"
#     hidden: yes
#     type: string
#     sql:  {% parameter confidence_interval  %};;
#   }

  measure: wtct{
    group_label: "Weight Metrics"
    description: "The weighted count of respondents"
    label: "Weighted Count"
    type: sum
    sql: ${weight} ;;
    value_format_name: decimal_2
#     drill_fields: [country,region,wave,type_net,wtct]
    #  pct_wtct]
  }

  measure: pct_wtct {
    group_label: "Weight Metrics"
    hidden: yes
    description: "The weighted count of respondents as a percent of all response values"
    label: "Percent of Base Old calc"
    type: number
    sql: IFNULL(${wtct}/${bases.min_wtbase},0) ;;
    value_format_name: percent_0
#     drill_fields: [country,region,wave,type_net,wtct,pct_wtct]
  }

  measure: sum_wtct_subtotal {
    type: number
    group_label: "Weight Metrics"
    hidden: yes
    sql:  sum(${wtct}) OVER ( PARTITION BY

                       -- all tbl_facts_v2 fields
                          {% if tbl_facts_v2.category_id._is_selected %} ${tbl_facts_v2.category_id}, {% endif %}

                          {% if tbl_variables_values_v2.variable_id._is_selected %} ${tbl_variables_values_v2.variable_id}, {% endif %}
                          {% if tbl_variables_values_v2.category_id._is_selected %} ${tbl_variables_values_v2.category_id}, {% endif %}

                          {% if tbl_variables_v2.category_id._is_selected %} ${tbl_variables_v2.category_id}, {% endif %}
                          {% if tbl_variables_v2.Variable_Id._is_selected %} ${tbl_variables_v2.Variable_Id}, {% endif %}
                          {% if tbl_variables_v2.question._is_selected %} ${tbl_variables_v2.question}, {% endif %}
                          {% if tbl_variables_v2.Variable_Label._is_selected %} ${tbl_variables_v2.Variable_Label}, {% endif %}

                          -- all demographic_fact fields
                          {% if attribute_selector1._parameter_value == 'campaign_type' and attribute_selector1_dim._is_selected %}
                            ${campaign_type} ,
                          {% elsif attribute_selector2._parameter_value == 'campaign_type' and attribute_selector2_dim._is_selected %}
                            ${campaign_type} ,
                          {% elsif campaign_type._is_selected %}
                            ${campaign_type} ,
                          {% endif %}
                          {% if attribute_selector1._parameter_value == 'country' and attribute_selector1_dim._is_selected %}
                            ${country} ,
                          {% elsif attribute_selector2._parameter_value == 'country' and attribute_selector2_dim._is_selected %}
                            ${country} ,
                          {% elsif country._is_selected %}
                            ${country} ,
                          {% endif %}
                          {% if data_collection_finish_time._is_selected %} ${data_collection_finish_time} , {% endif %}
                          {% if data_collection_start_time._is_selected %} ${data_collection_start_time} , {% endif %}
                          {% if decision_maker._is_selected %} ${decision_maker} , {% endif %}
                          {% if gcs._is_selected %} ${gcs} ,{% endif %}
                          {% if attribute_selector1._parameter_value == 'job_function' and attribute_selector1_dim._is_selected %}
                            ${job_function} ,
                          {% elsif attribute_selector2._parameter_value == 'job_function' and attribute_selector2_dim._is_selected %}
                            ${job_function} ,
                          {% elsif job_function._is_selected %}
                            ${job_function} ,
                          {% endif %}
                          {% if attribute_selector1._parameter_value == 'job_level' and attribute_selector1_dim._is_selected %}
                            ${job_level} ,
                          {% elsif attribute_selector2._parameter_value == 'job_level' and attribute_selector2_dim._is_selected %}
                            ${job_level} ,
                          {% elsif job_level._is_selected %}
                            ${job_level} ,
                          {% endif %}
                          {% if attribute_selector1._parameter_value == 'region' and attribute_selector1_dim._is_selected %}
                            ${region} ,
                          {% elsif attribute_selector2._parameter_value == 'region' and attribute_selector2_dim._is_selected %}
                            ${region} ,
                          {% elsif region._is_selected %}
                            ${region} ,
                          {% endif %}
                          {% if respondent_serial._is_selected %} ${respondent_serial} ,{% endif %}
                          {% if attribute_selector1._parameter_value == 'type' and attribute_selector1_dim._is_selected %}
                            ${type} ,
                          {% elsif attribute_selector2._parameter_value == 'type' and attribute_selector2_dim._is_selected %}
                            ${type} ,
                          {% elsif type._is_selected %}
                            ${type} ,
                          {% endif %}
                          {% if attribute_selector1._parameter_value == 'type_agency' and attribute_selector1_dim._is_selected %}
                            ${type_agency} ,
                          {% elsif attribute_selector2._parameter_value == 'type_agency' and attribute_selector2_dim._is_selected %}
                            ${type_agency} ,
                          {% elsif type_agency._is_selected %}
                            ${type_agency} ,
                          {% endif %}
                          {% if lcs._is_selected %} ${lcs} ,{% endif %}
                          {% if media_mobile._is_selected %} ${media_mobile} ,{% endif %}
                          {% if media_none._is_selected %} ${media_none} ,{% endif %}
                          {% if media_online._is_selected %} ${media_online} ,{% endif %}
                          {% if media_outdoor._is_selected %} ${media_outdoor} ,{% endif %}
                          {% if media_print._is_selected %} ${media_print} ,{% endif %}
                          {% if media_radio._is_selected %} ${media_radio} ,{% endif %}
                          {% if media_tv._is_selected %} ${media_tv} ,{% endif %}
                          {% if type_net._is_selected %} ${type_net} , {% endif %}
                          {% if unique_id._is_selected %} ${unique_id} ,{% endif %}
                          {% if vertical_automotive._is_selected %} ${vertical_automotive} ,{% endif %}
                          {% if vertical_cpg._is_selected %} ${vertical_cpg} ,{% endif %}
                          {% if vertical_entertainment._is_selected %} ${vertical_entertainment} ,{% endif %}
                          {% if vertical_fashion._is_selected %} ${vertical_fashion} ,{% endif %}
                          {% if vertical_finance._is_selected %}  ${vertical_finance} ,{% endif %}
                          {% if vertical_gaming._is_selected %}  ${vertical_gaming} ,{% endif %}
                          {% if vertical_gaming_consoles._is_selected %}  ${vertical_gaming_consoles} ,{% endif %}
                          {% if vertical_gaming_mobile._is_selected %}  ${vertical_gaming_mobile} ,{% endif %}
                          {% if vertical_gaming_other._is_selected %}  ${vertical_gaming_other} ,{% endif %}
                          {% if vertical_gaming_pc._is_selected %}  ${vertical_gaming_pc} ,{% endif %}
                          {% if vertical_healthcare._is_selected %}  ${vertical_healthcare} ,{% endif %}
                          {% if vertical_home._is_selected %} ${vertical_home} ,{% endif %}
                          {% if vertical_kids._is_selected %}  ${vertical_kids} ,{% endif %}
                          {% if vertical_other._is_selected %}  ${vertical_other}, {% endif %}
                          {% if vertical_personal_care._is_selected %}  ${vertical_personal_care} ,{% endif %}
                          {% if vertical_qsr._is_selected %}  ${vertical_qsr}, {% endif %}
                          {% if vertical_retail._is_selected %}  ${vertical_retail} ,{% endif %}
                          {% if vertical_tech._is_selected %}  ${vertical_tech} ,{% endif %}
                          {% if vertical_travel._is_selected %}  ${vertical_travel} ,{% endif %}
                          {% if attribute_selector1._parameter_value == 'wave' and attribute_selector1_dim._is_selected %}
                            ${wave} ,
                          {% elsif attribute_selector2._parameter_value == 'wave' and attribute_selector2_dim._is_selected %}
                            ${wave} ,
                          {% elsif wave._is_selected %}
                            ${wave} ,
                          {% endif %}
                          {% if weight._is_selected %}  ${weight} ,{% endif %}
                          {% if year._is_selected %}  ${year} ,{% endif %}
                          1)
                          ;;
  }

  measure: percent_weight {
    type: number
    group_label: "Weight Metrics"
    label: "Percent of Base"
    sql: ${wtct}/${sum_wtct_subtotal} ;;
    value_format_name: percent_0
  }
}
