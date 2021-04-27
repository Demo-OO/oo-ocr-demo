namespace: groups
flow:
  name: export_sap_log
  inputs:
    - folder_path: "c:\\\\temp"
    - file_name: sap-log.txt
    - worker_robot_group: Default
  workflow:
    - export_sap_log_act:
        robot_group: '${worker_robot_group}'
        worker_group: '${worker_robot_group}'
        do:
          groups.export_sap_log_act:
            - folder_path: '${folder_path}'
            - file_name: '${file_name}'
        publish:
          - status
        navigate:
          - SUCCESS: status_passed
          - WARNING: status_passed
          - FAILURE: on_failure
    - status_passed:
        worker_group: '${worker_robot_group}'
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: "${str('bytes passed' in status)}"
        navigate:
          - 'TRUE': send_mail
          - 'FALSE': FAILURE
    - send_mail:
        worker_group: '${worker_robot_group}'
        do:
          io.cloudslang.base.mail.send_mail:
            - hostname: localhost
            - port: '25'
            - from: petr.panuska@microfocus.com
            - to: sheetal@microfocus.com
            - subject: SAP Logs
            - body: Fresh SAP logs attached
            - attachments: "${'\\\\'.join([folder_path, file_name])}"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      export_sap_log_act:
        x: 136
        'y': 92
      status_passed:
        x: 353
        'y': 95
        navigate:
          af87bb06-df44-9b2b-a91a-a244349d6fda:
            targetId: 7c1d9bd4-b3ba-2936-d04e-21bee1345157
            port: 'FALSE'
      send_mail:
        x: 524
        'y': 89
        navigate:
          9e12817c-8a04-e839-8134-b30fa4f30a91:
            targetId: 629092d1-c7dc-829a-fea6-f64a304471b0
            port: SUCCESS
    results:
      SUCCESS:
        629092d1-c7dc-829a-fea6-f64a304471b0:
          x: 687
          'y': 91
      FAILURE:
        7c1d9bd4-b3ba-2936-d04e-21bee1345157:
          x: 355
          'y': 396
