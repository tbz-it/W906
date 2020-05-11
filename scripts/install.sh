
#!/bin/bash
# 

# K8s WebUI mit eigener README.md neu erzeugen
sudo bash -x /opt/lernmaas/services/k8swebui.sh README.md master

# DevOps Umgebung nur fuer Host W906-02 setzen
if [ $(hostname | cut -d- -f 2) -lt 3 ]
then
    kubectl apply -f .
fi
