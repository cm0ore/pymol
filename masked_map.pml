
#Select the electron density around waters that are close to protein residues and vice versa
#First open the model, map, and masked map from cctbx
load ~/Desktop/model.pdb, model
load ~/Desktop/map.mrc, map
load ~/Desktop/masked_map.mrc, masked_map
#color adenosine site magenta
sele adenosine, resi 22+156+157+49+23+154
color magenta, adenosine
sele protein, resi 1-169 and chain A or chain B #selects all protein residues
sele waters, resn HOH #selects all waters
sele close_protein, protein near_to 1 of waters #selects all protein residues within 1A of waters
sele close_waters, waters near_to 1 of protein #selects all water residues within 1A of protein
isosurface proteindensity, map, 1.0, close_protein, carve=1.0 
isosurface water_density, map, 1.0, close_waters, carve=1.0
isosurface waterdensity_mask, masked_map, 1.0, close_waters, carve=1.0
isosurface proteindensity_mask, masked_map, 1.0, close_protein, carve=1.0
color cyan, waterdensity_mask
color orange, proteindensity_mask

#To color the model by CA B-factor:
spectrum b, blue_white_red, minimum=1, maximum=16
as cartoon
show sticks
