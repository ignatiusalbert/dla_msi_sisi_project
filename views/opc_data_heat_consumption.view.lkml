view: opc_data_heat_consumption {
  sql_table_name: `sisi_poc.opc_data_heat_consumption`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  dimension: avg_value {
    type: number
    sql: ${TABLE}.avg_value ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
