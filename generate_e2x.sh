jb install
make prometheus_alerts.yaml
make prometheus_rules.yaml
make dashboards_out

if [[ -d dashboards_out ]];then
  echo "Removing dashboards not applicable to GKE..."
  pushd dashboards_out 1> /dev/null
  rm proxy.json scheduler.json controller-manager.json 2> /dev/null
  popd 1> /dev/null
  echo "Done..."
fi