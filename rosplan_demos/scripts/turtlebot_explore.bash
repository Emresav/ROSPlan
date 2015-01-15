#!/bin/bash
rosservice call /kcl_rosplan/roadmap_server;
for i in 0 1 2 3 4 5 6 7 8 9
do
rosservice call /kcl_rosplan/update_knowledge_base "update_type: 1
knowledge:
  knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'visited'
  values:
  - {key: 'wp', value: 'wp$i'}
  function_value: 0.0"
done;
rosservice call /kcl_rosplan/planning_server;
