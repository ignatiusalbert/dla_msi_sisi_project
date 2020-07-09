view: vw_heat_consumption_1 {
  sql_table_name: `smig-smart-plan-poc.sisi_poc.vw_heat_consumption_1`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  measure: calciner_coal_dosing_flow_a {
    type: average
    sql: ${TABLE}.calciner_coal_dosing_flow_a ;;
    value_format: "#,##0.00"
  }

  measure: calciner_coal_dosing_flow_b {
    type: average
    sql: ${TABLE}.calciner_coal_dosing_flow_b ;;
    value_format: "#,##0.00"
  }

  measure: calciner_oil_dosing_flow {
    type: average
    sql: ${TABLE}.calciner_oil_dosing_flow ;;
    value_format: "#,##0.00"
  }

  measure: clinker_heat_consumption_in_calciner {
    type: sum
    sql: ${TABLE}.clinker_heat_consumption_in_calciner ;;
    value_format: "#,##0.00"
  }

  measure: clinker_heat_consumption_in_kiln {
    type: sum
    sql: ${TABLE}.clinker_heat_consumption_in_kiln ;;
    value_format: "#,##0.00"
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}.datatype ;;
  }

  measure: estimated_clinker_production_rate {
    type: sum
    sql: ${TABLE}.estimated_clinker_production_rate ;;
    value_format: "#,##0.00"
  }

  measure: kiln_coal_dosing_flow {
    type: average
    sql: ${TABLE}.kiln_coal_dosing_flow ;;
    value_format: "#,##0.00"
  }

  measure: kiln_oil_dosing_flow {
    type: average
    sql: ${TABLE}.kiln_oil_dosing_flow ;;
    value_format: "#,##0.00"
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  measure: measured_clinker_production_rate {
    type: sum
    sql: ${TABLE}.measured_clinker_production_rate ;;
    value_format: "#,##0.00"
  }

  measure: nhv_fine_coal {
    type: average
    sql: ${TABLE}.nhv_fine_coal ;;
    value_format: "#,##0.00"
  }

  measure: nhv_oil {
    type: average
    sql: ${TABLE}.nhv_oil ;;
    value_format: "#,##0.00"
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension_group: timestamp {
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
    sql: CAST(${TABLE}.timestamp AS TIMESTAMP) ;;
  }

  measure: total_clinker_heat_consumption {
    type: sum
    sql: ${TABLE}.total_clinker_heat_consumption ;;
    value_format: "#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
