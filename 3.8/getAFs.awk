BEGIN {
	T_column = 0;
	N_column = 0;
}
/CHROM/ {	# to make life easier, the order of TUMOR and NORMAL is random
	for(i=1;i<=NF;i++) {
		if($i~/TUMOR/)
			T_column = i;
		if($i~/NORMAL/)
			N_column = i;
	}
}
!/^#/{
	# get the INFO field, and extract SWAF
	split($8,info_field,";")
	for(i=1;i<=length(info_field);i++)
		if(info_field[i] ~ /SWAF/) {
			swaf = info_field[i];
			break;
		}
	# TUMOR AF
	split($T_column,tumor_afs,":");
	t_af = tumor_afs[3];

	# NORMAL AF
	split($N_column,normal_afs,":");
	n_af = normal_afs[3];
	
	# FILTER
	passed = $7~/PASS/ ? "PASS" : "FP";
		

	printf("%s, %s, %f, %f\n",passed,swaf,t_af,n_af);

}
