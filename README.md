# PSnpBind OpenBabel Docker

![GitHub top language](https://img.shields.io/github/languages/top/ammar257ammar/psnpbind-openbabel) ![GitHub](https://img.shields.io/github/license/ammar257ammar/psnpbind-openbabel) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/ammar257ammar/psnpbind-openbabel) [![Dockerhub](https://img.shields.io/badge/Dockerhub-aammar%2Fpsnpbind--openbabel-green)](https://hub.docker.com/r/aammar/psnpbind-openbabel) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/aammar/psnpbind-openbabel)

This repository prepares OpenBabel (for ligand preparation and energy minimization) to be executed against multiple ligand structures in parallel as part of constructing the PSnpBind database.

This repository is part of the "Pocket SNPs Effect On Protein-Ligand Binding Affinity Project (PSnpBind)" project and it is a needed to reproduce the work as described in the main repository 

https://github.com/ammar257ammar/PSnpBind-Build

Please prepare and build the docker using the following instructions and refer back to the previous link for proper usage in the context of PSnpBind project.

### First, clone this repository, and "cd" into its directory.

### Second, build the Docker image

```bash
docker build -t psnpbind-openbabel .
```

#### Now you are ready! 

#### Go back to [Main Project](https://github.com/ammar257ammar/pocket-snps-effect-binding-affinity) for proper usage of the Docker image.
