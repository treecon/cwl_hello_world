#!/usr/bin/env cwltool

cwlVersion: v1.0
class: Workflow

inputs:
  message: string

outputs:
  final_output: 
    type: File     
    outputSource: helloworld/out

steps:
  helloworld:
    run: steps/echo.cwl
    in:
      message: message
    out: [out]

