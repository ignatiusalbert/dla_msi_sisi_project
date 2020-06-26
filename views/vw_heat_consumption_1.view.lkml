view: vw_heat_consumption_1 {
  sql_table_name: `sisi_poc.vw_heat_consumption_1`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  dimension: calciner_coal_dosing_flow_a {
    type: number
    sql: ${TABLE}.calciner_coal_dosing_flow_a ;;
  }

  dimension: calciner_coal_dosing_flow_b {
    type: number
    sql: ${TABLE}.calciner_coal_dosing_flow_b ;;
  }

  dimension: calciner_oil_dosing_flow {
    type: number
    sql: ${TABLE}.calciner_oil_dosing_flow ;;
  }

  dimension: clinker_heat_consumption_in_calciner {
    type: number
    sql: ${TABLE}.clinker_heat_consumption_in_calciner ;;
  }

  dimension: clinker_heat_consumption_in_kiln {
    type: number
    sql: ${TABLE}.clinker_heat_consumption_in_kiln ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}.datatype ;;
  }

  dimension: estimated_clinker_production_rate {
    type: number
    sql: ${TABLE}.estimated_clinker_production_rate ;;
  }

  dimension: kiln_coal_dosing_flow {
    type: number
    sql: ${TABLE}.kiln_coal_dosing_flow ;;
  }

  dimension: kiln_oil_dosing_flow {
    type: number
    sql: ${TABLE}.kiln_oil_dosing_flow ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: measured_clinker_production_rate {
    type: number
    sql: ${TABLE}.measured_clinker_production_rate ;;
  }

  dimension: nhv_fine_coal {
    type: number
    sql: ${TABLE}.nhv_fine_coal ;;
  }

  dimension: nhv_oil {
    type: number
    sql: ${TABLE}.nhv_oil ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_clinker_heat_consumption {
    type: number
    sql: ${TABLE}.total_clinker_heat_consumption ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
