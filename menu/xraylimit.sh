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
BZh91AY&SY�Q�� �_�)x�����������`���P  @ �@ $  �@D( 
 	  $  ( 	   A�M4       2 �� 4� d  4  4  � �� 4�@�  �  �    $�EL��=��6��md�4�M4   �h  � 4�@�  �  �    $Bi�2hi�@�f�&�OI�y�25FF�?Jz��ѩ��E<�����\I7��%tR����N�e���c0�5�N��Ӊ�2�5����n�甲�\�.`�hQH����cl*tȪ��w�:����B��Afn]�ȫ���N6�G�k�Mo��h���M�A�U�J5bX��_��#�]��Ymi�is�2���bj�sR��M��}�t�-iakNb�8�]�ֵ�n��nƔ���/�1��.af��v�FNZ;d,�?�W���bk������[�|�V���(�����G�;L����ȡT+Ba�Ģ������'��Z����Mm�;yI���J�fG�<�A���/�#n�F�YsR��G��j�,12�9(��~"���Pd{g�?�eJSUV����M�]y�.�����IޣׇE�B��vX��-Qs#��&��b�;Q��'��9J9��V��	SY#��&Q��}���s`�[5$�����V��y-k�e��L]�����TUʨ��W*��tUʨ��W*��� $� 1 �*?��v��kxOh�{���'���%���	��0&��t�d�ba%�G1�C��.�~�Q���MU*T���f٧����Kr���ě�h�w�������g�P��9����I�RH��?�(f�9����Uh�3?W�}�D�ӯF$���'�F��u�=}I#��b5\G7��2{�s_�r�ֆ_A�p9�Q�q#�(�$9�U\�{ZּN!擨v�|SQ�c6�z��U��|��W�4.sX��`p��\��>y�|�~"z�\��U���IR}X|N���IzN��7�9�O9B�<���G.�*�J��p����F�QZ��ӛb�����V̍�����p�Z�h`N�4��D��%*�!D{����ϼVDFe
�r���cQP�4;�������ߗ��g�AJ#�*".7Ƅ��A	�l"�=��"�"C�FbBX�����[!iq�[!paA��W)�8}������H*�(�(QG)B�H�
��Ad�wT�IE�i(7�&%Q0[%�&%Q1A����9y_�Mh?Q>Q�=�s��z�a�X�na���&C�����,X���N���w�e2*�ROOɿ��sm���q�u���!��{6у��:k0a�{�{����R��>��Z�L��u����>~C$=���?F<����=�����I?y����T���gAD�TO�KDGQ�4��U|��N%�zy�kK��tB� h����/Q�mUrz�v���ߒ�EDpB� ĜZΆ��J��W.	S-@�?�=���H���'���m:5�!������O�c���*I��Nb�JRJTD�S�M	���h�K΄��%��	��+J��g9��2�17�t�b���8�G6�*����UJ�I�m�e�p͛]�QT�^Y{Z��I3;�A��	��c�{�q1�I)=�)5u���y(��o?���dO��Y5C^�����oK��]v�O�o�o>����Ъ��x��)��b�kA�Cj��9:�2Cy�~��T|�:dl,hٛ`S۱�i9��z-,�f�e-<r����;�����O`�G��؞��~����T����϶��������Fb\��JO�U(O��%�%�E8�-#ٔW�s�}��ӡ���y��oז�A򜔾�Zֵ�V�ջ�Ye�u�{��n�����}�Z-��k|���[M�' �2=���UUrֆ�g'dȞ�Kr�0М	��7��D��A(J!A9@hӂ�,L�L��UN�ȋ*���%��'��	�BfI,O��G���<��I��y!;N��?�_�_�O}�n�{|䯈�WZ�9dOF�UfL��]�L{��NBs�ĢUk�8�Ϭ�s�&��eM!9ߜv}SO�L	'�����z&㽆����D�&���l�=~��:|��	\d���2n%u>��fI/'�KWM�|�܉�k�{TF2D�D�%FD۷y5��+�T���L$��K��a�Î��q�W"n��X�&]WȚQ42�	�W�<��&�u�y�	��:	Q9�|	\���MЛ�ImDՐ��������,��XNyb� �$�טttQU�$�������b�ȃdX$��?�(R�U
�Л�{��|ˬO�W�j?s��֣����'�J��Lt��������cC��2���5�����'?��RrI$颖%C�*dM77t�ВuM{΂�4��?"w�m��KU�l(�F��Kz�?��g�I����[�$��O��#���%T����}�ZF'\R]�㤐��o0��,?)r�C�i9N729z�8m&�[�,�6H��sP�RD�}��F&/|N,�'�q�U�����ª��'A$:c��~3���81׬��zIE�Jq�4N5D�s#�J��������Vv�	���3j)��Ha�Si1&d�x��9Hwʄx�m�ٛӳtg�\5�!��qңL�F��bNXC��Ъ�Pt��|�!��5iUU^�Uh� @�UU^�R��������H���RN��jbȔ*%	Z�r���E���R!�I��;`x��$�9$�y{�pM��)���M�̒z��i��$< �lP�n�	d�Ny$9!h"��;��_��H�V��)=�c�9��4eG�%H��;�Bʐf3 �w�Q�W�$L�j<gg8�/Z�Z���#�f9�,'G~'�ǚyc��8���9�]o�`�%���ӹ���d�@򆙹R}�	n��"<�H/�
#`��Q����bZ�턪*#��'*L�t������Xf<V����	�_	h��,�9�o,t��c����Z��%)S�0�����UU�xGyu�RțȤJu�����~�6��:!��%��]��ǁ7LY5�ӣ+�9�I��N������{��$L��m#`R���Ykn(QAE�p�%� Xa$�������P��(��D�C XM �xc�l����;jL(T`�b�B�V�%�0����tD�$�Z���G�PgQ�D�D�ry�nC�D��B��2[D��ir��k��Ao�dى��i�y�����w��~Ň(=����dbԽ��K��ʑx��'���ZW~&��p��<���c�;sr
T
+�%!*�]�KΕ�e/h�X���1X�/A�8�`cAD�Of�I0�5�j�6����c��3�x�GED���fsVI����\�fe��nB2�DPQE�EQE��䁵	C�1�	iy�j��Q�İ~ �P�U�kX7�㟴t���gF�ĝN^��g:g4�a?���Q�����\I�tJ9�'<cʏ|�Y|�Uh�I�Dj(��C��sSR�K-jT�֥L��DfN����P�!�4-���K0��d,�M]��(�\ݙ�$R�r$�j�My����k�W�Dz���2;��*CB�8tI#a�Z(��lN<d��\А��C=���D���#"yɴ��W�SxV��
&	A����'ya����kGj\�4�>��^֢��q���bR�b�vn��'N�M���v'II4�:H^	�O!�� �'�)ڑ��8�J�r'�Ncۺ%��!���I�kIο�eJE
�=X��搝�p9�I�Q�1�<v<D��W.l�cn>%�RE��1��L%�ʡdMz�"�k�Ņ�f�jH��o3����Yh��ʡdL���JԜ��6�+MzC�O+��4����$J���)T�f$E;�;�D�'(w�zL4��P#�B�E�'��u����b�|T���f�3�=�������0NrnZ�tiU��O��o�^C��ٳd� |^��kʪ��|��S�\��ˋ*���'A��j)j��pYz�7}P=��0�2�,_Q)�ky�.R�����H�	%?����$�	��?���y�����	������]JX�~������)���_�