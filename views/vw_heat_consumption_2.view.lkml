view: vw_heat_consumption_2 {
  sql_table_name: `smig-smart-plan-poc.sisi_poc.vw_heat_consumption_2`
    ;;

  measure: calciner_coal_dosing_flow_a {
    type: average
    sql: ${TABLE}.calciner_coal_dosing_flow_a ;;
  }

  measure: calciner_coal_dosing_flow_b {
    type: average
    sql: ${TABLE}.calciner_coal_dosing_flow_b ;;
  }

  measure: calciner_oil_dosing_flow {
    type: average
    sql: ${TABLE}.calciner_oil_dosing_flow ;;
  }

  measure: clinker_heat_consumption_in_calciner {
    type: average
    sql: ${TABLE}.clinker_heat_consumption_in_calciner ;;
  }

  measure: clinker_heat_consumption_in_kiln {
    type: average
    sql: ${TABLE}.clinker_heat_consumption_in_kiln ;;
  }

  measure: estimated_clinker_production_rate {
    type: average
    sql: ${TABLE}.estimated_clinker_production_rate ;;
  }

  measure: kiln_coal_dosing_flow {
    type: average
    sql: ${TABLE}.kiln_coal_dosing_flow ;;
  }

  measure: kiln_oil_dosing_flow {
    type: average
    sql: ${TABLE}.kiln_oil_dosing_flow ;;
  }

  measure: measured_clinker_production_rate {
    type: average
    sql: ${TABLE}.measured_clinker_production_rate ;;
  }

  measure: nhv_oil {
    type: average
    sql: ${TABLE}.nhv_oil ;;
  }

  dimension: sensor_data {
    type: string
    sql: ${TABLE}.sensor_data ;;
  }

  dimension_group: timekey {
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
    sql: ${TABLE}.timekey ;;
  }

  measure: total_clinker_heat_consumption {
    type: average
    sql: ${TABLE}.total_clinker_heat_consumption ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
