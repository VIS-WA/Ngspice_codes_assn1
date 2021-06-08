hello
.include TSMC_180nm.txt
.param SUPPLY=1.8
.option scale=0.09u
.global gnd vdd

*vin a 0 pulse 0 1.8 0ns 1ns 1ns 10ns 20ns
Vdd vdd gnd 'SUPPLY'
*vin a gnd 1.8
.ic v(inv[1]/in) = 1.8V

M1000 inv[1]/in inv[0]/in vdd inv[0]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1001 inv[1]/in inv[0]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1002 inv[2]/in inv[1]/in vdd inv[1]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1003 inv[2]/in inv[1]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1004 inv[3]/in inv[2]/in vdd inv[2]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1005 inv[3]/in inv[2]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1006 inv[4]/in inv[3]/in vdd inv[3]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1007 inv[4]/in inv[3]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1008 inv[5]/in inv[4]/in vdd inv[4]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1009 inv[5]/in inv[4]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1010 inv[6]/in inv[5]/in vdd inv[5]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1011 inv[6]/in inv[5]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1012 inv[7]/in inv[6]/in vdd inv[6]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1013 inv[7]/in inv[6]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1014 inv[8]/in inv[7]/in vdd inv[7]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1015 inv[8]/in inv[7]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1016 inv[9]/in inv[8]/in vdd inv[8]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1017 inv[9]/in inv[8]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1018 inv[9]/out inv[9]/in vdd inv[9]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1019 inv[9]/out inv[9]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1020 inv[11]/in inv[9]/out vdd inv[10]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1021 inv[11]/in inv[9]/out gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1022 inv[12]/in inv[11]/in vdd inv[11]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1023 inv[12]/in inv[11]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1024 inv[13]/in inv[12]/in vdd inv[12]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1025 inv[13]/in inv[12]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1026 inv[14]/in inv[13]/in vdd inv[13]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1027 inv[14]/in inv[13]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1028 inv[15]/in inv[14]/in vdd inv[14]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1029 inv[15]/in inv[14]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1030 inv[16]/in inv[15]/in vdd inv[15]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1031 inv[16]/in inv[15]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1032 inv[17]/in inv[16]/in vdd inv[16]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1033 inv[17]/in inv[16]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1034 inv[18]/in inv[17]/in vdd inv[17]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1035 inv[18]/in inv[17]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1036 inv[19]/in inv[18]/in vdd inv[18]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1037 inv[19]/in inv[18]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1038 inv[20]/in inv[19]/in vdd inv[19]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1039 inv[20]/in inv[19]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1040 inv[21]/in inv[20]/in vdd inv[20]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1041 inv[21]/in inv[20]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1042 inv[22]/in inv[21]/in vdd inv[21]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1043 inv[22]/in inv[21]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1044 inv[23]/in inv[22]/in vdd inv[22]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1045 inv[23]/in inv[22]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1046 inv[24]/in inv[23]/in vdd inv[23]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1047 inv[24]/in inv[23]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1048 inv[25]/in inv[24]/in vdd inv[24]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1049 inv[25]/in inv[24]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1050 inv[26]/in inv[25]/in vdd inv[25]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1051 inv[26]/in inv[25]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1052 inv[27]/in inv[26]/in vdd inv[26]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1053 inv[27]/in inv[26]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1054 inv[28]/in inv[27]/in vdd inv[27]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1055 inv[28]/in inv[27]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1056 inv[29]/in inv[28]/in vdd inv[28]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1057 inv[29]/in inv[28]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1058 inv[30]/in inv[29]/in vdd inv[29]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1059 inv[30]/in inv[29]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
M1060 inv[0]/in inv[30]/in vdd inv[30]/w_0_0# CMOSP w=25 l=2
+  ad=125 pd=60 as=125 ps=60
M1061 inv[0]/in inv[30]/in gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=50 ps=30
C0 inv[30]/in inv[0]/in 0.07fF
C1 inv[27]/in inv[28]/in 0.07fF
C2 gnd inv[9]/out 0.05fF
C3 inv[27]/in gnd 0.05fF
C4 vdd inv[21]/w_0_0# 0.10fF
C5 inv[3]/w_0_0# inv[4]/in 0.05fF
C6 gnd inv[16]/in 0.05fF
C7 inv[22]/in gnd 0.14fF
C8 inv[12]/in inv[12]/w_0_0# 0.06fF
C9 inv[0]/in inv[1]/in 0.07fF
C10 gnd inv[26]/in 0.14fF
C11 inv[27]/w_0_0# inv[27]/in 0.06fF
C12 inv[23]/in vdd 0.28fF
C13 vdd inv[3]/in 0.28fF
C14 inv[8]/in gnd 0.14fF
C15 inv[18]/in inv[18]/w_0_0# 0.06fF
C16 inv[14]/in inv[13]/in 0.07fF
C17 inv[29]/in inv[28]/in 0.07fF
C18 gnd inv[3]/in 0.05fF
C19 inv[4]/in inv[5]/in 0.07fF
C20 inv[19]/in vdd 0.28fF
C21 gnd inv[14]/in 0.05fF
C22 inv[9]/out inv[9]/w_0_0# 0.05fF
C23 inv[24]/in inv[23]/w_0_0# 0.05fF
C24 gnd inv[19]/in 0.05fF
C25 inv[6]/w_0_0# inv[6]/in 0.06fF
C26 vdd inv[29]/w_0_0# 0.10fF
C27 inv[1]/w_0_0# inv[1]/in 0.06fF
C28 vdd inv[11]/w_0_0# 0.10fF
C29 inv[12]/in gnd 0.14fF
C30 inv[0]/in inv[30]/w_0_0# 0.05fF
C31 inv[7]/in inv[7]/w_0_0# 0.06fF
C32 vdd inv[7]/w_0_0# 0.10fF
C33 vdd inv[17]/w_0_0# 0.10fF
C34 inv[23]/in inv[22]/in 0.07fF
C35 inv[2]/in inv[3]/in 0.07fF
C36 inv[18]/in gnd 0.14fF
C37 inv[14]/in inv[13]/w_0_0# 0.05fF
C38 inv[9]/in vdd 0.28fF
C39 inv[19]/in inv[18]/in 0.07fF
C40 inv[5]/in inv[5]/w_0_0# 0.06fF
C41 vdd inv[15]/w_0_0# 0.10fF
C42 gnd inv[6]/in 0.14fF
C43 gnd inv[0]/in 0.11fF
C44 inv[16]/in vdd 0.28fF
C45 gnd inv[1]/in 0.05fF
C46 inv[11]/in inv[11]/w_0_0# 0.06fF
C47 inv[21]/in inv[21]/w_0_0# 0.06fF
C48 inv[22]/in vdd 0.28fF
C49 gnd inv[2]/in 0.05fF
C50 inv[13]/in vdd 0.28fF
C51 vdd inv[4]/w_0_0# 0.10fF
C52 gnd inv[23]/in 0.05fF
C53 inv[30]/in gnd 0.14fF
C54 inv[4]/in gnd 0.05fF
C55 inv[9]/in inv[8]/in 0.07fF
C56 gnd inv[0]/in 0.14fF
C57 inv[1]/in inv[0]/w_0_0# 0.05fF
C58 inv[5]/in gnd 0.14fF
C59 gnd inv[9]/in 0.05fF
C60 inv[15]/in inv[15]/w_0_0# 0.06fF
C61 inv[29]/in gnd 0.05fF
C62 inv[26]/w_0_0# inv[27]/in 0.05fF
C63 vdd inv[20]/w_0_0# 0.10fF
C64 inv[6]/w_0_0# vdd 0.10fF
C65 inv[16]/in inv[15]/in 0.07fF
C66 inv[1]/w_0_0# vdd 0.10fF
C67 inv[21]/in gnd 0.14fF
C68 inv[26]/w_0_0# vdd 0.10fF
C69 inv[7]/in gnd 0.14fF
C70 inv[17]/in inv[17]/w_0_0# 0.06fF
C71 inv[13]/in inv[12]/in 0.07fF
C72 inv[23]/in inv[22]/w_0_0# 0.05fF
C73 inv[4]/in inv[4]/w_0_0# 0.06fF
C74 inv[7]/in inv[8]/in 0.07fF
C75 gnd inv[3]/in 0.14fF
C76 inv[8]/in vdd 0.28fF
C77 inv[18]/in vdd 0.28fF
C78 gnd inv[13]/in 0.05fF
C79 vdd inv[30]/w_0_0# 0.10fF
C80 inv[5]/in inv[4]/w_0_0# 0.05fF
C81 inv[2]/in inv[1]/in 0.07fF
C82 inv[9]/in inv[8]/w_0_0# 0.05fF
C83 inv[19]/in inv[18]/w_0_0# 0.05fF
C84 vdd inv[6]/in 0.28fF
C85 vdd inv[10]/w_0_0# 0.10fF
C86 inv[20]/in inv[20]/w_0_0# 0.06fF
C87 inv[16]/in inv[15]/w_0_0# 0.05fF
C88 inv[11]/in gnd 0.14fF
C89 inv[25]/w_0_0# inv[25]/in 0.06fF
C90 vdd inv[16]/w_0_0# 0.10fF
C91 inv[12]/in vdd 0.28fF
C92 inv[22]/in inv[21]/in 0.07fF
C93 inv[17]/in gnd 0.14fF
C94 inv[13]/in inv[12]/w_0_0# 0.05fF
C95 gnd inv[22]/in 0.05fF
C96 inv[6]/in inv[7]/in 0.07fF
C97 inv[4]/in gnd 0.14fF
C98 inv[28]/w_0_0# vdd 0.10fF
C99 gnd inv[8]/in 0.05fF
C100 inv[25]/in inv[26]/in 0.07fF
C101 vdd inv[14]/w_0_0# 0.10fF
C102 inv[6]/w_0_0# inv[7]/in 0.05fF
C103 gnd inv[28]/in 0.14fF
C104 inv[25]/in gnd 0.05fF
C105 vdd inv[19]/w_0_0# 0.10fF
C106 inv[15]/in gnd 0.14fF
C107 vdd inv[0]/w_0_0# 0.10fF
C108 vdd inv[28]/in 0.28fF
C109 inv[9]/out inv[10]/w_0_0# 0.06fF
C110 inv[20]/in gnd 0.14fF
C111 gnd inv[29]/in 0.14fF
C112 gnd inv[15]/in 0.05fF
C113 inv[27]/w_0_0# inv[28]/in 0.05fF
C114 inv[2]/w_0_0# vdd 0.10fF
C115 inv[16]/in inv[16]/w_0_0# 0.06fF
C116 inv[12]/in inv[11]/in 0.07fF
C117 inv[22]/in inv[21]/w_0_0# 0.05fF
C118 inv[3]/w_0_0# vdd 0.10fF
C119 inv[26]/w_0_0# inv[26]/in 0.06fF
C120 inv[27]/w_0_0# vdd 0.10fF
C121 gnd inv[12]/in 0.05fF
C122 inv[7]/in gnd 0.05fF
C123 inv[18]/in inv[17]/in 0.07fF
C124 gnd inv[27]/in 0.14fF
C125 vdd inv[23]/w_0_0# 0.10fF
C126 inv[29]/in vdd 0.28fF
C127 inv[2]/in vdd 0.28fF
C128 inv[4]/in vdd 0.28fF
C129 gnd inv[18]/in 0.05fF
C130 vdd inv[27]/in 0.28fF
C131 inv[14]/in inv[14]/w_0_0# 0.06fF
C132 inv[29]/in inv[28]/w_0_0# 0.05fF
C133 vdd inv[9]/w_0_0# 0.10fF
C134 inv[19]/in inv[19]/w_0_0# 0.06fF
C135 inv[5]/in inv[6]/in 0.07fF
C136 inv[9]/out gnd 0.14fF
C137 vdd inv[0]/in 0.28fF
C138 inv[24]/in inv[24]/w_0_0# 0.06fF
C139 inv[11]/in vdd 0.28fF
C140 inv[21]/in vdd 0.28fF
C141 inv[2]/w_0_0# inv[2]/in 0.06fF
C142 inv[0]/in inv[0]/w_0_0# 0.06fF
C143 inv[16]/in gnd 0.14fF
C144 inv[12]/in inv[11]/w_0_0# 0.05fF
C145 inv[3]/w_0_0# inv[3]/in 0.06fF
C146 inv[30]/in inv[29]/in 0.07fF
C147 inv[8]/in inv[7]/w_0_0# 0.05fF
C148 inv[18]/in inv[17]/w_0_0# 0.05fF
C149 vdd inv[13]/w_0_0# 0.10fF
C150 inv[23]/in inv[23]/w_0_0# 0.06fF
C151 inv[4]/in inv[3]/in 0.07fF
C152 inv[24]/in inv[25]/in 0.07fF
C153 inv[14]/in gnd 0.14fF
C154 vdd inv[24]/w_0_0# 0.10fF
C155 vdd inv[7]/in 0.28fF
C156 inv[24]/in gnd 0.05fF
C157 inv[15]/in vdd 0.28fF
C158 inv[5]/w_0_0# inv[6]/in 0.05fF
C159 gnd inv[5]/in 0.05fF
C160 inv[24]/in gnd 0.14fF
C161 inv[11]/in inv[9]/out 0.07fF
C162 inv[21]/in inv[20]/in 0.07fF
C163 gnd inv[11]/in 0.05fF
C164 gnd inv[21]/in 0.05fF
C165 inv[2]/w_0_0# inv[3]/in 0.05fF
C166 inv[17]/in vdd 0.28fF
C167 vdd inv[25]/in 0.28fF
C168 inv[30]/in inv[29]/w_0_0# 0.05fF
C169 inv[30]/in inv[30]/w_0_0# 0.06fF
C170 inv[29]/w_0_0# inv[29]/in 0.06fF
C171 inv[2]/in inv[1]/w_0_0# 0.05fF
C172 inv[9]/in inv[9]/w_0_0# 0.06fF
C173 inv[15]/in inv[14]/in 0.07fF
C174 inv[26]/in inv[27]/in 0.07fF
C175 inv[9]/out vdd 0.28fF
C176 inv[20]/in vdd 0.28fF
C177 inv[26]/in gnd 0.05fF
C178 inv[21]/in inv[20]/w_0_0# 0.05fF
C179 inv[17]/in inv[16]/in 0.07fF
C180 inv[24]/w_0_0# inv[25]/in 0.05fF
C181 vdd inv[22]/w_0_0# 0.10fF
C182 gnd inv[17]/in 0.05fF
C183 inv[13]/in inv[13]/w_0_0# 0.06fF
C184 inv[23]/in gnd 0.14fF
C185 gnd inv[1]/in 0.14fF
C186 vdd inv[8]/w_0_0# 0.10fF
C187 inv[14]/in vdd 0.28fF
C188 inv[2]/in gnd 0.14fF
C189 inv[9]/in gnd 0.14fF
C190 inv[19]/in gnd 0.14fF
C191 inv[24]/in vdd 0.28fF
C192 inv[20]/in inv[19]/in 0.07fF
C193 inv[30]/in gnd 0.05fF
C194 inv[11]/in inv[10]/w_0_0# 0.05fF
C195 gnd inv[28]/in 0.05fF
C196 inv[25]/w_0_0# vdd 0.10fF
C197 gnd inv[20]/in 0.05fF
C198 vdd inv[1]/in 0.28fF
C199 gnd inv[25]/in 0.14fF
C200 inv[17]/in inv[16]/w_0_0# 0.05fF
C201 vdd inv[12]/w_0_0# 0.10fF
C202 inv[22]/in inv[22]/w_0_0# 0.06fF
C203 inv[13]/in gnd 0.14fF
C204 inv[6]/in gnd 0.05fF
C205 inv[8]/in inv[8]/w_0_0# 0.06fF
C206 vdd inv[26]/in 0.28fF
C207 vdd inv[18]/w_0_0# 0.10fF
C208 vdd inv[30]/in 0.28fF
C209 vdd inv[5]/in 0.28fF
C210 inv[28]/w_0_0# inv[28]/in 0.06fF
C211 inv[25]/w_0_0# inv[26]/in 0.05fF
C212 inv[15]/in inv[14]/w_0_0# 0.05fF
C213 vdd inv[5]/w_0_0# 0.10fF
C214 inv[24]/in inv[23]/in 0.07fF
C215 inv[9]/out inv[9]/in 0.07fF
C216 inv[20]/in inv[19]/w_0_0# 0.05fF
C217 gnd Gnd 0.09fF
C218 inv[0]/in Gnd 4.67fF
C219 vdd Gnd 0.03fF
C220 inv[30]/in Gnd 0.23fF
C221 inv[30]/w_0_0# Gnd 1.03fF
C222 gnd Gnd 0.09fF
C223 vdd Gnd 0.03fF
C224 inv[29]/in Gnd 0.23fF
C225 inv[29]/w_0_0# Gnd 1.03fF
C226 gnd Gnd 0.09fF
C227 vdd Gnd 0.03fF
C228 inv[28]/in Gnd 0.23fF
C229 inv[28]/w_0_0# Gnd 1.03fF
C230 gnd Gnd 0.09fF
C231 vdd Gnd 0.03fF
C232 inv[27]/in Gnd 0.23fF
C233 inv[27]/w_0_0# Gnd 1.03fF
C234 gnd Gnd 0.09fF
C235 vdd Gnd 0.03fF
C236 inv[26]/in Gnd 0.23fF
C237 inv[26]/w_0_0# Gnd 1.03fF
C238 gnd Gnd 0.09fF
C239 vdd Gnd 0.03fF
C240 inv[25]/in Gnd 0.23fF
C241 inv[25]/w_0_0# Gnd 1.03fF
C242 gnd Gnd 0.09fF
C243 vdd Gnd 0.03fF
C244 inv[24]/in Gnd 0.23fF
C245 inv[24]/w_0_0# Gnd 1.03fF
C246 gnd Gnd 0.09fF
C247 vdd Gnd 0.03fF
C248 inv[23]/in Gnd 0.23fF
C249 inv[23]/w_0_0# Gnd 1.03fF
C250 gnd Gnd 0.09fF
C251 vdd Gnd 0.03fF
C252 inv[22]/in Gnd 0.23fF
C253 inv[22]/w_0_0# Gnd 1.03fF
C254 gnd Gnd 0.09fF
C255 vdd Gnd 0.03fF
C256 inv[21]/in Gnd 0.23fF
C257 inv[21]/w_0_0# Gnd 1.03fF
C258 gnd Gnd 0.09fF
C259 vdd Gnd 0.03fF
C260 inv[20]/in Gnd 0.23fF
C261 inv[20]/w_0_0# Gnd 1.03fF
C262 gnd Gnd 0.09fF
C263 vdd Gnd 0.03fF
C264 inv[19]/in Gnd 0.23fF
C265 inv[19]/w_0_0# Gnd 1.03fF
C266 gnd Gnd 0.09fF
C267 vdd Gnd 0.03fF
C268 inv[18]/in Gnd 0.23fF
C269 inv[18]/w_0_0# Gnd 1.03fF
C270 gnd Gnd 0.09fF
C271 vdd Gnd 0.03fF
C272 inv[17]/in Gnd 0.23fF
C273 inv[17]/w_0_0# Gnd 1.03fF
C274 gnd Gnd 0.09fF
C275 vdd Gnd 0.03fF
C276 inv[16]/in Gnd 0.23fF
C277 inv[16]/w_0_0# Gnd 1.03fF
C278 gnd Gnd 0.09fF
C279 vdd Gnd 0.03fF
C280 inv[15]/in Gnd 0.23fF
C281 inv[15]/w_0_0# Gnd 1.03fF
C282 gnd Gnd 0.09fF
C283 vdd Gnd 0.03fF
C284 inv[14]/in Gnd 0.23fF
C285 inv[14]/w_0_0# Gnd 1.03fF
C286 gnd Gnd 0.09fF
C287 vdd Gnd 0.03fF
C288 inv[13]/in Gnd 0.23fF
C289 inv[13]/w_0_0# Gnd 1.03fF
C290 gnd Gnd 0.09fF
C291 vdd Gnd 0.03fF
C292 inv[12]/in Gnd 0.23fF
C293 inv[12]/w_0_0# Gnd 1.03fF
C294 gnd Gnd 0.09fF
C295 vdd Gnd 0.03fF
C296 inv[11]/in Gnd 0.23fF
C297 inv[11]/w_0_0# Gnd 1.03fF
C298 gnd Gnd 0.09fF
C299 vdd Gnd 0.03fF
C300 inv[9]/out Gnd 0.23fF
C301 inv[10]/w_0_0# Gnd 1.03fF
C302 gnd Gnd 0.09fF
C303 vdd Gnd 0.03fF
C304 inv[9]/in Gnd 0.23fF
C305 inv[9]/w_0_0# Gnd 1.03fF
C306 gnd Gnd 0.09fF
C307 vdd Gnd 0.03fF
C308 inv[8]/in Gnd 0.23fF
C309 inv[8]/w_0_0# Gnd 1.03fF
C310 gnd Gnd 0.09fF
C311 vdd Gnd 0.03fF
C312 inv[7]/in Gnd 0.23fF
C313 inv[7]/w_0_0# Gnd 1.03fF
C314 gnd Gnd 0.09fF
C315 vdd Gnd 0.03fF
C316 inv[6]/in Gnd 0.23fF
C317 inv[6]/w_0_0# Gnd 1.03fF
C318 gnd Gnd 0.09fF
C319 vdd Gnd 0.03fF
C320 inv[5]/in Gnd 0.23fF
C321 inv[5]/w_0_0# Gnd 1.03fF
C322 gnd Gnd 0.09fF
C323 vdd Gnd 0.03fF
C324 inv[4]/in Gnd 0.23fF
C325 inv[4]/w_0_0# Gnd 1.03fF
C326 gnd Gnd 0.09fF
C327 vdd Gnd 0.03fF
C328 inv[3]/in Gnd 0.23fF
C329 inv[3]/w_0_0# Gnd 1.03fF
C330 gnd Gnd 0.09fF
C331 vdd Gnd 0.03fF
C332 inv[2]/in Gnd 0.23fF
C333 inv[2]/w_0_0# Gnd 1.03fF
C334 gnd Gnd 0.09fF
C335 vdd Gnd 0.03fF
C336 inv[1]/in Gnd 0.23fF
C337 inv[1]/w_0_0# Gnd 1.03fF
C338 gnd Gnd 0.09fF
C339 vdd Gnd 0.03fF
C340 inv[0]/w_0_0# Gnd 1.03fF

.tran 0.1n 2n
*.dc vin 0 1.8 0.01

.control
run
plot inv[1]/in inv[0]/in
.endc
