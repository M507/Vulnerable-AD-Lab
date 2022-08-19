## Vulnerable AD Lab

The main goals of this lab are for security professionals to examine their tools and skills and help system administrators better understand the processes of securing AD networks.

### Supports:
- Oracle VM VirtualBox
- VMware vSphere

# How to start

Copy `credentials.virtualbox.example.json` and edit the environment variables. Then execute the automation script:
```
./deploy_virtualbox.sh
```

Note that `deploy_virtualbox.sh` is for virtualbox and `deploy.sh` is for vSphere.


Be aware that some credentials are hard coded on different files. I have no documentation for this project, but I have published a short blog post about it:
- Vulnerable AD Lab: [https://shellcode.blog/Vulnerable-AD-Lab-IaC](https://shellcode.blog/Vulnerable-AD-Lab-IaC).

