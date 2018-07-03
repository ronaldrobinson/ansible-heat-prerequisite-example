#!/bin/bash

time openstack stack create \
  -e c2_env.yaml \
  --parameter flavor=m1.2xmedium \
  --parameter flavor_fleet=m1.large \
  --parameter image=288aad9e-542d-4f33-b1ef-1520b3429f21 \
  --parameter key_name=INE \
  --parameter fleet_count=2 \
  --parameter satellite_count=2 \
  --parameter workstation_count=2 \
  --parameter c2_network=ea47071c-84a9-4c1c-b78f-981735a45efd \
  --parameter c2_subnet=781b2eb6-a310-490e-9582-d222e8aae885 \
  --parameter public_network=f254bb76-b5ef-4110-9e5b-3d2be33e0b18 \
  --parameter security_group=e1174bc5-e1d9-4b2a-add0-389bf71df225 \
  -t c2_stack.yaml \
  test_stack_c2wks
