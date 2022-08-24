Who?
	I'm setz. @splixel on twitter, joseph.stevens.pgh@gmail.com on pleasedontemailme

What?
	This is the SMB1 disassembly, from doppleganger, with a MMC1 mapper hack. I shuffled some routines around, fit in bankswapping, added a couple PRG banks, and enabled sram.

	I left doppleganger's original intro in smbdis.asm - read that for more information, I only added the mapper stuff.

Where?
	I don't know how to answer this.

When?
	Tuesday, April 4th, 2017

Why?
	I wanted more ram, I'm toying with the idea of a new hack a bit more advanced than my old Communist Mario hack.
	It occured to me that a MMC1-ready assembly file could be useful for people just getting into hacking as well, so I'm sharing the base.

How?
	new routine usage:
		lda <banknum>
		jsr SwapPRGBank
		(or)
		jsr SwapCHRBank0
		(or)
		jsr SwapCHRBank1

	Build instructions
		assembles with cc65. I've never used cc65 or anything like it, so theres probably better ways to do what I did in the cfg.

		Linux: edit build.sh, make sure it points to your cl65 executable, run it
		Other: Adapt build.sh, I've only got this OS to test on. I hear windows has "copy /b file+file2 outfile" that works the same as cat

		build.sh produces a "smb.nes" in ./romfile/

	want more banks? ines_header.asm is commented. 
	new banks in the asm file should follow the same conventions as the rest:
		.segment "BANK#"
		.org $8000

	edit smbdis.cfg, and be sure to leave the last bank where it is, the game kinda counts on it being there.