echo "assembling.."
../cc65-master/bin/cl65 -C smbdis.cfg src/ines_header.asm src/smbdis.asm
echo "linking.."
cat ines_header.out smbdis.out interrupts.out src/smb_chr.chr > romfile/smb.nes
echo "cleaning up.."
rm ines_header.out smbdis.out interrupts.out
echo "done.."