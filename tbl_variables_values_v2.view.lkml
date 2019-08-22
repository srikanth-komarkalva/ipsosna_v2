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
      select distinct Brand_AdResults as Value, "Brand_AdResults" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_AdResults <> ' '
      union all
      select distinct Brand_BizResults as Value, "Brand_BizResults" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_BizResults <> ' '
      union all
      select distinct Brand_Trust as Value, "Brand_Trust" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Trust <> ' '
      union all
      select distinct Brand_Easy as Value, "Brand_Easy" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Easy <> ' '
      union all
      select distinct Brand_Prefer as Value, "Brand_Prefer" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Prefer <> ' '
      union all
      select distinct Brand_Most_Essential_1 as Value, "Brand_Most_Essential_1" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Most_Essential_1 <> ' '
      union all
      select distinct Brand_Most_Essential_2 as Value, "Brand_Most_Essential_2" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Most_Essential_2 <> ' '
      union all
      select distinct Brand_Import_Content as Value, "Brand_Import_Content" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Content <> ' '
      union all
      select distinct Brand_Import_Channels as Value, "Brand_Import_Channels" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Channels <> ' '
      union all
      select distinct Brand_Import_Audiences as Value, "Brand_Import_Audiences" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Audiences <> ' '
      union all
      select distinct Brand_Import_Ad_Results as Value, "Brand_Import_Ad_Results" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Ad_Results <> ' '
      union all
      select distinct Brand_Import_Biz_Results as Value, "Brand_Import_Biz_Results" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Biz_Results <> ' '
      union all
      select distinct Brand_Import_Trust as Value, "Brand_Import_Trust" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Trust <> ' '
      union all
      select distinct Brand_Import_Easy as Value, "Brand_Import_Easy" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Import_Easy <> ' '
      union all
      select distinct Brand_Ad_Placement_YouTube as Value, "Brand_Ad_Placement_YouTube" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Brand_Ad_Placement_YouTube <> ' '
      union all
      select distinct Perf_Fam as Value, "Perf_Fam" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Fam <> ' '
      union all
      select distinct Perf_Fam_Net as Value, "Perf_Fam_Net" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Fam_Net <> ' '
      union all
      select distinct Perf_Consider as Value, "Perf_Consider" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Consider <> ' '
      union all
      select distinct Perf_Purchase as Value, "Perf_Purchase" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Purchase <> ' '
      union all
      select distinct Perf_Spend as Value, "Perf_Spend" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Spend <> ' '
      union all
      select distinct Perf_Most_Essential as Value, "Perf_Most_Essential" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Essential <> ' '
      union all
      select distinct Perf_Essential as Value, "Perf_Essential" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Essential <> ' '
      union all
      select distinct Perf_Preferred as Value, "Perf_Preferred" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Preferred <> ' '
      union all
      select distinct Perf_Moments as Value, "Perf_Moments" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Moments <> ' '
      union all
      select distinct Perf_In_Store as Value, "Perf_In_Store" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_In_Store <> ' '
      union all
      select distinct Perf_Measure as Value, "Perf_Measure" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Measure <> ' '
      union all
      select distinct Perf_Target as Value, "Perf_Target" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Target <> ' '
      union all
      select distinct Perf_ROI as Value, "Perf_ROI" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_ROI <> ' '
      union all
      select distinct Perf_Partner_Goals as Value, "Perf_Partner_Goals" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Partner_Goals <> ' '
      union all
      select distinct Perf_Insights as Value, "Perf_Insights" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Insights <> ' '
      union all
      select distinct Perf_Trust as Value, "Perf_Trust" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Trust <> ' '
      union all
      select distinct Perf_Partner_Growth as Value, "Perf_Partner_Growth" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Partner_Growth <> ' '
      union all
      select distinct Perf_Prefer as Value, "Perf_Prefer" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Prefer <> ' '
      union all
      select distinct Perf_Authority as Value, "Perf_Authority" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Authority <> ' '
      union all
      select distinct Perf_Import_Moments as Value, "Perf_Import_Moments" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Moments <> ' '
      union all
      select distinct Perf_Import_In_Store as Value, "Perf_Import_In_Store" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_In_Store <> ' '
      union all
      select distinct Perf_Import_Measure as Value, "Perf_Import_Measure" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Measure <> ' '
      union all
      select distinct Perf_Import_Target as Value, "Perf_Import_Target" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Target <> ' '
      union all
      select distinct Perf_Import_ROI as Value, "Perf_Import_ROI" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_ROI <> ' '
      union all
      select distinct Perf_Import_Partner_Goals as Value, "Perf_Import_Partner_Goals" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Partner_Goals <> ' '
      union all
      select distinct Perf_Import_Insights as Value, "Perf_Import_Insights" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Insights <> ' '
      union all
      select distinct Perf_Import_Trust as Value, "Perf_Import_Trust" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Trust <> ' '
      union all
      select distinct Perf_Import_Partner_Growth as Value, "Perf_Import_Partner_Growth" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Import_Partner_Growth <> ' '
      union all
      select distinct Perf_Most_Essential_Mobile as Value, "Perf_Most_Essential_Mobile" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Most_Essential_Mobile <> ' '
      union all
      select distinct Perf_Most_Essential_Direct as Value, "Perf_Most_Essential_Direct" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Most_Essential_Direct <> ' '
      union all
      select distinct Perf_Top_Priority_Google as Value, "Perf_Top_Priority_Google" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Top_Priority_Google <> ' '
      union all
      select distinct Perf_Privacy_Google as Value, "Perf_Privacy_Google" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Privacy_Google <> ' '
      union all
      select distinct Perf_Satisfaction_Google as Value, "Perf_Satisfaction_Google" as VariableId ,CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.FactsV2` where Perf_Satisfaction_Google <> ' '
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
