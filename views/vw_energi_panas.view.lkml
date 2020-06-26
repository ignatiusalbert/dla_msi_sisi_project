view: vw_energi_panas {
  sql_table_name: `sisi_poc.vw_energi_panas`
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

  dimension: faktor_code {
    type: string
    sql: ${TABLE}.faktor_code ;;
  }

  dimension: faktor_name {
    type: string
    sql: ${TABLE}.faktor_name ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: parameter_code {
    type: string
    sql: ${TABLE}.parameter_code ;;
  }

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.parameter_name ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: tag_number {
    type: string
    sql: ${TABLE}.tag_number ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [faktor_name, parameter_name]
  }
}
