view: tbl_variables_v2
{
 derived_table: {
     sql: SELECT distinct VarCat.VariableId, Var.VariableLabel, VarCat.CategoryId FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tblVariablesCategoriesV2`  VarCat
        JOIN `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tblVariablesV2` Var on Var.VariableId = VarCat.VariableId ;;
   }

  dimension: Variable_Id {
    group_label: "Question Information"
#     primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.VariableId ;;
  }

  dimension: Variable_Label {
    group_label: "Question Information"
    type: string
    sql: ${TABLE}.VariableLabel ;;
  }

  dimension: category_id {
    group_label: "Question Information"
    hidden: yes
    primary_key: yes
    type: string
#     primary_key: yes
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: question {
    group_label: "Question Information"
    description: "Concatenation of Variable ID and Variable Label"
    hidden: yes
    type: string
    sql: concat(${Variable_Id},' ',${Variable_Label}) ;;
  }

}
