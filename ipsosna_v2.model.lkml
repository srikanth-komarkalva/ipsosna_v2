connection: "youtubeb2bbq2"

# include all the views
include: "*.view"

##main explore
explore: tbl_facts_v2 {

  label: "YouTube Data"
  view_name: tbl_facts_v2
  view_label: "YouTube Data"

  join: tbl_demographics_v2 {
    view_label: "YouTube Data"
    type: inner
    relationship: many_to_one
    sql_on: ${tbl_facts_v2.unique_id} = ${tbl_demographics_v2.unique_id} ;;
  }
  join: tbl_variables_categories_v2 {
    view_label: "YouTube Data"
    type: inner
    relationship: many_to_one
    sql_on: ${tbl_facts_v2.category_id} = ${tbl_variables_categories_v2.category_id};;
  }
  join: tbl_categories_v2 {
    view_label: "YouTube Data"
    type: inner
    relationship: many_to_one
    sql_on: ${tbl_facts_v2.category_id} = ${tbl_categories_v2.category_id} ;;
  }
#   join: tbl_variables_categories_v2 {
#     view_label: "YouTube Data"
#     type: inner
#     relationship: many_to_one
#     sql_on: ${tbl_facts_v2.category_id} = ${tbl_variables_categories_v2.variable_id} ;;
#   }

  join: bases {
    view_label: "YouTube Data"
    type: inner
    relationship: many_to_one
    sql_on:
                1=1

                -- all tbl_variables_categories_v2 fields
                {% if tbl_variables_categories_v2.variable_id._is_selected %} AND ${tbl_variables_categories_v2.variable_id} = ${bases.variable_id} {% endif %}

                -- all tbl_categories_v2 fields
                {% if tbl_categories_v2.category_id._is_selected or tbl_facts_v2.category_id._is_selected %} AND ${tbl_categories_v2.category_id} = ${bases.category_id} {% endif %}
                {% if tbl_categories_v2.category_label._is_selected %} AND ${tbl_categories_v2.category_label} = ${bases.category_label} {% endif %}

                -- all tbl_demographics_v2 fields
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'campaign_type' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.campaign_type} = ${bases.campaign_type}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'campaign_type' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.campaign_type} = ${bases.campaign_type}
                {% elsif tbl_demographics_v2.campaign_type._is_selected %}
                  AND ${tbl_demographics_v2.campaign_type} = ${bases.campaign_type}
                {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'country' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.country} = ${bases.country}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'country' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.country} = ${bases.country}
                {% elsif tbl_demographics_v2.country._is_selected %}
                  AND ${tbl_demographics_v2.country} = ${bases.country}
                {% endif %}
                {% if tbl_demographics_v2.data_collection_finish_time._is_selected %} AND ${tbl_demographics_v2.data_collection_finish_time} = ${bases.data_collection_finish_time} {% endif %}
                {% if tbl_demographics_v2.data_collection_start_time._is_selected %} AND ${tbl_demographics_v2.data_collection_start_time} = ${bases.data_collection_start_time} {% endif %}
                {% if tbl_demographics_v2.decision_maker._is_selected %} AND ${tbl_demographics_v2.decision_maker} = ${bases.decision_maker} {% endif %}
                {% if tbl_demographics_v2.gcs._is_selected %} AND ${tbl_demographics_v2.gcs} = ${bases.gcs} {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'job_function' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.job_function} = ${bases.job_function}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_function' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.job_function} = ${bases.job_function}
                {% elsif tbl_demographics_v2.job_function._is_selected %}
                  AND ${tbl_demographics_v2.job_function} = ${bases.job_function}
                {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'job_level' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.job_level} = ${bases.job_level}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_level' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.job_level} = ${bases.job_level}
                {% elsif tbl_demographics_v2.job_level._is_selected %}
                  AND ${tbl_demographics_v2.job_level} = ${bases.job_level}
                {% endif %}
                {% if tbl_demographics_v2.lcs._is_selected %} AND ${tbl_demographics_v2.lcs} = ${bases.lcs} {% endif %}
                {% if tbl_demographics_v2.media_mobile._is_selected %} AND ${tbl_demographics_v2.media_mobile} = ${bases.media_mobile} {% endif %}
                {% if tbl_demographics_v2.media_none._is_selected %} AND ${tbl_demographics_v2.media_none} = ${bases.media_none} {% endif %}
                {% if tbl_demographics_v2.media_online._is_selected %} AND ${tbl_demographics_v2.media_online} = ${bases.media_online} {% endif %}
                {% if tbl_demographics_v2.media_outdoor._is_selected %} AND ${tbl_demographics_v2.media_outdoor} = ${bases.media_outdoor} {% endif %}
                {% if tbl_demographics_v2.media_print._is_selected %} AND ${tbl_demographics_v2.media_print} = ${bases.media_print} {% endif %}
                {% if tbl_demographics_v2.media_radio._is_selected %} AND ${tbl_demographics_v2.media_radio} = ${bases.media_radio} {% endif %}
                {% if tbl_demographics_v2.media_tv._is_selected %} AND ${tbl_demographics_v2.media_tv} = ${bases.media_tv} {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'region' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.region} = ${bases.region}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'region' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.region} = ${bases.region}
                {% elsif tbl_demographics_v2.region._is_selected %}
                  AND ${tbl_demographics_v2.region} = ${bases.region}
                {% endif %}
                {% if tbl_demographics_v2.respondent_serial._is_selected %} AND ${tbl_demographics_v2.respondent_serial} = ${bases.respondent_serial} {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'type' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.type} = ${bases.type}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.type} = ${bases.type}
                {% elsif tbl_demographics_v2.type._is_selected %}
                  AND ${tbl_demographics_v2.type} = ${bases.type}
                {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'type_agency' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.type_agency} = ${bases.type_agency}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type_agency' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.type_agency} = ${bases.type_agency}
                {% elsif tbl_demographics_v2.type_agency._is_selected %}
                  AND ${tbl_demographics_v2.type_agency} = ${bases.type_agency}
                {% endif %}
                {% if tbl_demographics_v2.type_net._is_selected %} AND ${tbl_demographics_v2.type_net} = ${bases.type_net} {% endif %}
                {% if tbl_demographics_v2.unique_id._is_selected or tbl_facts_v2.unique_id._is_selected %} AND ${tbl_demographics_v2.unique_id} = ${bases.unique_id} {% endif %}
                {% if tbl_demographics_v2.vertical_automotive._is_selected %} AND ${tbl_demographics_v2.vertical_automotive} = ${bases.vertical_automotive} {% endif %}
                {% if tbl_demographics_v2.vertical_cpg._is_selected %} AND ${tbl_demographics_v2.vertical_cpg} = ${bases.vertical_cpg} {% endif %}
                {% if tbl_demographics_v2.vertical_entertainment._is_selected %} AND ${tbl_demographics_v2.vertical_entertainment} = ${bases.vertical_entertainment} {% endif %}
                {% if tbl_demographics_v2.vertical_fashion._is_selected %} AND ${tbl_demographics_v2.vertical_fashion} = ${bases.vertical_fashion} {% endif %}
                {% if tbl_demographics_v2.vertical_finance._is_selected %} AND ${tbl_demographics_v2.vertical_finance} = ${bases.vertical_finance} {% endif %}
                {% if tbl_demographics_v2.vertical_gaming._is_selected %} AND ${tbl_demographics_v2.vertical_gaming} = ${bases.vertical_gaming} {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_consoles._is_selected %} AND ${tbl_demographics_v2.vertical_gaming_consoles} = ${bases.vertical_gaming_consoles} {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_mobile._is_selected %} AND ${tbl_demographics_v2.vertical_gaming_mobile} = ${bases.vertical_gaming_mobile} {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_other._is_selected %} AND ${tbl_demographics_v2.vertical_gaming_other} = ${bases.vertical_gaming_other} {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_pc._is_selected %} AND ${tbl_demographics_v2.vertical_gaming_pc} = ${bases.vertical_gaming_pc} {% endif %}
                {% if tbl_demographics_v2.vertical_healthcare._is_selected %} AND ${tbl_demographics_v2.vertical_healthcare} = ${bases.vertical_healthcare} {% endif %}
                {% if tbl_demographics_v2.vertical_home._is_selected %} AND ${tbl_demographics_v2.vertical_home} = ${bases.vertical_home} {% endif %}
                {% if tbl_demographics_v2.vertical_kids._is_selected %} AND ${tbl_demographics_v2.vertical_kids} = ${bases.vertical_kids} {% endif %}
                {% if tbl_demographics_v2.vertical_other._is_selected %} AND ${tbl_demographics_v2.vertical_other} = ${bases.vertical_other} {% endif %}
                {% if tbl_demographics_v2.vertical_personal_care._is_selected %} AND ${tbl_demographics_v2.vertical_personal_care} = ${bases.vertical_personal_care} {% endif %}
                {% if tbl_demographics_v2.vertical_qsr._is_selected %} AND ${tbl_demographics_v2.vertical_qsr} = ${bases.vertical_qsr} {% endif %}
                {% if tbl_demographics_v2.vertical_retail._is_selected %} AND ${tbl_demographics_v2.vertical_retail} = ${bases.vertical_retail} {% endif %}
                {% if tbl_demographics_v2.vertical_tech._is_selected %} AND ${tbl_demographics_v2.vertical_tech} = ${bases.vertical_tech} {% endif %}
                {% if tbl_demographics_v2.vertical_travel._is_selected %} AND ${tbl_demographics_v2.vertical_travel} = ${bases.vertical_travel} {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'wave' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  AND ${tbl_demographics_v2.wave} = ${bases.wave}
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'wave' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  AND ${tbl_demographics_v2.wave} = ${bases.wave}
                {% elsif tbl_demographics_v2.wave._is_selected %}
                  AND ${tbl_demographics_v2.wave} = ${bases.wave}
                {% endif %}
                {% if tbl_demographics_v2.weight._is_selected %} AND ${tbl_demographics_v2.weight} = ${bases.weight} {% endif %}
                {% if tbl_demographics_v2.year._is_selected %} AND ${tbl_demographics_v2.year} = ${bases.year} {% endif %}
            ;;
  }
}