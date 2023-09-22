#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
#the hints lines are needed if you execute the tool via cwl-tes. It looks for hints.dockerRequirement and exits if this is not found
hints:
  DockerRequirement:
    dockerPull: docker-registry.ebrains.eu/tc/cwl-tools/smr_to_mat:latest
inputs:
  message:
    type: string
    inputBinding:
      position: 1
stdout: output.txt
outputs:
  out:
    type: stdout

