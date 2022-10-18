rule all:
	input:
		expand("results/trimmed_{name}.fq.gz", name=config["name"])
		
rule fastp:
	input:
		a = "samples/{name}.fq.gz"
	output:
		b = "results/trimmed_{name}.fq.gz"
	shell:
		"fastp -i {input.a} -o {output.b} -h report_name.html"
