##this code checks if any visible field in the explore is selected or filtered and
##selects/filters/groups by all of them, except for tbl_facts_v2.value
view: bases {
  derived_table: {
    sql: SELECT 'placeholder'

                -- all tbl_variables_categories_v2 fields
                {% if tbl_variables_categories_v2.variable_id._is_selected %} , vm.VariableId {% endif %}

                -- all tbl_categories_v2 fields
                {% if tbl_categories_v2.category_id._is_selected or tbl_facts_v2.category_id._is_selected %} , cm.CategoryId {% endif %}
                {% if tbl_categories_v2.category_label._is_selected %} , cm.CategoryLabel {% endif %}

                -- all tbl_demographics_v2 fields
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'campaign_type' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Campaign_Type
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'campaign_type' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Campaign_Type
                {% elsif tbl_demographics_v2.campaign_type._is_selected %}
                  , demos.Campaign_Type
                {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'country' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Country
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'country' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Country
                {% elsif tbl_demographics_v2.country._is_selected %}
                  , demos.Country
                {% endif %}
                {% if tbl_demographics_v2.data_collection_finish_time._is_selected %} , demos.DataCollection_FinishTime {% endif %}
                {% if tbl_demographics_v2.data_collection_start_time._is_selected %} , demos.DataCollection_StartTime {% endif %}
                {% if tbl_demographics_v2.decision_maker._is_selected %} , demos.Decision_Maker {% endif %}
                {% if tbl_demographics_v2.gcs._is_selected %} , demos.GCS {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'job_function' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Job_Function
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_function' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Job_Function
                {% elsif tbl_demographics_v2.job_function._is_selected %}
                  , demos.Job_Function
                {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'job_level' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Job_Level
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_level' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Job_Level
                {% elsif tbl_demographics_v2.job_level._is_selected %}
                  , demos.Job_Level
                {% endif %}
                {% if tbl_demographics_v2.lcs._is_selected %} , demos.LCS {% endif %}
                {% if tbl_demographics_v2.media_mobile._is_selected %} , demos.Media_Mobile {% endif %}
                {% if tbl_demographics_v2.media_none._is_selected %} , demos.Media_None {% endif %}
                {% if tbl_demographics_v2.media_online._is_selected %} , demos.Media_Online {% endif %}
                {% if tbl_demographics_v2.media_outdoor._is_selected %} , demos.Media_Outdoor {% endif %}
                {% if tbl_demographics_v2.media_print._is_selected %} , demos.Media_Print {% endif %}
                {% if tbl_demographics_v2.media_radio._is_selected %} , demos.Media_Radio {% endif %}
                {% if tbl_demographics_v2.media_tv._is_selected %} , demos.Media_TV {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'region' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Region
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'region' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Region
                {% elsif tbl_demographics_v2.region._is_selected %}
                  , demos.Region
                {% endif %}
                {% if tbl_demographics_v2.respondent_serial._is_selected %} , demos.Respondent_Serial {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'type' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Type
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Type
                {% elsif tbl_demographics_v2.type._is_selected %}
                  , demos.Type
                {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'type_agency' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Type_Agency
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type_agency' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Type_Agency
                {% elsif tbl_demographics_v2.type_agency._is_selected %}
                  , demos.Type_Agency
                {% endif %}
                {% if tbl_demographics_v2.type_net._is_selected %} , demos.Type_Net {% endif %}
                {% if tbl_demographics_v2.unique_id._is_selected or tbl_facts_v2.unique_id._is_selected %} , demos.Unique_ID {% endif %}
                {% if tbl_demographics_v2.vertical_automotive._is_selected %} , demos.Vertical_Automotive {% endif %}
                {% if tbl_demographics_v2.vertical_cpg._is_selected %} , demos.Vertical_CPG {% endif %}
                {% if tbl_demographics_v2.vertical_entertainment._is_selected %} , demos.Vertical_Entertainment {% endif %}
                {% if tbl_demographics_v2.vertical_fashion._is_selected %} , demos.Vertical_Fashion {% endif %}
                {% if tbl_demographics_v2.vertical_finance._is_selected %} , demos.Vertical_Finance {% endif %}
                {% if tbl_demographics_v2.vertical_gaming._is_selected %} , demos.Vertical_Gaming {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_consoles._is_selected %} , demos.Vertical_Gaming_Consoles {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_mobile._is_selected %} , demos.Vertical_Gaming_Mobile {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_other._is_selected %} , demos.Vertical_Gaming_Other {% endif %}
                {% if tbl_demographics_v2.vertical_gaming_pc._is_selected %} , demos.Vertical_Gaming_PC {% endif %}
                {% if tbl_demographics_v2.vertical_healthcare._is_selected %} , demos.Vertical_Healthcare {% endif %}
                {% if tbl_demographics_v2.vertical_home._is_selected %} , demos.Vertical_Home {% endif %}
                {% if tbl_demographics_v2.vertical_kids._is_selected %} , demos.Vertical_Kids {% endif %}
                {% if tbl_demographics_v2.vertical_other._is_selected %} , demos.Vertical_Other {% endif %}
                {% if tbl_demographics_v2.vertical_personal_care._is_selected %} , demos.Vertical_Personal_Care {% endif %}
                {% if tbl_demographics_v2.vertical_qsr._is_selected %} , demos.Vertical_QSR {% endif %}
                {% if tbl_demographics_v2.vertical_retail._is_selected %} , demos.Vertical_Retail {% endif %}
                {% if tbl_demographics_v2.vertical_tech._is_selected %} , demos.Vertical_Tech {% endif %}
                {% if tbl_demographics_v2.vertical_travel._is_selected %} , demos.Vertical_Travel {% endif %}
                {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'wave' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                  , demos.Wave
                {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'wave' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                  , demos.Wave
                {% elsif tbl_demographics_v2.wave._is_selected %}
                  , demos.Wave
                {% endif %}
                {% if tbl_demographics_v2.weight._is_selected %} , demos.Weight {% endif %}
                {% if tbl_demographics_v2.year._is_selected %} , substr(demos.Wave,4,4) as year {% endif %}

                , COUNT(distinct facts.Unique_ID) unwtbase,
                  COALESCE(ROUND(COALESCE(CAST( ( SUM(DISTINCT (CAST(ROUND(COALESCE(demos.Weight ,0)*(1/1000*1.0), 9) AS NUMERIC) + (cast(cast(concat('0x', substr(to_hex(md5(CAST(demos.Unique_ID  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST(demos.Unique_ID  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001 )) - SUM(DISTINCT (cast(cast(concat('0x', substr(to_hex(md5(CAST(demos.Unique_ID  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST(demos.Unique_ID  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001) )  / (1/1000*1.0) AS FLOAT64), 0), 6), 0) wtbase

                   FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tbl_facts_v2` facts
                   JOIN `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tbl_demographics_v2` demos ON demos.Unique_ID=facts.Unique_ID
                   JOIN `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tblVariablesCategoriesV2` vm ON vm.CategoryID=facts.CategoryID
                   JOIN `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tbl_categories_v2` cm ON cm.CategoryId=facts.CategoryID

                   WHERE

                    --facts.value is not null

                    -- all tbl_facts_v2 fields (want to filter on everything users filter on, even if they're
                    -- silly and filter on both variable_fact.variable_id and tbl_variables_categories_v2.variable_id, for example)
                    {% condition tbl_facts_v2.category_id %} cm.CategoryId {% endcondition %}
                    AND {% condition tbl_facts_v2.unique_id %} demos.Unique_ID {% endcondition %}

                    -- all tbl_variables_categories_v2 fields
                    AND {% condition tbl_variables_categories_v2.variable_id %} vm.VariableId {% endcondition %}
                    -- all tbl_categories_v2 fields
                    AND {% condition tbl_categories_v2.category_id %} cm.CategoryId {% endcondition %}
                    AND {% condition tbl_categories_v2.category_label %} cm.CategoryLabel {% endcondition %}

                    -- all tbl_demographics_v2 fields
                    AND {% condition tbl_demographics_v2.campaign_type %} demos.Campaign_Type {% endcondition %}
                    AND {% condition tbl_demographics_v2.country %} demos.Country {% endcondition %}
                    AND {% condition tbl_demographics_v2.data_collection_finish_time %} demos.DataCollection_FinishTime {% endcondition %}
                    AND {% condition tbl_demographics_v2.data_collection_start_time %} demos.DataCollection_StartTime {% endcondition %}
                    AND {% condition tbl_demographics_v2.decision_maker %} demos.Decision_Maker {% endcondition %}
                    AND {% condition tbl_demographics_v2.gcs %} demos.GCS {% endcondition %}
                    AND {% condition tbl_demographics_v2.job_function %} demos.Job_Function {% endcondition %}
                    AND {% condition tbl_demographics_v2.job_level %} demos.Job_Level {% endcondition %}
                    AND {% condition tbl_demographics_v2.lcs %} demos.LCS {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_mobile %} demos.Media_Mobile {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_none %} demos.Media_None {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_online %} demos.Media_Online {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_outdoor %} demos.Media_Outdoor {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_print %} demos.Media_Print {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_radio %} demos.Media_Radio {% endcondition %}
                    AND {% condition tbl_demographics_v2.media_tv %} demos.Media_TV {% endcondition %}
                    AND {% condition tbl_demographics_v2.region %} demos.Region {% endcondition %}
                    AND {% condition tbl_demographics_v2.respondent_serial %} demos.Respondent_Serial {% endcondition %}
                    AND {% condition tbl_demographics_v2.type %} demos.Type {% endcondition %}
                    AND {% condition tbl_demographics_v2.type_agency %} demos.Type_Agency {% endcondition %}
                    AND {% condition tbl_demographics_v2.type_net %} demos.Type_Net {% endcondition %}
                    AND {% condition tbl_demographics_v2.unique_id %} demos.Unique_ID {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_automotive %} demos.Vertical_Automotive {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_cpg %} demos.Vertical_CPG {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_entertainment %} demos.Vertical_Entertainment {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_fashion %} demos.Vertical_Fashion {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_finance %} demos.Vertical_Finance {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_gaming %} demos.Vertical_Gaming {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_gaming_consoles %} demos.Vertical_Gaming_Consoles {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_gaming_mobile %} demos.Vertical_Gaming_Mobile {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_gaming_other %} demos.Vertical_Gaming_Other {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_gaming_pc %} demos.Vertical_Gaming_PC {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_healthcare %} demos.Vertical_Healthcare {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_home %} demos.Vertical_Home {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_kids %} demos.Vertical_Kids {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_other %} demos.Vertical_Other {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_personal_care %} demos.Vertical_Personal_Care {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_qsr %} demos.Vertical_QSR {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_retail %} demos.Vertical_Retail {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_tech %} demos.Vertical_Tech {% endcondition %}
                    AND {% condition tbl_demographics_v2.vertical_travel %} demos.Vertical_Travel {% endcondition %}
                    AND {% condition tbl_demographics_v2.wave %} demos.Wave {% endcondition %}
                    AND {% condition tbl_demographics_v2.weight %} demos.Weight {% endcondition %}
                    AND {% condition tbl_demographics_v2.year %} substr(demos.Wave,4,4) {% endcondition %}

                    -- all banner filter options
                    AND
                       {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'country' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Country {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'wave' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Wave {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'region' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Region {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'campaign_type' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Campaign_Type {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'type' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Type {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'type_agency' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Type_Agency {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'job_level' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Job_Level {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector1._parameter_value == 'job_function' %}
                        {% condition tbl_demographics_v2.attribute_selector1_dim %} demos.Job_Function {% endcondition %}
                       {% else %}
                         1=1
                       {% endif %}
                    AND
                       {% if tbl_demographics_v2.attribute_selector2._parameter_value == 'country' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Country {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'wave' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Wave {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'region' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Region {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'campaign_type' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Campaign_Type {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Type {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type_agency' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Type_Agency {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_level' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Job_Level {% endcondition %}
                       {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_function' %}
                        {% condition tbl_demographics_v2.attribute_selector2_dim %} demos.Job_Function {% endcondition %}
                       {% else %}
                         1=1
                       {% endif %}

                    -- all dynamic (q-by-q crosstab) filter options
                    {% if _explore._name == 'tbl_facts_v2_crosstab' %}
                      AND facts.Unique_ID in (
                        SELECT facts.Unique_ID
                        FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tbl_facts_v2` facts
                        WHERE
                          facts.value is not null
                          AND {% condition dynamic_1.variable_id_1 %} facts.VariableID {% endcondition %}
                          AND {% condition dynamic_1.category_id_1 %} facts.CategoryID {% endcondition %}
                        )
                        AND facts.Unique_ID in (
                          SELECT facts.Unique_ID
                          FROM `mgcp-1192365-ipsos-gbht-srf617.YouTubeB2B.tbl_facts_v2` facts
                          WHERE
                            facts.value is not null
                            AND {% condition dynamic_2.variable_id_2 %} facts.VariableId {% endcondition %}
                            AND {% condition dynamic_2.category_id_2 %} facts.CategoryId {% endcondition %}
                        )
                      {% endif %}

                   GROUP BY 1

                    -- all tbl_variables_categories_v2 fields
                    {% if tbl_variables_categories_v2.variable_id._is_selected  %} , vm.VariableId {% endif %}
                    --or tbl_facts_v2.variable_id._is_selected

                    -- all tbl_categories_v2 fields
                    {% if tbl_categories_v2.category_id._is_selected or tbl_facts_v2.category_id._is_selected %} , cm.CategoryId {% endif %}
                    {% if tbl_categories_v2.category_label._is_selected %} , cm.CategoryLabel {% endif %}

                    -- all tbl_demographics_v2 fields
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'campaign_type' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Campaign_Type
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'campaign_type' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Campaign_Type
                    {% elsif tbl_demographics_v2.campaign_type._is_selected %}
                      , demos.Campaign_Type
                    {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'country' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Country
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'country' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Country
                    {% elsif tbl_demographics_v2.country._is_selected %}
                      , demos.Country
                    {% endif %}
                    {% if tbl_demographics_v2.data_collection_finish_time._is_selected %} , demos.DataCollection_FinishTime {% endif %}
                    {% if tbl_demographics_v2.data_collection_start_time._is_selected %} , demos.DataCollection_StartTime {% endif %}
                    {% if tbl_demographics_v2.decision_maker._is_selected %} , demos.Decision_Maker {% endif %}
                    {% if tbl_demographics_v2.gcs._is_selected %} , demos.GCS {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'job_function' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Job_Function
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_function' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Job_Function
                    {% elsif tbl_demographics_v2.job_function._is_selected %}
                      , demos.Job_Function
                    {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'job_level' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Job_Level
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'job_level' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Job_Level
                    {% elsif tbl_demographics_v2.job_level._is_selected %}
                      , demos.Job_Level
                    {% endif %}
                    {% if tbl_demographics_v2.lcs._is_selected %} , demos.LCS {% endif %}
                    {% if tbl_demographics_v2.media_mobile._is_selected %} , demos.Media_Mobile {% endif %}
                    {% if tbl_demographics_v2.media_none._is_selected %} , demos.Media_None {% endif %}
                    {% if tbl_demographics_v2.media_online._is_selected %} , demos.Media_Online {% endif %}
                    {% if tbl_demographics_v2.media_outdoor._is_selected %} , demos.Media_Outdoor {% endif %}
                    {% if tbl_demographics_v2.media_print._is_selected %} , demos.Media_Print {% endif %}
                    {% if tbl_demographics_v2.media_radio._is_selected %} , demos.Media_Radio {% endif %}
                    {% if tbl_demographics_v2.media_tv._is_selected %} , demos.Media_TV {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'region' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Region
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'region' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Region
                    {% elsif tbl_demographics_v2.region._is_selected %}
                      , demos.Region
                    {% endif %}
                    {% if tbl_demographics_v2.respondent_serial._is_selected %} , demos.Respondent_Serial {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'type' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Type
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Type
                    {% elsif tbl_demographics_v2.type._is_selected %}
                      , demos.Type
                    {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'type_agency' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Type_Agency
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'type_agency' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Type_Agency
                    {% elsif tbl_demographics_v2.type_agency._is_selected %}
                      , demos.Type_Agency
                    {% endif %}
                    {% if tbl_demographics_v2.type_net._is_selected %} , demos.Type_Net {% endif %}
                    {% if tbl_demographics_v2.unique_id._is_selected or tbl_facts_v2.unique_id._is_selected %} , demos.Unique_ID {% endif %}
                    {% if tbl_demographics_v2.vertical_automotive._is_selected %} , demos.Vertical_Automotive {% endif %}
                    {% if tbl_demographics_v2.vertical_cpg._is_selected %} , demos.Vertical_CPG {% endif %}
                    {% if tbl_demographics_v2.vertical_entertainment._is_selected %} , demos.Vertical_Entertainment {% endif %}
                    {% if tbl_demographics_v2.vertical_fashion._is_selected %} , demos.Vertical_Fashion {% endif %}
                    {% if tbl_demographics_v2.vertical_finance._is_selected %} , demos.Vertical_Finance {% endif %}
                    {% if tbl_demographics_v2.vertical_gaming._is_selected %} , demos.Vertical_Gaming {% endif %}
                    {% if tbl_demographics_v2.vertical_gaming_consoles._is_selected %} , demos.Vertical_Gaming_Consoles {% endif %}
                    {% if tbl_demographics_v2.vertical_gaming_mobile._is_selected %} , demos.Vertical_Gaming_Mobile {% endif %}
                    {% if tbl_demographics_v2.vertical_gaming_other._is_selected %} , demos.Vertical_Gaming_Other {% endif %}
                    {% if tbl_demographics_v2.vertical_gaming_pc._is_selected %} , demos.Vertical_Gaming_PC {% endif %}
                    {% if tbl_demographics_v2.vertical_healthcare._is_selected %} , demos.Vertical_Healthcare {% endif %}
                    {% if tbl_demographics_v2.vertical_home._is_selected %} , demos.Vertical_Home {% endif %}
                    {% if tbl_demographics_v2.vertical_kids._is_selected %} , demos.Vertical_Kids {% endif %}
                    {% if tbl_demographics_v2.vertical_other._is_selected %} , demos.Vertical_Other {% endif %}
                    {% if tbl_demographics_v2.vertical_personal_care._is_selected %} , demos.Vertical_Personal_Care {% endif %}
                    {% if tbl_demographics_v2.vertical_qsr._is_selected %} , demos.Vertical_QSR {% endif %}
                    {% if tbl_demographics_v2.vertical_retail._is_selected %} , demos.Vertical_Retail {% endif %}
                    {% if tbl_demographics_v2.vertical_tech._is_selected %} , demos.Vertical_Tech {% endif %}
                    {% if tbl_demographics_v2.vertical_travel._is_selected %} , demos.Vertical_Travel {% endif %}
                    {% if tbl_demographics_v2.attribute_selector1._parameter_value == 'wave' and tbl_demographics_v2.attribute_selector1_dim._is_selected %}
                      , demos.Wave
                    {% elsif tbl_demographics_v2.attribute_selector2._parameter_value == 'wave' and tbl_demographics_v2.attribute_selector2_dim._is_selected %}
                      , demos.Wave
                    {% elsif tbl_demographics_v2.wave._is_selected %}
                      , demos.Wave
                    {% endif %}
                    {% if tbl_demographics_v2.weight._is_selected %} , demos.Weight {% endif %}
                    {% if tbl_demographics_v2.year._is_selected %} , substr(demos.Wave,4,4) {% endif %}
             ;;
  }

  dimension: variable_id {
    hidden: yes
    type: string
    sql: ${TABLE}.VariableId ;;
  }

  dimension: category_id {
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: category_label {
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryLabel ;;
  }

  dimension: campaign_type {
    hidden: yes
    type: string
    sql: ${TABLE}.Campaign_Type ;;
  }

  dimension: country {
    hidden: yes
    type: string
    sql: ${TABLE}.Country ;;
  }

  dimension: data_collection_finish_time {
    hidden: yes
    type: date_time
    sql: ${TABLE}.DataCollection_FinishTime ;;
  }

  dimension: data_collection_start_time {
    hidden: yes
    type: date_time
    sql: ${TABLE}.DataCollection_StartTime ;;
  }

  dimension: decision_maker {
    hidden: yes
    type: string
    sql: ${TABLE}.Decision_Maker ;;
  }

  dimension: gcs {
    hidden: yes
    type: string
    sql: ${TABLE}.GCS ;;
  }

  dimension: job_function {
    hidden: yes
    type: string
    sql: ${TABLE}.Job_Function ;;
  }

  dimension: job_level {
    hidden: yes
    type: string
    sql: ${TABLE}.Job_Level ;;
  }

  dimension: lcs {
    hidden: yes
    type: string
    sql: ${TABLE}.LCS ;;
  }

  dimension: media_mobile {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_Mobile ;;
  }

  dimension: media_none {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_None ;;
  }

  dimension: media_online {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_Online ;;
  }

  dimension: media_outdoor {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_Outdoor ;;
  }

  dimension: media_print {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_Print ;;
  }

  dimension: media_radio {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_Radio ;;
  }

  dimension: media_tv {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Media_TV ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: respondent_serial {
    hidden: yes
    type: number
    sql: ${TABLE}.Respondent_Serial ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: type_agency {
    hidden: yes
    type: string
    sql: ${TABLE}.Type_Agency ;;
  }

  dimension: type_net {
    hidden: yes
    type: string
    sql: ${TABLE}.Type_Net ;;
  }

  dimension: unique_id {
    hidden: yes
    type: number
    sql: ${TABLE}.Unique_ID ;;
  }

  dimension: vertical_automotive {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Automotive ;;
  }

  dimension: vertical_cpg {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_CPG ;;
  }

  dimension: vertical_entertainment {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Entertainment ;;
  }

  dimension: vertical_fashion {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Fashion ;;
  }

  dimension: vertical_finance {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Finance ;;
  }

  dimension: vertical_gaming {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Gaming ;;
  }

  dimension: vertical_gaming_consoles {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_Consoles ;;
  }

  dimension: vertical_gaming_mobile {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_Mobile ;;
  }

  dimension: vertical_gaming_other {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_Other ;;
  }

  dimension: vertical_gaming_pc {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Gaming_PC ;;
  }

  dimension: vertical_healthcare {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Healthcare ;;
  }

  dimension: vertical_home {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Home ;;
  }

  dimension: vertical_kids {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Kids ;;
  }

  dimension: vertical_other {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Other ;;
  }

  dimension: vertical_personal_care {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Personal_Care ;;
  }

  dimension: vertical_qsr {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_QSR ;;
  }

  dimension: vertical_retail {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Retail ;;
  }

  dimension: vertical_tech {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Tech ;;
  }

  dimension: vertical_travel {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Vertical_Travel ;;
  }

  dimension: wave {
    hidden: yes
    type: string
    sql: ${TABLE}.Wave ;;
  }

  dimension: weight {
    hidden: yes
    type: number
    sql: ${TABLE}.Weight ;;
  }

  dimension: year {
    hidden: yes
    type: string
    sql: ${TABLE}.year ;;
  }

  dimension: unwtbase {
    group_label: "% Weight Denominators"
    label: "Unweighted Base"
    sql: ${TABLE}.unwtbase ;;
  }

  dimension: wtbase {
    group_label: "% Weight Denominators"
    type: number
    label: "Weighted Base"
    sql: ${TABLE}.wtbase ;;
  }

  measure: min_wtbase {
    hidden: yes
    type: number
    sql: min(${wtbase}) ;;
  }

}
