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
BZh91AY&SY�?�  ���g�� ����������@D@  P;ڻt�]ۂ��% �mOA�m�4� ����0���4ɤ������P   �h   4 JdI�G�4��  �<��� �i�������44�2  a1��" �i�iO�MO%4~�~��Pơ�MOP6��j�FԠH�Mo�Ir��PX��u�R��C(~����~w��(J0*��f��.�ٷ`�a/-!b�,���2	S��Jf��k�b�3Z=�8E�	Hˈ�zB�'��~�@�[�iL�繖1eR�6�o�-��oK"�Q�i
HdU�&��ǅ�m0�����~����4�J�S���4�:tNkEE�=T[S@��Yyd8�`�3+����`4�0�bB9a0I�L&�q'ܒ��Bf�fÖ��^��?�,��c����ع__%�lJN����Ù��	��4�=�j)%2�� Ha�PLJ���&�u�UK�@X't��0�gi���	ϻh�#k�B:�RP�h�Y��[	Ta÷^��b)��l�7K7�p���c���h ��_��`G��� '�\�F���f�.'��9Z	���ɐ�
��A�@��-��{�@�;�W]�l�Uf��p�*�Gy��`���ȡ.��4���t�0`�W��l�.Td~̈́ͬ�c�X��q&�B����r�k7d���X%�㔅��V�U����&,�}ᒪ&
C��=�$Zǉ�]lӔzci�Ie ��HP�q��`�y�DV��`IqU�h�d���%�@�����3o%b�!K�F���Tdԗ ���9H�BK�Tc�*a"z��`��B)S�� ����>E
&0�Θ%
}��9#�ҵ9�l�B3��U9����k��%QQ����h�rc��k�V��@���vpfj���@�e)��D���$r����lq�6U��-�?p��Pq����9"�wl���{��1�=,�2n�9���9W
�Q��J�)
�^A���zB��e�MR���d���!"%`:t%jD�IV-��3C	!�Bt��*fV) �l����̔�4G*VNd�la!I��
b���W@0�@\L���3Q��)3W��;N�BH`I$0¿7i"�8� EdGp��ܑN$-A��@