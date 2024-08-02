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
BZh91AY&SY��~_ �_�qs���?�������PD@  `>} ��P(Q@p4�M���F�d��4ѐ 	��i�������44�2  a1���M4����F@ & 48i��CCC#@2 ��h� ���)� ��1Oj�h'����e==)��SCj=1=OT�@E�eO�Q�z�����4h<�4f�   4jRyx������?��h���DI�+j{�D��?��{N���>�g�{��j5J5��7�;�o�������km|�y�~B(�J=l$3C]��?����Hfy�o&NF0Ã6@ɭ��'�I:���@�,	�N��SƔz���3}j���5��Amt�=��ַ��G*�<.ә��F�I@����f�y[�(�N�q�.wZ�����f|X�륆��Sc����ѱ��ԛ�$3:�c�n,k}�mc#x�=7:��\�M�:B�#aR�r7�!��8��{�p�\�����8=�m������m�(}�NWS�L�z�L��HP<i��J�Hv�IV�A���C��5�G�0�!a���v��ȇ��8=���nC�Õ9D��]�@h~������� �<��b���oN���gUP����x����ks!��a^fP�vC �u�2��0�`ڊ7	��.,���f�Kh�������I��xO@K�~���DK�[�;)��R��	#�r�!q��fh�	O�aq������n��!�^��!�?�I��n��fC�k?D��?������P�x_�,5�������9�4���ձ�GSY�"k�[�T>o�[��`��a������
H��7�Z���GSs��
޷]�Z=l����Y���k>79��!����a�$9���6��d4:
��y�+&@���r���'�w�����Q�&�v��Ô���[XY	;cD<�Y}�X�|��v��p9ܣ1�
Ё�	8���Bnv֡G ��[�"�F�,O31���Hh9�Xa�����jn�.w��s�K��!*]�m���Ѡj ��z�f־���] �Aȁ��lBĨhڶ	�]�N!R�	�L#k ��0�u�n'3! �yGl��Au��
g.7���N�&���zA�vYa�B�u���?s1$2h��}�c����u�ms2d�l~�}�7Y�0�Xd��w�ѩ��o3q�~��:�:[�#�:F������73����<-1&�������wű��)0�w[����^��a9/�kN��}��K���9��f�MOA��h�찄�쎱��L5�NA+�t6�[Pz�oY��dICm�D+7����hQ�Ɓ-�3��X�Hjd��������2���F��v�dFݣK��[6HI�h��B��°��ڔ��u�Z8;lo(�L"o�-cp!���5��àmF�0Y�fy���;D ldH$�Ü`��d��}"B���{���ìj[�
�F�;c'�Ҝ�áM-�����L�������72���@�jd�� ͓�U�$M�r2p^&eHV�h�Gif�l[�l�h.g�9���������5��;!���qCw���&� K��+M�]��P��u
۝@�"9��� �U�؇q���⊄ ����Ʊ� �!�rE8P���~_