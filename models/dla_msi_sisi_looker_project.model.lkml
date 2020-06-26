connection: "bigquery_sisi"

# include all the views
include: "/views/**/*.view"

datagroup: dla_msi_sisi_looker_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dla_msi_sisi_looker_project_default_datagroup

# explore: opc_data {}

# explore: opc_data_heat_consumption {}

# explore: unique_opc_data {}

# explore: vw_data_heat_consumption {}

# explore: vw_energi_listrik {}

# explore: vw_energi_panas {}

explore: vw_heat_consumption {}

explore: vw_heat_consumption_1 {}

explore: vw_heat_consumption_2 {}

# explore: vw_kualitas_fine_coal {}

# explore: vw_kualitas_kiln_feed {}

# explore: vw_parameter_operasi {}

# explore: vw_target_kualitas_produk_clinker {}
