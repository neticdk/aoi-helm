# aoi

![Version: 0.1.4](https://img.shields.io/badge/Version-0.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for Netic application operations infrastructure

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | grafana | 7.0.9 |
| https://victoriametrics.github.io/helm-charts/ | victoria-metrics-single-1(victoria-metrics-single) | 0.9.12 |
| https://victoriametrics.github.io/helm-charts/ | victoria-metrics-single-2(victoria-metrics-single) | 0.9.12 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| authProxy.affinity | list | `[]` |  |
| authProxy.annotations | object | `{}` |  |
| authProxy.enabled | bool | `true` |  |
| authProxy.extraArgs | list | `[]` |  |
| authProxy.extraEnv | list | `[]` |  |
| authProxy.extraEnvFrom | list | `[]` |  |
| authProxy.image.registry | string | `"registry.netic.dk"` |  |
| authProxy.image.repository | string | `"netic-oaas/cortex-proxy"` |  |
| authProxy.image.tag | string | `"v1.0.4"` |  |
| authProxy.nodeSelector | object | `{}` |  |
| authProxy.podAnnotations | object | `{}` |  |
| authProxy.podLabels | object | `{}` |  |
| authProxy.podManagementPolicy | string | `"Parallel"` |  |
| authProxy.podSecurityContext.fsGroup | int | `2000` |  |
| authProxy.podSecurityContext.runAsGroup | int | `3000` |  |
| authProxy.podSecurityContext.runAsNonRoot | bool | `true` |  |
| authProxy.podSecurityContext.runAsUser | int | `1000` |  |
| authProxy.priorityClassName | string | `nil` |  |
| authProxy.replicas | int | `1` |  |
| authProxy.resources.limits.memory | string | `"64Mi"` |  |
| authProxy.resources.requests.cpu | string | `"100m"` |  |
| authProxy.resources.requests.memory | string | `"64Mi"` |  |
| authProxy.selectorLabels | object | `{}` |  |
| authProxy.service.annotations | object | `{}` |  |
| authProxy.service.labels | object | `{}` |  |
| authProxy.terminationGracePeriodSeconds | int | `30` |  |
| authProxy.tolerations | list | `[]` |  |
| authProxy.topologySpauthProxyConstraints | list | `[]` |  |
| dashboards.bootstrapConfig.externalSecretsStore | object | `{}` |  |
| dashboards.bootstrapConfig.git.github.secretRef | string | `"tcs-github-auth"` |  |
| dashboards.bootstrapConfig.git.github.template.adminTeam | string | `"oaas-team"` |  |
| dashboards.bootstrapConfig.git.github.template.owner | string | `"neticdk-k8s"` |  |
| dashboards.bootstrapConfig.git.github.template.repo | string | `"tenant-grafana-template"` |  |
| dashboards.bootstrapConfig.vault | object | `{}` |  |
| dashboards.projectBootstrap.git | object | `{}` |  |
| externalSecret.vaultDataFromKey | string | `nil` |  |
| externalSecret.vaultMountPath | string | `nil` |  |
| externalSecret.vaultPath | string | `nil` |  |
| externalSecret.vaultServer | string | `nil` |  |
| global.annotations | object | `{}` |  |
| global.clusterDomain | string | `"cluster.local"` |  |
| global.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| global.containerSecurityContext.capabilities.drop[0] | string | `"all"` |  |
| global.image.pullPolicy | string | `"Always"` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.podAnnotations | object | `{}` |  |
| global.podLabels | object | `{}` |  |
| global.priorityClassName | string | `nil` |  |
| global.revisionHistoryLimit | int | `5` |  |
| global.serviceAnnotations | object | `{}` |  |
| global.serviceLabels | object | `{}` |  |
| global.tsdb.high_availability.enabled | bool | `false` |  |
| grafana.enabled | bool | `true` |  |
| grafana.image.pullPolicy | string | `"Always"` |  |
| grafana.ingress.enabled | bool | `false` |  |
| grafana.ingress.fqdn | string | `nil` |  |
| grafana.podPortName | string | `"http"` |  |
| grafana.priorityClassName | string | `"secure-cloud-stack-tenant-namespace-application-critical"` |  |
| grafana.resources.limits.memory | string | `"256Mi"` |  |
| grafana.resources.requests.cpu | string | `"100m"` |  |
| grafana.resources.requests.memory | string | `"256Mi"` |  |
| grafana.sidecar.dashboards.enabled | bool | `true` |  |
| grafana.sidecar.dashboards.folderAnnotation | string | `"grafana_dashboard_folder"` |  |
| grafana.sidecar.dashboards.label | string | `"aoi_dashboard"` |  |
| grafana.sidecar.dashboards.provider.disableDelete | bool | `true` |  |
| grafana.sidecar.dashboards.provider.foldersFromFilesStructure | bool | `true` |  |
| grafana.sidecar.dashboards.searchNamespace[0] | string | `"application-operations-dashboards"` |  |
| grafana.sidecar.datasources.enabled | bool | `true` |  |
| grafana.sidecar.datasources.label | string | `"aoi_grafana_datasource"` |  |
| grafana.sidecar.image.pullPolicy | string | `"Always"` |  |
| grafana.testFramework.enabled | bool | `false` |  |
| prometheus.configReloader.resources.limits.memory | string | `"25Mi"` |  |
| prometheus.configReloader.resources.requests.cpu | string | `"10m"` |  |
| prometheus.configReloader.resources.requests.memory | string | `"25Mi"` |  |
| prometheus.image.registry | string | `"docker.io"` |  |
| prometheus.image.repository | string | `"victoriametrics/vmagent"` |  |
| prometheus.image.tag | string | `"v1.91.2"` |  |
| prometheus.persistence.size | string | `"60Gi"` |  |
| prometheus.podSecurityContext.fsGroup | int | `2000` |  |
| prometheus.podSecurityContext.runAsGroup | int | `3000` |  |
| prometheus.podSecurityContext.runAsNonRoot | bool | `true` |  |
| prometheus.podSecurityContext.runAsUser | int | `1000` |  |
| prometheus.priorityClassName | string | `nil` |  |
| prometheus.relabelConfig | string | `"- source_labels: [cluster_id, namespace]\n  separator: _\n  regex: (.*)\n  target_label: namespace_id\n  replacement: $1\n  action: replace\n"` |  |
| prometheus.resources.limits.memory | string | `"768Mi"` |  |
| prometheus.resources.requests.cpu | string | `"100m"` |  |
| prometheus.resources.requests.memory | string | `"256Mi"` |  |
| promxy.affinity | list | `[]` |  |
| promxy.annotations | object | `{}` |  |
| promxy.config | string | `"##\n### Promxy configuration\n##\npromxy:\n  server_groups:\n    - static_configs:\n        - targets:\n          - victoria-metrics-single-1-server.{{ .Release.Namespace }}.svc.{{ .Values.global.clusterDomain }}:8428\n      labels:\n        replica: 1\n      http_client:\n        dial_timeout: 1s\n      ignore_error: true\n      remote_read: true\n      remote_read_path: /api/v1\n    - static_configs:\n        - targets:\n          - victoria-metrics-single-2-server.{{ .Release.Namespace }}.svc.{{ .Values.global.clusterDomain }}:8428\n      labels:\n        replica: 2\n      http_client:\n        dial_timeout: 1s\n      ignore_error: true\n      remote_read: true\n      remote_read_path: /api/v1\n"` |  |
| promxy.extraArgs | list | `[]` |  |
| promxy.extraEnv | list | `[]` |  |
| promxy.extraEnvFrom | list | `[]` |  |
| promxy.image.registry | string | `"quay.io"` |  |
| promxy.image.repository | string | `"jacksontj/promxy"` |  |
| promxy.image.tag | string | `"v0.0.84"` |  |
| promxy.nodeSelector | object | `{}` |  |
| promxy.podAnnotations | object | `{}` |  |
| promxy.podLabels | object | `{}` |  |
| promxy.podManagementPolicy | string | `"Parallel"` |  |
| promxy.podSecurityContext.fsGroup | int | `2000` |  |
| promxy.podSecurityContext.runAsGroup | int | `3000` |  |
| promxy.podSecurityContext.runAsNonRoot | bool | `true` |  |
| promxy.podSecurityContext.runAsUser | int | `1000` |  |
| promxy.priorityClassName | string | `nil` |  |
| promxy.replicas | int | `1` |  |
| promxy.resources.limits.memory | string | `"64Mi"` |  |
| promxy.resources.requests.cpu | string | `"50m"` |  |
| promxy.resources.requests.memory | string | `"64Mi"` |  |
| promxy.selectorLabels | object | `{}` |  |
| promxy.service.annotations | object | `{}` |  |
| promxy.service.labels | object | `{}` |  |
| promxy.terminationGracePeriodSeconds | int | `30` |  |
| promxy.tolerations | list | `[]` |  |
| promxy.topologySpauthProxyConstraints | list | `[]` |  |
| victoria-metrics-single-1.rbac.create | bool | `false` |  |
| victoria-metrics-single-1.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].key | string | `"app.kubernetes.io/name"` |  |
| victoria-metrics-single-1.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| victoria-metrics-single-1.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[0] | string | `"victoria-metrics-single-2"` |  |
| victoria-metrics-single-1.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| victoria-metrics-single-1.server.image.pullPolicy | string | `"Always"` |  |
| victoria-metrics-single-1.server.image.retentionPeriod | string | `"90d"` |  |
| victoria-metrics-single-1.server.persistentVolume.size | string | `"100Gi"` |  |
| victoria-metrics-single-1.server.podSecurityContext.fsGroup | int | `2000` |  |
| victoria-metrics-single-1.server.podSecurityContext.runAsGroup | int | `3000` |  |
| victoria-metrics-single-1.server.podSecurityContext.runAsUser | int | `1000` |  |
| victoria-metrics-single-1.server.resources.limits.memory | string | `"1024Mi"` |  |
| victoria-metrics-single-1.server.resources.requests.cpu | string | `"200m"` |  |
| victoria-metrics-single-1.server.resources.requests.memory | string | `"1024Mi"` |  |
| victoria-metrics-single-1.server.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| victoria-metrics-single-1.server.securityContext.capabilities.drop[0] | string | `"all"` |  |
| victoria-metrics-single-1.server.serviceMonitor.enabled | bool | `true` |  |
| victoria-metrics-single-1.server.serviceMonitor.extraLabels."netic.dk/monitoring" | string | `"true"` |  |
| victoria-metrics-single-2.rbac.create | bool | `false` |  |
| victoria-metrics-single-2.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].key | string | `"app.kubernetes.io/name"` |  |
| victoria-metrics-single-2.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| victoria-metrics-single-2.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[0] | string | `"victoria-metrics-single-1"` |  |
| victoria-metrics-single-2.server.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| victoria-metrics-single-2.server.image.pullPolicy | string | `"Always"` |  |
| victoria-metrics-single-2.server.image.retentionPeriod | string | `"90d"` |  |
| victoria-metrics-single-2.server.persistentVolume.size | string | `"100Gi"` |  |
| victoria-metrics-single-2.server.podSecurityContext.fsGroup | int | `2000` |  |
| victoria-metrics-single-2.server.podSecurityContext.runAsGroup | int | `3000` |  |
| victoria-metrics-single-2.server.podSecurityContext.runAsUser | int | `1000` |  |
| victoria-metrics-single-2.server.resources.limits.memory | string | `"1024Mi"` |  |
| victoria-metrics-single-2.server.resources.requests.cpu | string | `"200m"` |  |
| victoria-metrics-single-2.server.resources.requests.memory | string | `"1024Mi"` |  |
| victoria-metrics-single-2.server.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| victoria-metrics-single-2.server.securityContext.capabilities.drop[0] | string | `"all"` |  |
| victoria-metrics-single-2.server.serviceMonitor.enabled | bool | `true` |  |
| victoria-metrics-single-2.server.serviceMonitor.extraLabels."netic.dk/monitoring" | string | `"true"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
