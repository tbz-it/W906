
#!/bin/bash
# 

# DevOps Umgebung und Intro nur fuer Host W906-02 setzen. 
if [ $(hostname | cut -d- -f 2) -lt 3 ]
then

    # K8s WebUI mit eigener README.md neu erzeugen
    sudo bash -x /opt/lernmaas/services/k8swebui.sh README.md master

    # DevOps Umgebung 
    kubectl apply -f .
    
fi
