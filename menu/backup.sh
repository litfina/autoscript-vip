#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYv�m�  ���=s �����������PD@  P{��7L����X4$�l���2��=M�=������dͩ4ɡ�� ?E6S@�	��
���5�i4d� 22h  � %4�$�#E�A�4�� �  8 h@M2 d hɂ E��)�DO�3�d4�2z��b#���z�OR�,�l��Fַ�<ޟ�����΀/4�K7�W;N��P�����tj|��2 �����h��ֆ�ѝ�H�u�1_@�2[k$��jv>t�ƛ;/��^2��E�L�Ezr����=�f,�f��X����V��&E�ǌn3ɋK�1N�,��{��/=����K�If��?��f��	�k��.���F1�.�Q��;���ߌ��J�s�1ֈ�!=X���}���r��8���8b�v66&�5� ;����˭�?���Wn�:	X�Q���_e��^��n/�!7k/gQ�����AȤ�8�� V�:�G�Y`�@�N�23��1�5Ԓ0t�}6!�C[�(�N[P"��0��ՌXa��2���j� �Vm�	bw�R/y)ʈ���0�@�@��fGWT8E}r�80hh@�AC�'�\7��*�گ��J�����<1��@L��rm�D)�i�q�wmz�f+k5�6S�v�-%}����U�ȑF�i��pKr�q�i'SZ�sz�B]����'E^�;���aQ�qJ��A�?�nnAA�*f233AQ|��]o�o��3��mT��Զ�L8�6:��Iy.�|pI�(Y�����o-�ہzJLhJ|Dy�] �:��֣wp�ǯ�-:4u�,>$�$)����ZiA:g����hP٧�R����@&�ET���.q0����t��)���l���!�������qr�B��!�}&�t���*�YVu������5�^�qph�J�v>k�v�<�g�>��;l'�!ح+%rCt��a#�2�q��i�I0k�$�VL������kCߝH�BI\�E���[���+#�(/��!Q�2%� ��J��gj���ײ���e�Ѝ�V�ク�'�D�J$f��PO��C^����;��	�{o�2ǿ� G�hI��K�u�$;��L�B�\��*0O�n��i�k��Cߑl��$8�8��T�#����e��b�4oj�q̏�^d��	$YRX��$�@�JʅU�-t׶��5���arPU)�V�j6`X#���L�R�(�rIR
~d1p�k\r�(Dk!RMq�D��5w(��0�\�1�C��-8M��B��� ���
���Yi$!D�uD�[����Is�B���i�t5��)� BbB�����  S�3�rE8P�v�m�