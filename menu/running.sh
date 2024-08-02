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
BZh91AY&SY��� 	_�w������������P�F�  `���kN�^��*��� �� =t �(`A4��D���z�dM4��h6� ��     �  �   h �    ��
j~��H  Ѡ�2   4   )�H�F��L�@h  h�Ѧ�    H�ODjbjz����44�=M�M �FLM44 OPE �  h�P�����i�jm@=@ �<��6�É��M����߿�R�����^T�'��EUU�%UUU�U\ ��\AC���at�����s0J�W9�w�Zkdh�A�[��~�O�w�T?�Dނ�����
6Y��פ�K7�«>�zh��]M۠�_1^�>MA[�zQq����i2��P1ȗ��?�R�\���:��&Yc�����#�aa �op����.Ȁ�N�T�P{���ʹ o��)�X0膵��d��B�MD�1AĴ ���0�d��=��U��$�`n���&=[��D���pI�F�;�Z��}=y����0?A�7h���x����h����^��^���(m>'�K��Ms�NY�JhL!fKi�? 5ɂ�
���F��*0 �+q��v�!� k��'y��F�H��Vg�����8��jeo}���d����=xa����� x�{�4��xV�Q���س��O��D}[q&� ��9]�cw�v�H��d���M������(6���! �e=X�g�Ֆ�EY�Z��H�<X�&�"8�-��V¨)Z��H��I!=Q,��aI��=%���Pem9���{�C͏	b� t��m��dD�b1�ā�"�AX�drB	 �"+$Q�]J��x��n�5�f&$��䈢K��,3�1D��u�m.�f��zCN�"�dD@�o��m�`�B�>`2�/��MI�`��|*��n���E)T$r���������>!I>'T���F�i!�>��R}_\�*@����χ+:�	%��+J�2�
c����N�3:B�1��Dd�@i�P',�P"���w���AU�T���Zk<t/�0Y�m���d͆a�B���ka��"���i�,�Y�V�� %v�l¿��(`�/aټ4�ǁ�_�	�(u'��h:�Řq�t���y�4��h{$ ߳��{'Jj�﯂h9��5��:"1�#���>6n���8FY�A�m%=��� u�t�y���{/�������O%��ZJ&�EZ���%�2�Y�T���͘�2�$��$fL��P-(�
�Q���*�Ւ�k�Y,���>����t9�`v#��H���M���(��؈�@��[�Sq���ɿ��@Pax��"�iq�zG�}�~��w�?!ט�JzIR�ZA������0Cu����� ,�V�m7��TN>��r�t�z�m:q��ի�b��OQ�E6�ǐ�z9�nڞR)�����Sf�d�='K��TZ���@���e����i��̔��[y���L��*��Q�`��h�;lPMz���;�E�$]T�sg:�5,�D��#T.%���!,:�������3�u���F�9����H)�n��	X�"�
	�Jk�Ӽ�)E�r���Ζ�a(����=�й��\NJ	��9�}�·�:�(k8;R�cM�hV4B�4���@�m0����!�l�e�^��9�>�b��Q� �y#�w��9��ᙩ��8ۼ��5�BU!י����pF��{'2.�/�R��ra��9�� I��?e�GTO�Q�������<�ٿ���Rz�c)S�����[s~=t	*o{���T��d�������-�s�_��ef5�=-�,��V���:?2@�:�W�	$a�y��
ŏ|��F� �9�N�ChXX�87L�W�ռ)︍k�ݱ��GG��i	F���p`_�=�+��dO~ 5�yO�B�cce���bh�f�"!������0�W�N"4����y3|XY8-���UK�qK���/L�dK�+�ȃ��`,��H�w�9I%��u��g"�쯲%�itBY!�>�E��xG�����:e!`���;�Æ�Ȟٔ΄��2�K,�><1w@R6��3"ЩQ39)�
'�~WcW�B�e+$'��o��m]X���m�	��x�xZ|��T癐`)�Gt�1!�G�M�V���7���i/br�JR���Sy�F\h��G$�bW����
i]�Zv�|Q�l9�hD�0:�&d����/)ܼ���*�8��?h���?9Y��W���zNV5���mY��2�Y��� ��@�B��x����%H ��1/Y�<�X���v�N"��t�]���ל$AD"T
*���NL��3t���JR� � �0�(&U��4��!��edY��q��@7V�3M<�RQ���ft��^VF�.]U`�����$ti�ƔE�/J"I}�Iܣpt�l�F�q���NF���
T��L�k�>V�{|� Ip�]��L�׼) H�y�{������R�"h `���\��%W�S���9<�.\����xl�,��]!��; IB����*''8��$R��i�M	my-�
�� F����KH������I�N�Ǧ�y����ȀkxA�6���ј����Ҝ@���1���������t���'�k![��u�5��X#�:'e�"��a)��
��W�#�u��ƈ�m�r�P���
���0�# �,`�#����C���z{�!�Z�S�`� �� �,�Y��O���);����ۉ)솖W�9/�
%�"�-@Ese�Ȣ��(�"� �'�)�k��5���L9P����� �$����H��X�WG-�8̜�Fk�� �B�M��.�s)ˤ ���[���Y�TZ�W]	�"�64���s�o�]N)��խ�02q��C91���-��PJ�8~N��!����xÐW�D*U��6s٪����2� � 7��y�ZO�"��[Mn(��6Ҍ����A	h( 9��'�������r prq����J���4S�)1�;J@;�=�P�^�@�l��@а?��^h�DTpBD2 ���H�
���`