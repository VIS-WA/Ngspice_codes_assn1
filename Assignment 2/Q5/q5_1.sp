Q5 Viswanadh 2019112011
.include TSMC_180nm.txt
.param SUPPLY=1.8
.option scale=0.09u
.global gnd vdd

Vdd vdd gnd 'SUPPLY'
.option scale=0.09u


M1000 orio orin vdd inverter_1[0]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1001 orio orin gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1002 inverter_0[2]in orio vdd inverter_1[1]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1003 inverter_0[2]in orio gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1004 inverter_0[3]in inverter_0[2]in vdd inverter_1[2]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1005 inverter_0[3]in inverter_0[2]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1006 inverter_0[4]in inverter_0[3]in vdd inverter_1[3]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1007 inverter_0[4]in inverter_0[3]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1008 inverter_0[5]in inverter_0[4]in vdd inverter_1[4]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1009 inverter_0[5]in inverter_0[4]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1010 inverter_0[6]in inverter_0[5]in vdd inverter_1[5]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1011 inverter_0[6]in inverter_0[5]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1012 inverter_0[7]in inverter_0[6]in vdd inverter_1[6]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1013 inverter_0[7]in inverter_0[6]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1014 inverter_0[8]in inverter_0[7]in vdd inverter_1[7]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1015 inverter_0[8]in inverter_0[7]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1016 inverter_0[9]in inverter_0[8]in vdd inverter_1[8]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1017 inverter_0[9]in inverter_0[8]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1018 inverter_0[9]out inverter_0[9]in vdd inverter_1[9]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1019 inverter_0[9]out inverter_0[9]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1020 inverter_0[11]in inverter_0[9]out vdd inverter_1[10]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1021 inverter_0[11]in inverter_0[9]out gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1022 inverter_0[12]in inverter_0[11]in vdd inverter_1[11]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1023 inverter_0[12]in inverter_0[11]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1024 inverter_0[13]in inverter_0[12]in vdd inverter_1[12]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1025 inverter_0[13]in inverter_0[12]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1026 inverter_0[14]in inverter_0[13]in vdd inverter_1[13]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1027 inverter_0[14]in inverter_0[13]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1028 inverter_1[15]in inverter_0[14]in vdd inverter_1[14]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=250 ps=120
M1029 inverter_1[15]in inverter_0[14]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1030 orin inverter_1[0]in vdd inverter_1[0]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1031 orin inverter_1[0]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1032 inverter_1[0]in inverter_1[1]in vdd inverter_1[1]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1033 inverter_1[0]in inverter_1[1]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1034 inverter_1[1]in inverter_1[2]in vdd inverter_1[2]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1035 inverter_1[1]in inverter_1[2]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1036 inverter_1[2]in inverter_1[3]in vdd inverter_1[3]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1037 inverter_1[2]in inverter_1[3]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1038 inverter_1[3]in inverter_1[4]in vdd inverter_1[4]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1039 inverter_1[3]in inverter_1[4]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1040 inverter_1[4]in inverter_1[5]in vdd inverter_1[5]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1041 inverter_1[4]in inverter_1[5]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1042 inverter_1[5]in inverter_1[6]in vdd inverter_1[6]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1043 inverter_1[5]in inverter_1[6]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1044 inverter_1[6]in inverter_1[7]in vdd inverter_1[7]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1045 inverter_1[6]in inverter_1[7]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1046 inverter_1[7]in inverter_1[8]in vdd inverter_1[8]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1047 inverter_1[7]in inverter_1[8]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1048 inverter_1[8]in inverter_1[9]in vdd inverter_1[9]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1049 inverter_1[8]in inverter_1[9]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1050 inverter_1[9]in inverter_1[10]in vdd inverter_1[10]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1051 inverter_1[9]in inverter_1[10]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1052 inverter_1[10]in inverter_1[11]in vdd inverter_1[11]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1053 inverter_1[10]in inverter_1[11]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1054 inverter_1[11]in inverter_1[12]in vdd inverter_1[12]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1055 inverter_1[11]in inverter_1[12]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1056 inverter_1[12]in inverter_1[13]in vdd inverter_1[13]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1057 inverter_1[12]in inverter_1[13]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1058 inverter_1[13]in inverter_1[14]in vdd inverter_1[14]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1059 inverter_1[13]in inverter_1[14]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1060 inverter_1[14]in inverter_1[15]in vdd inverter_1[15]w_n8_n5# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1061 inverter_1[14]in inverter_1[15]in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
C0 vdd inverter_1[10]in 0.02fF
C1 inverter_1[11]w_n8_n5# inverter_1[10]in 0.05fF
C2 inverter_1[6]in inverter_1[6]w_n8_n5# 0.06fF
C3 inverter_1[3]in inverter_1[3]w_n8_n5# 0.06fF
C4 inverter_0[4]in inverter_0[5]in 0.05fF
C5 inverter_1[2]w_n8_n5# inverter_1[2]in 0.06fF
C6 gnd inverter_1[4]in 0.05fF
C7 inverter_1[7]in vdd 0.26fF
C8 vdd inverter_1[10]w_n8_n5# 0.23fF
C9 inverter_1[2]in vdd 0.26fF
C10 inverter_1[13]w_n8_n5# inverter_1[12]in 0.05fF
C11 inverter_1[5]in inverter_1[4]in 0.05fF
C12 inverter_1[4]w_n8_n5# inverter_1[3]in 0.05fF
C13 vdd inverter_1[5]in 0.02fF
C14 gnd gnd 0.03fF
C15 vdd inverter_1[13]in 0.26fF
C16 gnd gnd 0.03fF
C17 vdd vdd 0.05fF
C18 gnd inverter_1[5]in 0.05fF
C19 inverter_1[1]in gnd 0.10fF
C20 inverter_1[1]in inverter_1[1]w_n8_n5# 0.06fF
C21 inverter_0[2]in gnd 0.10fF
C22 gnd inverter_1[14]in 0.10fF
C23 vdd vdd 0.05fF
C24 inverter_0[9]out inverter_0[9]in 0.05fF
C25 inverter_1[8]w_n8_n5# inverter_1[8]in 0.06fF
C26 inverter_0[3]in inverter_0[2]in 0.05fF
C27 inverter_0[5]in inverter_1[5]w_n8_n5# 0.06fF
C28 inverter_1[5]in vdd 0.26fF
C29 gnd gnd 0.03fF
C30 inverter_0[9]out inverter_0[11]in 0.05fF
C31 inverter_0[4]in vdd 0.26fF
C32 orin orio 0.05fF
C33 inverter_1[1]in vdd 0.26fF
C34 orio vdd 0.26fF
C35 inverter_0[6]in gnd 0.10fF
C36 inverter_1[14]in inverter_1[14]w_n8_n5# 0.06fF
C37 inverter_0[7]in vdd 0.26fF
C38 inverter_0[8]in inverter_1[8]w_n8_n5# 0.06fF
C39 vdd inverter_1[9]w_n8_n5# 0.24fF
C40 gnd gnd 0.03fF
C41 gnd gnd 0.03fF
C42 inverter_0[8]in vdd 0.26fF
C43 inverter_1[13]w_n8_n5# inverter_1[13]in 0.06fF
C44 inverter_1[12]in gnd 0.10fF
C45 inverter_0[13]in vdd 0.26fF
C46 orio gnd 0.05fF
C47 orin gnd 0.05fF
C48 gnd gnd 0.03fF
C49 inverter_0[5]in gnd 0.10fF
C50 inverter_1[12]w_n8_n5# inverter_1[11]in 0.05fF
C51 inverter_0[9]out vdd 0.02fF
C52 gnd inverter_1[10]in 0.10fF
C53 vdd inverter_0[11]in 0.26fF
C54 vdd inverter_0[3]in 0.26fF
C55 inverter_1[6]in vdd 0.26fF
C56 inverter_0[11]in inverter_1[11]w_n8_n5# 0.06fF
C57 inverter_1[8]w_n8_n5# inverter_1[7]in 0.05fF
C58 inverter_1[0]in inverter_1[0]w_n8_n5# 0.06fF
C59 inverter_1[1]in vdd 0.02fF
C60 vdd inverter_0[5]in 0.02fF
C61 inverter_1[9]in inverter_1[10]in 0.05fF
C62 inverter_1[7]in vdd 0.02fF
C63 gnd inverter_0[11]in 0.05fF
C64 gnd gnd 0.03fF
C65 vdd vdd 0.05fF
C66 inverter_1[3]in gnd 0.10fF
C67 inverter_1[8]in gnd 0.10fF
C68 vdd inverter_0[14]in 0.02fF
C69 gnd gnd 0.03fF
C70 vdd vdd 0.05fF
C71 inverter_1[8]w_n8_n5# vdd 0.23fF
C72 gnd gnd 0.03fF
C73 gnd inverter_1[9]in 0.05fF
C74 gnd inverter_1[6]in 0.05fF
C75 inverter_0[7]in inverter_0[6]in 0.05fF
C76 vdd vdd 0.05fF
C77 inverter_1[9]in inverter_1[10]w_n8_n5# 0.05fF
C78 gnd gnd 0.03fF
C79 inverter_1[9]in gnd 0.10fF
C80 inverter_1[6]in inverter_1[5]in 0.05fF
C81 vdd inverter_0[12]in 0.02fF
C82 inverter_0[9]in inverter_1[9]w_n8_n5# 0.06fF
C83 inverter_0[14]in inverter_0[13]in 0.05fF
C84 gnd gnd 0.03fF
C85 inverter_1[0]in gnd 0.05fF
C86 inverter_0[8]in inverter_0[7]in 0.05fF
C87 inverter_0[13]in inverter_0[12]in 0.05fF
C88 gnd gnd 0.03fF
C89 gnd inverter_1[15]in 0.05fF
C90 inverter_1[14]in vdd 0.26fF
C91 inverter_0[9]out inverter_1[9]w_n8_n5# 0.05fF
C92 inverter_1[11]w_n8_n5# inverter_1[11]in 0.06fF
C93 inverter_0[13]in inverter_1[13]w_n8_n5# 0.06fF
C94 inverter_0[3]in inverter_1[3]w_n8_n5# 0.06fF
C95 gnd inverter_0[8]in 0.10fF
C96 inverter_1[5]in inverter_1[6]w_n8_n5# 0.05fF
C97 inverter_0[4]in gnd 0.05fF
C98 inverter_1[8]in vdd 0.26fF
C99 inverter_0[5]in vdd 0.26fF
C100 gnd inverter_1[13]in 0.05fF
C101 gnd gnd 0.03fF
C102 inverter_1[9]in vdd 0.02fF
C103 inverter_0[14]in gnd 0.05fF
C104 gnd inverter_0[2]in 0.05fF
C105 inverter_0[12]in vdd 0.26fF
C106 inverter_1[15]in inverter_1[14]w_n8_n5# 0.05fF
C107 inverter_1[3]in gnd 0.05fF
C108 inverter_1[2]in gnd 0.05fF
C109 inverter_0[7]in inverter_1[6]w_n8_n5# 0.05fF
C110 inverter_0[9]in gnd 0.10fF
C111 inverter_1[8]in gnd 0.05fF
C112 inverter_0[14]in inverter_1[13]w_n8_n5# 0.05fF
C113 inverter_0[8]in inverter_1[7]w_n8_n5# 0.05fF
C114 inverter_1[0]in inverter_1[1]w_n8_n5# 0.05fF
C115 inverter_1[14]in inverter_1[15]in 0.05fF
C116 inverter_0[5]in inverter_0[6]in 0.05fF
C117 orin vdd 0.39fF
C118 inverter_1[2]w_n8_n5# inverter_0[2]in 0.06fF
C119 inverter_1[4]in inverter_1[5]w_n8_n5# 0.05fF
C120 vdd inverter_1[5]w_n8_n5# 0.23fF
C121 inverter_0[4]in vdd 0.02fF
C122 inverter_1[12]w_n8_n5# inverter_1[12]in 0.06fF
C123 inverter_1[6]in inverter_1[7]w_n8_n5# 0.05fF
C124 vdd inverter_1[2]in 0.02fF
C125 vdd vdd 0.05fF
C126 inverter_1[7]in inverter_1[7]w_n8_n5# 0.06fF
C127 inverter_1[3]in inverter_1[2]in 0.05fF
C128 gnd inverter_0[6]in 0.05fF
C129 gnd gnd 0.03fF
C130 inverter_1[6]in gnd 0.10fF
C131 vdd vdd 0.05fF
C132 inverter_1[12]in inverter_1[11]in 0.05fF
C133 inverter_0[8]in inverter_0[9]in 0.05fF
C134 inverter_1[7]in gnd 0.05fF
C135 gnd gnd 0.03fF
C136 vdd inverter_1[15]in 0.10fF
C137 inverter_1[14]in inverter_1[15]w_n8_n5# 0.05fF
C138 inverter_1[7]in gnd 0.10fF
C139 gnd inverter_1[11]in 0.05fF
C140 inverter_1[2]in inverter_1[3]w_n8_n5# 0.05fF
C141 inverter_1[2]w_n8_n5# vdd 0.23fF
C142 vdd inverter_1[10]in 0.26fF
C143 inverter_1[0]in vdd 0.26fF
C144 vdd inverter_1[4]in 0.26fF
C145 vdd vdd 0.05fF
C146 inverter_1[4]w_n8_n5# inverter_0[5]in 0.05fF
C147 vdd inverter_1[9]in 0.26fF
C148 inverter_1[3]in vdd 0.02fF
C149 vdd inverter_1[12]in 0.26fF
C150 gnd inverter_1[4]in 0.10fF
C151 inverter_1[14]w_n8_n5# inverter_1[13]in 0.05fF
C152 gnd inverter_1[5]in 0.10fF
C153 inverter_1[1]in gnd 0.05fF
C154 inverter_0[9]in vdd 0.26fF
C155 vdd inverter_0[7]in 0.02fF
C156 inverter_1[14]in inverter_1[13]in 0.05fF
C157 inverter_0[6]in inverter_1[5]w_n8_n5# 0.05fF
C158 vdd inverter_1[15]w_n8_n5# 0.11fF
C159 inverter_1[14]in gnd 0.05fF
C160 vdd vdd 0.05fF
C161 gnd inverter_0[9]in 0.05fF
C162 inverter_0[4]in inverter_1[3]w_n8_n5# 0.05fF
C163 inverter_1[8]in inverter_1[9]w_n8_n5# 0.05fF
C164 inverter_0[9]out gnd 0.05fF
C165 vdd inverter_1[3]w_n8_n5# 0.23fF
C166 inverter_1[4]in vdd 0.02fF
C167 inverter_0[11]in gnd 0.10fF
C168 inverter_1[9]in inverter_1[9]w_n8_n5# 0.06fF
C169 gnd inverter_0[9]out 0.10fF
C170 vdd vdd 0.05fF
C171 inverter_1[4]w_n8_n5# inverter_0[4]in 0.06fF
C172 vdd inverter_1[14]w_n8_n5# 0.23fF
C173 inverter_1[1]in inverter_1[2]in 0.05fF
C174 gnd gnd 0.03fF
C175 vdd inverter_1[12]w_n8_n5# 0.24fF
C176 inverter_1[1]in inverter_1[0]in 0.05fF
C177 inverter_1[14]in vdd 0.02fF
C178 inverter_1[0]in orin 0.05fF
C179 vdd inverter_1[7]w_n8_n5# 0.23fF
C180 inverter_1[0]in vdd 0.02fF
C181 inverter_0[13]in inverter_1[12]w_n8_n5# 0.05fF
C182 inverter_1[15]in inverter_1[15]w_n8_n5# 0.06fF
C183 inverter_0[5]in gnd 0.05fF
C184 vdd inverter_1[13]in 0.02fF
C185 inverter_1[0]w_n8_n5# orio 0.05fF
C186 inverter_0[13]in gnd 0.10fF
C187 gnd inverter_0[3]in 0.05fF
C188 vdd inverter_0[6]in 0.26fF
C189 gnd inverter_0[7]in 0.05fF
C190 vdd inverter_1[11]in 0.26fF
C191 inverter_1[10]in inverter_1[10]w_n8_n5# 0.06fF
C192 gnd gnd 0.03fF
C193 gnd inverter_1[10]in 0.05fF
C194 vdd inverter_0[11]in 0.02fF
C195 inverter_1[3]in inverter_1[4]in 0.05fF
C196 inverter_0[14]in inverter_1[14]w_n8_n5# 0.06fF
C197 inverter_1[2]w_n8_n5# inverter_1[1]in 0.05fF
C198 inverter_0[2]in inverter_1[1]w_n8_n5# 0.05fF
C199 gnd gnd 0.03fF
C200 inverter_0[12]in inverter_0[11]in 0.05fF
C201 gnd gnd 0.03fF
C202 gnd gnd 0.03fF
C203 gnd gnd 0.03fF
C204 inverter_1[11]in gnd 0.10fF
C205 vdd inverter_0[6]in 0.02fF
C206 inverter_1[8]w_n8_n5# inverter_0[9]in 0.05fF
C207 inverter_0[12]in inverter_1[12]w_n8_n5# 0.06fF
C208 inverter_1[8]in inverter_1[9]in 0.05fF
C209 gnd inverter_0[13]in 0.05fF
C210 vdd vdd 0.03fF
C211 gnd inverter_0[3]in 0.10fF
C212 inverter_0[7]in inverter_1[7]w_n8_n5# 0.06fF
C213 inverter_0[8]in gnd 0.05fF
C214 gnd inverter_0[12]in 0.05fF
C215 vdd vdd 0.05fF
C216 inverter_0[2]in orio 0.05fF
C217 vdd vdd 0.05fF
C218 vdd inverter_1[11]in 0.02fF
C219 vdd inverter_0[2]in 0.02fF
C220 vdd inverter_0[13]in 0.02fF
C221 inverter_1[6]in vdd 0.02fF
C222 inverter_1[2]w_n8_n5# inverter_0[3]in 0.05fF
C223 vdd vdd 0.05fF
C224 inverter_0[4]in inverter_0[3]in 0.05fF
C225 inverter_1[12]in inverter_1[13]in 0.05fF
C226 inverter_1[4]w_n8_n5# inverter_1[4]in 0.06fF
C227 vdd inverter_1[11]w_n8_n5# 0.23fF
C228 inverter_1[3]in vdd 0.26fF
C229 inverter_0[14]in gnd 0.10fF
C230 vdd inverter_0[3]in 0.02fF
C231 gnd gnd 0.03fF
C232 inverter_0[12]in inverter_1[11]w_n8_n5# 0.05fF
C233 orio inverter_1[1]w_n8_n5# 0.06fF
C234 inverter_1[2]in gnd 0.10fF
C235 vdd inverter_1[6]w_n8_n5# 0.24fF
C236 inverter_0[12]in gnd 0.10fF
C237 gnd inverter_1[0]in 0.10fF
C238 gnd gnd 0.03fF
C239 inverter_1[15]in vdd 0.26fF
C240 inverter_0[7]in gnd 0.10fF
C241 inverter_1[8]in inverter_1[7]in 0.05fF
C242 inverter_0[14]in vdd 0.26fF
C243 inverter_0[2]in vdd 0.26fF
C244 gnd gnd 0.03fF
C245 gnd gnd 0.03fF
C246 vdd inverter_1[13]w_n8_n5# 0.23fF
C247 inverter_1[8]in vdd 0.02fF
C248 inverter_1[4]w_n8_n5# vdd 0.23fF
C249 vdd inverter_1[12]in 0.02fF
C250 inverter_1[5]in inverter_1[5]w_n8_n5# 0.06fF
C251 gnd gnd 0.03fF
C252 inverter_0[9]out inverter_1[10]w_n8_n5# 0.06fF
C253 orin inverter_1[0]w_n8_n5# 0.11fF
C254 inverter_0[11]in inverter_1[10]w_n8_n5# 0.05fF
C255 inverter_1[0]w_n8_n5# vdd 0.23fF
C256 vdd inverter_1[1]w_n8_n5# 0.23fF
C257 orio gnd 0.10fF
C258 inverter_0[6]in inverter_1[6]w_n8_n5# 0.06fF
C259 inverter_1[15]in inverter_0[14]in 0.05fF
C260 inverter_1[15]in gnd 0.10fF
C261 inverter_1[12]in gnd 0.05fF
C262 gnd gnd 0.03fF
C263 gnd inverter_1[13]in 0.10fF
C264 inverter_0[8]in vdd 0.02fF
C265 gnd gnd 0.03fF
C266 vdd inverter_0[9]in 0.02fF
C267 inverter_1[10]in inverter_1[11]in 0.05fF
C268 inverter_1[7]in inverter_1[6]in 0.05fF
C269 gnd orin 0.10fF
C270 orio vdd 0.02fF
C271 gnd gnd 0.03fF
C272 gnd inverter_0[4]in 0.10fF
C273 inverter_0[9]out vdd 0.26fF
C274 vdd vdd 0.05fF
C275 gnd Gnd 0.11fF
C276 inverter_1[14]in Gnd 0.21fF
C277 vdd Gnd 0.03fF
C278 inverter_1[15]in Gnd 0.47fF
C279 inverter_1[15]w_n8_n5# Gnd 1.10fF
C280 gnd Gnd 0.11fF
C281 inverter_1[13]in Gnd 0.21fF
C282 gnd Gnd 0.11fF
C283 inverter_1[12]in Gnd 0.21fF
C284 gnd Gnd 0.11fF
C285 inverter_1[11]in Gnd 0.21fF
C286 gnd Gnd 0.11fF
C287 inverter_1[10]in Gnd 0.21fF
C288 gnd Gnd 0.11fF
C289 inverter_1[9]in Gnd 0.21fF
C290 gnd Gnd 0.11fF
C291 inverter_1[8]in Gnd 0.21fF
C292 gnd Gnd 0.11fF
C293 inverter_1[7]in Gnd 0.21fF
C294 gnd Gnd 0.11fF
C295 inverter_1[6]in Gnd 0.21fF
C296 gnd Gnd 0.11fF
C297 inverter_1[5]in Gnd 0.21fF
C298 gnd Gnd 0.11fF
C299 inverter_1[4]in Gnd 0.21fF
C300 gnd Gnd 0.11fF
C301 inverter_1[3]in Gnd 0.21fF
C302 gnd Gnd 0.11fF
C303 inverter_1[2]in Gnd 0.21fF
C304 gnd Gnd 0.11fF
C305 inverter_1[1]in Gnd 0.21fF
C306 gnd Gnd 0.11fF
C307 inverter_1[0]in Gnd 0.21fF
C308 gnd Gnd 0.11fF
C309 orin Gnd 0.51fF
C310 gnd Gnd 0.11fF
C311 vdd Gnd 0.06fF
C312 inverter_0[14]in Gnd 0.21fF
C313 inverter_1[14]w_n8_n5# Gnd 2.21fF
C314 gnd Gnd 0.11fF
C315 vdd Gnd 0.06fF
C316 inverter_0[13]in Gnd 0.21fF
C317 inverter_1[13]w_n8_n5# Gnd 2.21fF
C318 gnd Gnd 0.11fF
C319 vdd Gnd 0.06fF
C320 inverter_0[12]in Gnd 0.21fF
C321 inverter_1[12]w_n8_n5# Gnd 2.21fF
C322 gnd Gnd 0.11fF
C323 vdd Gnd 0.06fF
C324 inverter_0[11]in Gnd 0.21fF
C325 inverter_1[11]w_n8_n5# Gnd 2.21fF
C326 gnd Gnd 0.11fF
C327 vdd Gnd 0.06fF
C328 inverter_0[9]out Gnd 0.21fF
C329 inverter_1[10]w_n8_n5# Gnd 2.21fF
C330 gnd Gnd 0.11fF
C331 vdd Gnd 0.06fF
C332 inverter_0[9]in Gnd 0.21fF
C333 inverter_1[9]w_n8_n5# Gnd 2.21fF
C334 gnd Gnd 0.11fF
C335 vdd Gnd 0.06fF
C336 inverter_0[8]in Gnd 0.21fF
C337 inverter_1[8]w_n8_n5# Gnd 2.21fF
C338 gnd Gnd 0.11fF
C339 vdd Gnd 0.06fF
C340 inverter_0[7]in Gnd 0.21fF
C341 inverter_1[7]w_n8_n5# Gnd 2.21fF
C342 gnd Gnd 0.11fF
C343 vdd Gnd 0.06fF
C344 inverter_0[6]in Gnd 0.21fF
C345 inverter_1[6]w_n8_n5# Gnd 2.21fF
C346 gnd Gnd 0.11fF
C347 vdd Gnd 0.06fF
C348 inverter_0[5]in Gnd 0.21fF
C349 inverter_1[5]w_n8_n5# Gnd 2.21fF
C350 gnd Gnd 0.11fF
C351 vdd Gnd 0.06fF
C352 inverter_0[4]in Gnd 0.21fF
C353 inverter_1[4]w_n8_n5# Gnd 2.21fF
C354 gnd Gnd 0.11fF
C355 vdd Gnd 0.06fF
C356 inverter_0[3]in Gnd 0.21fF
C357 inverter_1[3]w_n8_n5# Gnd 2.21fF
C358 gnd Gnd 0.11fF
C359 vdd Gnd 0.06fF
C360 inverter_0[2]in Gnd 0.21fF
C361 inverter_1[2]w_n8_n5# Gnd 2.21fF
C362 gnd Gnd 0.11fF
C363 vdd Gnd 0.06fF
C364 orio Gnd 0.21fF
C365 inverter_1[1]w_n8_n5# Gnd 2.21fF
C366 gnd Gnd 0.11fF
C367 vdd Gnd 0.06fF
C368 inverter_1[0]w_n8_n5# Gnd 2.21fF

.tran 0.1ns 20n
.ic v(orin) = 1.8V

.measure tran tperiod
+ TRIG v(orin) VAL='SUPPLY/2' RISE=1
+ TARG v(orin) VAL='SUPPLY/2' RISE=2

.measure tran tpdr
+ TRIG v(orin) VAL='SUPPLY/2' FALL=1
+ TARG v(orio) VAL='SUPPLY/2' RISE=1

.measure tran tpdf
+ TRIG v(orin) VAL='SUPPLY/2' RISE=1
+ TARG v(orio) VAL='SUPPLY/2' FALL=1

.measure tran tpd param='(tpdr+tpdf)/2' goal=0

.control
run
plot orin orio
.endc
