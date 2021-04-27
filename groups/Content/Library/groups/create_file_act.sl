namespace: groups
operation:
  name: create_file_act
  inputs:
    - file_path
    - text
  sequential_action:
    gav: 'com.microfocus.seq:groups.create_file_act:1.0.0'
    skills:
      - Java
      - SAP
      - SAP NWBC Desktop
      - SAPUI5
      - SAPWDJ
      - SAPWebExt
      - Terminal Emulators
      - UI Automation
      - Web
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: true
        apps:
          app_1:
            args: '${file_path}'
            path: notepad
            directory: ''
      terminal_settings:
        active: false
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'Dialog("Notepad").WinButton("Yes")'
          action: Click
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '12257766'
      - step:
          id: '2'
          object_path: 'Window("Notepad").WinEditor("Edit")'
          action: Type
          default_args: '"creating new file"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '3016056'
          args: 'Parameter("text")'
      - step:
          id: '3'
          object_path: 'Window("Notepad").WinMenu("Menu")'
          action: Select
          default_args: "\"File;Save\tCtrl+S\""
      - step:
          id: '4'
          object_path: 'Window("Notepad")'
          action: Close
  outputs:
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
object_repository:
  objects:
    - object:
        smart_identification: ''
        name: Notepad
        child_objects:
          - object:
              smart_identification: ''
              name: Menu
              child_objects: []
              properties:
                - property:
                    value:
                      value: '2'
                      regular_expression: false
                    name: menuobjtype
                    hidden: false
                    read_only: false
                    type: NUMBER
              comments: ''
              custom_replay: ''
              class: WinMenu
              visual_relations: ''
              last_update_time: 'Friday, April 23, 2021 9:45:51 AM'
              basic_identification:
                property_ref:
                  - menuobjtype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Edit
              child_objects: []
              properties:
                - property:
                    value:
                      value: Edit
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Edit
                  name: simclass
                  type: STRING
              class: WinEditor
              visual_relations: ''
              last_update_time: 'Friday, April 23, 2021 9:45:51 AM'
              basic_identification:
                property_ref:
                  - nativeclass
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: Notepad
                regular_expression: false
              name: regexpwndtitle
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: Notepad
                regular_expression: false
              name: regexpwndclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
        comments: ''
        custom_replay:
          behavior:
            value: Notepad
            name: simclass
            type: STRING
        class: Window
        visual_relations: ''
        last_update_time: 'Friday, April 23, 2021 9:45:51 AM'
        basic_identification:
          property_ref:
            - regexpwndtitle
            - regexpwndclass
            - is owned window
            - is child window
          ordinal_identifier: ''
    - object:
        smart_identification: ''
        name: Notepad
        child_objects:
          - object:
              smart_identification: ''
              name: 'Yes'
              child_objects: []
              properties:
                - property:
                    value:
                      value: '&Yes'
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              class: WinButton
              visual_relations: ''
              last_update_time: 'Friday, April 23, 2021 9:45:51 AM'
              basic_identification:
                property_ref:
                  - text
                  - nativeclass
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: Notepad
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '#32770'
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '-1'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
        comments: ''
        custom_replay:
          behavior:
            value: '#32770'
            name: simclass
            type: STRING
        class: Dialog
        visual_relations: ''
        last_update_time: 'Friday, April 23, 2021 9:45:51 AM'
        basic_identification:
          property_ref:
            - text
            - nativeclass
            - is owned window
            - is child window
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
