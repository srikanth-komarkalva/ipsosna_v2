view: tbl_variables_values_v2 {
  derived_table: {
    sql: select distinct Brand_Fam as Value, "Brand_Fam" as VariableId, CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Fam <> ' '
      union all
      select distinct Brand_Fam_Net as Value, "Brand_Fam_Net" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Fam_Net <> ' '
      union all
      select distinct Brand_Consider as Value, "Brand_Consider" as VariableId ,CategoryId  FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Consider <> ' '
      union all
      select distinct Brand_Purchase as Value, "Brand_Purchase" as VariableId ,CategoryId  FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Purchase <> ' '
      union all
      select distinct Brand_Spend as Value, "Brand_Spend" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Spend <> ' '
      union all
      select distinct Brand_Essential as Value, "Brand_Essential" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Essential <> ' '
      union all
      select distinct Brand_Content as Value, "Brand_Content" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Content <> ' '
      union all
      select distinct Brand_Channels as Value, "Brand_Channels" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Channels <> ' '
      union all
      select distinct Brand_Audiences as Value, "Brand_Audiences" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Audiences <> ' '
      union all
      select distinct Brand_Trust as Value, "Brand_Trust" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Trust <> ' '
      union all
      select distinct Brand_Easy as Value, "Brand_Easy" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Easy <> ' '
       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: value {
    group_label: "Question Information"
    label: "Value"
    type: string
    sql: ${TABLE}.Value ;;
  }

  dimension: variable_id {
    group_label: "Question Information"
    label: "Variable ID"
#     hidden: yes
    type: string
    sql: ${TABLE}.VariableId ;;
  }

  dimension: category_id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.CategoryId ;;
  }

  set: detail {
    fields: [value, variable_id, category_id]
  }
}
