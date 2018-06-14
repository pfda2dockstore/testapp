baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: testapp
inputs:
  testdata:
    doc: ''
    inputBinding:
      position: 1
      prefix: --testdata
    type: File
label: test app
outputs:
  parsed_file:
    doc: ''
    outputBinding:
      glob: parsed_file/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/testapp:4
s:author:
  class: s:Person
  s:name: Ana Sanchez
