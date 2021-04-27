namespace: groups
operation:
  name: export_sap_log_act
  inputs:
    - folder_path: "C:\\\\tools"
    - file_name: sap2.txt
  sequential_action:
    gav: 'com.microfocus.seq:groups.export_sap_log_act:1.0.0'
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
        server: INTERNAL
        ignore_existing_sessions: true
        active: true
        auto_log_on: true
        user: admin
        client: '001'
        remember_password: false
        close_on_exit: true
        language: EN
        password: Cloud@123
      windows:
        active: false
      terminal_settings:
        active: false
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("SAP Easy Access")'
          action: Resize
          default_args: '103,30'
      - step:
          id: '2'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("SAP Easy Access").SAPGuiTree("TableTreeControl")'
          action: ActivateNode
          default_args: '"SAP Menu;Tools;ABAP Workbench;Test;System Log"'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '37'
      - step:
          id: '3'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Display the system log").SAPGuiButton("Execute   (F8)")'
          action: Click
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '24'
      - step:
          id: '4'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages").SAPGuiToolbar("GridToolbar")'
          action: PressContextButton
          default_args: '"&MB_EXPORT"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '-1'
      - step:
          id: '5'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages").SAPGuiToolbar("GridToolbar")'
          action: SelectMenuItemById
          default_args: '"&PC"'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '-1'
      - step:
          id: '6'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Save list in file...").SAPGuiButton("Continue   (Enter)")'
          action: Click
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '2'
      - step:
          id: '7'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages_2").SAPGuiEdit("Directory")'
          action: Set
          default_args: "\"c:\\Temp\""
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '9'
          args: 'Parameter("folder_path")'
      - step:
          id: '8'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages_2").SAPGuiEdit("File Name")'
          action: Set
          default_args: '"sap-log.txt"'
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '8'
          args: 'Parameter("file_name")'
      - step:
          id: '9'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages_2").SAPGuiButton("Replace")'
          action: Click
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '3'
      - step:
          id: '10'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages").SAPGuiStatusBar("StatusBar")'
          action: Sync
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '1'
      - step:
          id: '11'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages").SAPGuiStatusBar("StatusBar")'
          action: Output
          default_args: 'CheckPoint("status")'
      - step:
          id: '12'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Syslog messages")'
          action: Close
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '0'
      - step:
          id: '13'
          object_path: 'SAPGuiSession("Session").SAPGuiWindow("Log Off").SAPGuiButton("Yes")'
          action: Click
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '3'
  outputs:
    - status:
        robot: true
        value: '${status}'
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
        name: Session
        child_objects:
          - object:
              smart_identification: ''
              name: Syslog messages_2
              child_objects:
                - object:
                    smart_identification: ''
                    name: File Name
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: DY_FILENAME
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiEdit
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '32'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[1]/usr/ctxtDY_FILENAME'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiEdit
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: Directory
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: DY_PATH
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiEdit
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '32'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[1]/usr/ctxtDY_PATH'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiEdit
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: Replace
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: 'btn[11]'
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiButton
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '40'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[1]/tbar[0]/btn[11]'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiButton
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: SM21
                      regular_expression: false
                    name: transaction
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: '200'
                      regular_expression: false
                    name: screennumber
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: SAPLSFES
                      regular_expression: false
                    name: program
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: 'wnd[1]'
                      regular_expression: false
                    name: name
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SAPGuiWindow
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: hightlight id
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: '22'
                      regular_expression: false
                    name: guicomponenttype
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'wnd[1]'
                      regular_expression: false
                    name: compidstr
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: SAPGuiWindow
              visual_relations: ''
              last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
              basic_identification:
                property_ref:
                  - transaction
                  - screennumber
                  - program
                  - name
                  - micclass
                  - guicomponenttype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Syslog messages
              child_objects:
                - object:
                    smart_identification: ''
                    name: GridToolbar
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: shell
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '204'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'usr/cntlCONTAINER_0100/shellcont/shell/shellcont[0]/shell'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiToolbar
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - guicomponenttype
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: StatusBar
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: SAPGuiStatusBar
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '103'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[0]/sbar'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiStatusBar
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: SM21
                      regular_expression: false
                    name: transaction
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: '100'
                      regular_expression: false
                    name: screennumber
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: SAPLRSLG
                      regular_expression: false
                    name: program
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: 'wnd[0]'
                      regular_expression: false
                    name: name
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SAPGuiWindow
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: hightlight id
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: '21'
                      regular_expression: false
                    name: guicomponenttype
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'wnd[0]'
                      regular_expression: false
                    name: compidstr
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: SAPGuiWindow
              visual_relations: ''
              last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
              basic_identification:
                property_ref:
                  - transaction
                  - screennumber
                  - program
                  - name
                  - micclass
                  - guicomponenttype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Save list in file...
              child_objects:
                - object:
                    smart_identification: ''
                    name: Continue   (Enter)
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: 'btn[0]'
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiButton
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '40'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[1]/tbar[0]/btn[0]'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiButton
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: SM21
                      regular_expression: false
                    name: transaction
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: '110'
                      regular_expression: false
                    name: screennumber
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: SAPLSPO5
                      regular_expression: false
                    name: program
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: 'wnd[1]'
                      regular_expression: false
                    name: name
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SAPGuiWindow
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: hightlight id
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: '22'
                      regular_expression: false
                    name: guicomponenttype
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'wnd[1]'
                      regular_expression: false
                    name: compidstr
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: SAPGuiWindow
              visual_relations: ''
              last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
              basic_identification:
                property_ref:
                  - transaction
                  - screennumber
                  - program
                  - name
                  - micclass
                  - guicomponenttype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: SAP Easy Access
              child_objects:
                - object:
                    smart_identification: ''
                    name: TableTreeControl
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: shell
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiTree
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '200'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[0]/usr/cntlIMAGE_CONTAINER/shellcont/shell/shellcont[0]/shell'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiTree
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: SESSION_MANAGER
                      regular_expression: false
                    name: transaction
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: '100'
                      regular_expression: false
                    name: screennumber
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: SAPLSMTR_NAVIGATION
                      regular_expression: false
                    name: program
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: 'wnd[0]'
                      regular_expression: false
                    name: name
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SAPGuiWindow
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: hightlight id
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: '21'
                      regular_expression: false
                    name: guicomponenttype
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'wnd[0]'
                      regular_expression: false
                    name: compidstr
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: SAPGuiWindow
              visual_relations: ''
              last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
              basic_identification:
                property_ref:
                  - transaction
                  - screennumber
                  - program
                  - name
                  - micclass
                  - guicomponenttype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Log Off
              child_objects:
                - object:
                    smart_identification: ''
                    name: 'Yes'
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: SPOP-OPTION1
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiButton
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '40'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[1]/usr/btnSPOP-OPTION1'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiButton
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: SM21
                      regular_expression: false
                    name: transaction
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: '100'
                      regular_expression: false
                    name: screennumber
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: SAPLSPO1
                      regular_expression: false
                    name: program
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: 'wnd[1]'
                      regular_expression: false
                    name: name
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SAPGuiWindow
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: hightlight id
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: '22'
                      regular_expression: false
                    name: guicomponenttype
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'wnd[1]'
                      regular_expression: false
                    name: compidstr
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: SAPGuiWindow
              visual_relations: ''
              last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
              basic_identification:
                property_ref:
                  - transaction
                  - screennumber
                  - program
                  - name
                  - micclass
                  - guicomponenttype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Display the system log
              child_objects:
                - object:
                    smart_identification: ''
                    name: Execute   (F8)
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: 'btn[8]'
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: SAPGuiButton
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '40'
                            regular_expression: false
                          name: guicomponenttype
                          hidden: false
                          read_only: false
                          type: NUMBER
                      - property:
                          value:
                            value: 'wnd[0]/tbar[1]/btn[8]'
                            regular_expression: false
                          name: compidstr
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: SAPGuiButton
                    visual_relations: ''
                    last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
                    basic_identification:
                      property_ref:
                        - name
                        - micclass
                        - guicomponenttype
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: SM21
                      regular_expression: false
                    name: transaction
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: '1000'
                      regular_expression: false
                    name: screennumber
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: RSYSLOG
                      regular_expression: false
                    name: program
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: 'wnd[0]'
                      regular_expression: false
                    name: name
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: SAPGuiWindow
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '0'
                      regular_expression: false
                    name: hightlight id
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: '21'
                      regular_expression: false
                    name: guicomponenttype
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'wnd[0]'
                      regular_expression: false
                    name: compidstr
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: SAPGuiWindow
              visual_relations: ''
              last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
              basic_identification:
                property_ref:
                  - transaction
                  - screennumber
                  - program
                  - name
                  - micclass
                  - guicomponenttype
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: 'ses[0]'
                regular_expression: false
              name: name
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: SAPGuiSession
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: hightlight id
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: '12'
                regular_expression: false
              name: guicomponenttype
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: '/app/con[0]/ses[0]'
                regular_expression: false
              name: compidstr
              hidden: true
              read_only: true
              type: STRING
        comments: ''
        custom_replay: ''
        class: SAPGuiSession
        visual_relations: ''
        last_update_time: 'Monday, April 26, 2021 2:16:20 PM'
        basic_identification:
          property_ref:
            - name
            - micclass
            - guicomponenttype
          ordinal_identifier: ''
  check_points_and_outputs:
    - check_point_and_output:
        standard_properties:
          standard_property:
            - value: ''
              visual_relations: ''
              parameter:
                value: '"status"'
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
                type: Parameter
              name: text
              flags: '312'
              inner_type: '8'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: testobjname
              flags: '3'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: testobjgentype
              flags: '3'
              inner_type: '0'
              type: STRING
            - value:
                value: Output Value
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: step_type
              flags: '88'
              inner_type: '8'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: parent
              flags: '9'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: objectid
              flags: '9'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: micclass
              flags: '3'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: class name
              flags: '3'
              inner_type: '0'
              type: STRING
        settings: ''
        name: status
        type: Output
        class: VerifyObj
  parameters: []
