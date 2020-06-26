view: unique_opc_data {
  sql_table_name: `sisi_poc.unique_opc_data`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}.datatype ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
