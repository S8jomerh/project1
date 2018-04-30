	.data
	buffer_IBAN: .space 22
	buffer_BLZ: .space 8
	buffer_KNR: .space 10
	.globl iban2knr
	.text
# -- iban2knr
# Argumente:  
#buffer_IBAN in $a0 laden
#buffer_BLZ in $a1 laden
#buffer_KNR in $a2 laden
# a0: IBAN Puffer (22 Bytes)
	la  $a0, buffer_IBAN($s0)
# a1: BLZ Puffer (8 Bytes)
        la  $a1, buffer_BLZ($s0)
# a2: KNR Puffer (10 Bytes)
        la  $a2, buffer_KNR($s0)

iban2knr:
	# TODO
	jr	$ra
