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
BZh91AY&SY���� J���"<����������pF@��� � @ `G���fݍ�X7MtdP�SY	*�I$&�D�4���ș��6��������b �  b� ��      ��       8      !�       �M��MSڧ�����<�=M=MP� 2z��i����P 4HAڔ���#Tz���CM4�6��OQ��� ��4CMR jb4L��S�I�M4��i��ji�����z�� zC TB�vk��w�;sn#�r�>�3��p�L]���$q��a�v1��eh'dȈ�X�@L�p&�����q��1J���H�;�Y�aJ}u��l�]��W*|"����,��o"�C۝�E=����^�ʒkK&�GC�bᓔ�y7=�TT*�� �&P���^2Q��Cc��u��M�`�L��Cc`6�Q���*лAb8��M_P���d�Yhڱ${�t�Uĕ	W�2y���7�:���*��������mJ�Ibv�ge�q3y듖��g.�R�iu�_6#��6Ÿf�p��HC�S�
�=��o��Ad'�AL�6�פ!���]���g�RQ*v��P[\�a4o
�ǘAZ�z�@XD5�_�PX�MI�H��P����v4����Y�i�Wg���Q��Er���Y�x?Z*=�pV�-��fy��s�pi�r6��wn%��*�`�J`z<���fR��R�Ʀ���������AGA=��k�@�o�wgN�7F��~xl�v}+O2�|oд;F���l�e\��;��WN�еg�Z�u��V�S创-�m0^d�Z"�F	j���b�X��-6СNu7gٟh%��YΆ��ix
�T8@�,H�׈�u��cci&�EH�m�����Έ,c�Z��#�^���ZK.hdG�!�D2����^d�o�����(�0�K��$�0s
�V�ި'��z��o`鈹y��?�'���h�!���H�����AZ�Mj��x���R[p(F&+�3XA��j``o�"m0o�)P)
����@�)VA�.QyB���L�.�TɍYx������!��sXm>CM=��Z��3�����2� � ͆@%Y�`߭
.c���cgk�h���e)]�{�Z��$x֐���5�l��s�x;�0w�>��~p�	L���L�K]��\�@X`k1�=&1���5���f02�iB�c�*��:"'N��U�6h!_ZM�7OP�	@7c�"f@�+Ru��!�T�L�e�N�Ib����GZ\�u?n>*[ZSS��\�+f���1�>u*,�O�Ɇ�63�v�Ӓ�w*�?�ᮂ]	)�e�K$�	�8o�����Z]���{��ߖ�6��$���9 r�_�Ф�΢�tn���ѝ�ɚ�gP[��'hC-�<\Y�X�5�2�L�k��da���A-�������Հ�*��W	�#"�;�^��gI��+ E撎W"Q	�m�T��
��QʈH'����f��ZvMe��Ҕ�2V]v�۳R��4[��"-����%#�N�m�m��m��_�t�_��9��.zi���w>X^^����[���ƞT ��r�PޯX@���2R�+t��{w^7??\O��}���6#�ƶ�	z�o����x�f-��4�hxt)k%�lA�r�_(��	��%_���p�{���0�k �F��s/�hy}�
�)$�,�32�a8��D���g>#��F�^p���(
����>$��B�[=�`gpy�d����2!3� ��Ȥ!��J7W�C� T���ɜ�H}ClpL�Yc���ɷNfl%&<��)`�F�%Z0~�Y�[�yvK`�0+))Ҵ">C�H�b�X�܀��&=�c@��HCu�ތ(GF�x�X� �BQ%��w,%3�����Q��� � {�����;n|� r�Y�2	�k�0�)r0X�-7�D��1$������c'q�0q΋f��fϺ�P�JPCK�8�t���a�|�6�H��cbժ�o:M�78�*3����h�� Qh�$i�a�/����UOF׿C�H�P��|��,�Ǿ�3h#�۷xv]�6B��2Â�j�+�Z&#��/8㬝��Z� o�� ����8j`��$$NF�Q�M��Mܢ}X��f��+��(�I��AW�׋ط�:���$t`��@��[��ն�kW������� O��i��C��p��Ҿts9.�8����;�G�����j��&C�ywYf{�'01�H;��H&����>v�6�'J��k`�9��dI�JI���s&�i�F�x�Y1����R�0,��hL!^$[C����`�-:��8����3�P���JM��!lxZ�dG4�GV����<��*7>���V��v˘A�	T+)8BHRz��Uʦ�S���31՛�i�ޭϫ�X:���� d]b����8Zh'Qi����tP-u4K�G�xB��At�n�
kV�)�F�H�8D��W����N�d[I���%[-3[eO�g�0��29N �*s��p;�5ک�]��AYJ�hM��+B+�XH�D�T�iи62�-d�Q��zl�%�5Rh���~5Ev𙀀m�
3;��p_Æ�n[U�}�ܬc�h���n|�z �E�0����4��rA�!y��j2�#���E���Cm�� 
p�tv�ah���QS�f�y��mN�t���a����٥gM���}HFZC��� C����(!;��P{�r����&�h@���(J�C\"lg��:�(�&`��H�
0�[ 