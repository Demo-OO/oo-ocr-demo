namespace: groups
flow:
  name: create_file
  inputs:
    - file_path: "c:\\\\tools\\\\nn2.txt"
    - text: text 2
    - robot_group: Default
  workflow:
    - create_file_act:
        robot_group: '${robot_group}'
        do:
          groups.create_file_act:
            - file_path: '${file_path}'
            - folder_path: '${folder_path}'
            - file_name: '${file_name}'
            - text: '${text}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      create_file_act:
        x: 71
        'y': 82
        navigate:
          128e5dcd-6320-8ac8-e078-19b38dbc83b8:
            targetId: b2790d54-910a-0d42-da36-86ef7b558efd
            port: WARNING
          18b847c7-1eed-7c7c-1cc3-11a5f90403c7:
            targetId: b2790d54-910a-0d42-da36-86ef7b558efd
            port: SUCCESS
    results:
      SUCCESS:
        b2790d54-910a-0d42-da36-86ef7b558efd:
          x: 211
          'y': 130
