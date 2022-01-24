#!/bin/bash
file="../config.json"
sum_repos=$(jq '.values | length' $file)
for i in $(seq 1 $sum_repos);
do
repository=$(jq ".values[$i-1].repository"  $file);
branch=$(jq ".values[$i-1].branch"  $file);
dst=$(jq ".values[$i-1].dst"  $file);
cat <<EOF >> ansible/playbook.yaml
  - name: Clone $i
    ansible.builtin.git:
      repo: $repository
      dest: $dst
      accept_hostkey: yes
      key_file: /home/ubuntu/.ssh/github
      version: $branch
EOF
done