# pymol

##Summary:

This script displays a pdb file, map, and masked map made using ensem_cctbx_mapmask.py
It only displays map and mask density for "clashing" protein/water residues: displays electron density at 1 sigma for protein and water residues within 1A 
of each other. 
Protein density is colored cyan, and water density is colored blue.
Density of the model itself is displayed on a red-blue color scale according to B-factor. Consider normalizing your B-factors via RMSF calculation before running this.

##Conditions to run:

Change the paths of the pdb file, map, and masked map to match your desired files. 


###Software requirements:
pymol

###Additional requirements:

A multi-MODEL PDB file, map, and mask
