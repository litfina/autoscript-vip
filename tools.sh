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
BZh91AY&SY��<�  �߀ �}���?!�����P�һ:{2��u�/C(�L�S�SO$��#�OHz#OM3RE4��ړM�h     P"jf��OT�S)�6�hh4� 		��&��)�ѐ�  � h%S�e#��      h����ei�OAb$gK_o�6�%��v�#��#R��yr�w�LÀ����������Ϯ0j��b�pΥ*�k�l��a�����K����r/ű�O�ǟ�?�KW��y7�����.b�Vk]��Gf�씹d�'�t�oc�o�S�E��TT�[��[�;���~0�J�򌧄�k��jzq�c������܎	���zBĠ8�;��[M�a��/ \Cn�P�0<q�F�U�z�P:b��ft,i�O�VIJ�s���x9&��~r$EG���d�[�����H�'h��d�=�s��� ͈
�{}�3�uZ�!t�.x�r�,m�=��|�-i1��%�ф��n}�Md���x��=��5��Ǘ��Mˠ��`<J���_l��EU��t:a3BC@�5�<V�Ӱ�I}�T��eߝ	O)�$����᎟T����0�Q�-ש��:��U.|3�"�]���t�o�i!o)�7/Z�����2ObC��K�gf���8}tDod�+�<�B����g�"�|̈A�� ��]mJy$�B��UՑڠ���9(UFAP�͂��b$�]��p�� ���n�	1
ʷ�f�e60�L�<�u��V�x�D8)�U��7�N���������A����Ip���bd$���8ù�R�5��e�ik�0w�ZFV�)�$���cUE{�/�]��
�m�JҔygSn�hV�[��I��1��##H��A (��~n��S1��Ϝ<R�K460��҇J�aU.*���"؄}d��"-7�MT�Ԁ	� �17+"�I$0CG����9�E�V��Q�,b��p��!	��Iկ��@V ZBw��·e��@ZP�g��r)$��Y�TX��&V24����6Tw�p�:��"%kl+���8�-p&3f_��PVT�K\�P_*��sԥ�9^��nmE��a=��_<
V�iic��")����Xq�(�z�M]Q���:RtdшX��/��:�($�:SL�%�
���/��GC.{tK
&:��	����·��^�S��i+�5����h�=��B�aq;(�r�6�@��d�D��Թ��2H��r"�e�#��jܸ]m�_{�G��ܑN$%��,�