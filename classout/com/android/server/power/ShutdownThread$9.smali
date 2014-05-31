.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .registers 6

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 938
    const-string v16, "ShutdownThread"

    const-string v17, "!@Start shutdown radios"

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string/jumbo v16, "sys.deviceOffReq"

    const-string v17, "1"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string/jumbo v16, "sys.radio.shutdown"

    const-string/jumbo v17, "true"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v16, "nfc"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v9

    .line 955
    .local v9, "nfc":Landroid/nfc/INfcAdapter;
    const-string v16, "phone"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 957
    .local v11, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v16, "bluetooth_manager"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 960
    .local v2, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v16, "connectivity"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    .line 963
    .local v4, "connectivity":Landroid/net/IConnectivityManager;
    const/4 v12, 0x0

    .line 986
    .local v12, "phone2":Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x1

    .line 989
    .local v3, "bluetoothOff":Z
    const/4 v13, 0x1

    .line 990
    .local v13, "radioOff":Z
    :try_start_43
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_9b

    .line 991
    const-string v16, "phone_msim"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v8

    .line 993
    .local v8, "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v8, :cond_c9

    .line 996
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5a
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_c9

    .line 998
    if-eqz v13, :cond_99

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v16

    if-nez v16, :cond_99

    const/4 v13, 0x1

    .line 999
    :goto_6f
    invoke-interface {v8, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v16

    if-eqz v16, :cond_96

    .line 1000
    const-string v16, "ShutdownThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Turning off radio on Subscription :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v0, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    .line 997
    :cond_96
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 998
    :cond_99
    const/4 v13, 0x0

    goto :goto_6f

    .line 1006
    .end local v7    # "i":I
    .end local v8    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_9b
    if-eqz v11, :cond_a3

    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v16

    if-nez v16, :cond_15b

    :cond_a3
    const/4 v13, 0x1

    .line 1007
    :goto_a4
    if-eqz v4, :cond_b0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v16

    if-eqz v16, :cond_b8

    :cond_b0
    if-eqz v11, :cond_b8

    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v16

    if-nez v16, :cond_b9

    .line 1010
    :cond_b8
    const/4 v13, 0x1

    .line 1012
    :cond_b9
    if-nez v13, :cond_15e

    .line 1013
    const-string v16, "ShutdownThread"

    const-string v17, "Turning off radio..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_c9} :catch_167

    .line 1028
    :cond_c9
    :goto_c9
    if-eqz v12, :cond_d1

    :try_start_cb
    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v16

    if-nez v16, :cond_176

    :cond_d1
    const/4 v14, 0x1

    .line 1030
    .local v14, "radioOff2":Z
    :goto_d2
    if-nez v14, :cond_e2

    .line 1031
    const-string v16, "ShutdownThread"

    const-string v17, "Turning off radio2..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_e2} :catch_179

    .line 1049
    :cond_e2
    :goto_e2
    const-string v16, "ShutdownThread"

    const-string v17, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    if-eqz v9, :cond_f7

    :try_start_eb
    invoke-interface {v9}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_188

    :cond_f7
    const/4 v10, 0x1

    .line 1055
    .local v10, "nfcOff":Z
    :goto_f8
    if-nez v10, :cond_108

    .line 1056
    const-string v16, "ShutdownThread"

    const-string v17, "Turning off NFC..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_108} :catch_18b

    .line 1065
    :cond_108
    :goto_108
    :try_start_108
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_108 .. :try_end_10b} :catch_19a

    .line 1070
    :goto_10b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_20b

    .line 1071
    if-nez v3, :cond_12b

    .line 1073
    :try_start_11b
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_11e} :catch_1ab

    move-result v16

    if-nez v16, :cond_1a8

    const/4 v3, 0x1

    .line 1078
    :goto_122
    if-eqz v3, :cond_12b

    .line 1079
    const-string v16, "ShutdownThread"

    const-string v17, "Bluetooth turned off."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_12b
    if-nez v13, :cond_1c6

    .line 1084
    const/4 v15, 0x1

    .line 1085
    .local v15, "subRadioOff":Z
    :try_start_12e
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_20c

    .line 1086
    const-string v16, "phone_msim"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v8

    .line 1088
    .restart local v8    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_143
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_1bc

    .line 1090
    if-eqz v15, :cond_1ba

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_154} :catch_216

    move-result v16

    if-nez v16, :cond_1ba

    const/4 v15, 0x1

    .line 1089
    :goto_158
    add-int/lit8 v7, v7, 0x1

    goto :goto_143

    .line 1006
    .end local v7    # "i":I
    .end local v8    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v10    # "nfcOff":Z
    .end local v14    # "radioOff2":Z
    .end local v15    # "subRadioOff":Z
    :cond_15b
    const/4 v13, 0x0

    goto/16 :goto_a4

    .line 1016
    :cond_15e
    :try_start_15e
    const-string v16, "ShutdownThread"

    const-string v17, "radio already turned off"

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_165} :catch_167

    goto/16 :goto_c9

    .line 1019
    :catch_167
    move-exception v6

    .line 1020
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during radio shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1021
    const/4 v13, 0x1

    goto/16 :goto_c9

    .line 1028
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_176
    const/4 v14, 0x0

    goto/16 :goto_d2

    .line 1034
    :catch_179
    move-exception v6

    .line 1035
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1036
    const/4 v14, 0x1

    .restart local v14    # "radioOff2":Z
    goto/16 :goto_e2

    .line 1053
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_188
    const/4 v10, 0x0

    goto/16 :goto_f8

    .line 1059
    :catch_18b
    move-exception v6

    .line 1060
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during NFC shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1061
    const/4 v10, 0x1

    .restart local v10    # "nfcOff":Z
    goto/16 :goto_108

    .line 1066
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_19a
    move-exception v6

    .line 1067
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_10b

    .line 1073
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_1a8
    const/4 v3, 0x0

    goto/16 :goto_122

    .line 1074
    :catch_1ab
    move-exception v6

    .line 1075
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1076
    const/4 v3, 0x1

    goto/16 :goto_122

    .line 1090
    .end local v6    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "i":I
    .restart local v8    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v15    # "subRadioOff":Z
    :cond_1ba
    const/4 v15, 0x0

    goto :goto_158

    .line 1092
    :cond_1bc
    move v13, v15

    .line 1100
    .end local v7    # "i":I
    .end local v8    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_1bd
    if-eqz v13, :cond_1c6

    .line 1101
    const-string v16, "ShutdownThread"

    const-string v17, "Radio turned off."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v15    # "subRadioOff":Z
    :cond_1c6
    if-nez v14, :cond_1d8

    .line 1115
    :try_start_1c8
    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1cb
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1cb} :catch_226

    move-result v16

    if-nez v16, :cond_224

    const/4 v14, 0x1

    .line 1120
    :goto_1cf
    if-eqz v14, :cond_1d8

    .line 1121
    const-string v16, "ShutdownThread"

    const-string v17, "Radio2 turned off."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_1d8
    if-nez v10, :cond_1f0

    .line 1143
    :try_start_1da
    invoke-interface {v9}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_1dd
    .catch Landroid/os/RemoteException; {:try_start_1da .. :try_end_1dd} :catch_236

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_234

    const/4 v10, 0x1

    .line 1148
    :goto_1e7
    if-eqz v10, :cond_1f0

    .line 1149
    const-string v16, "ShutdownThread"

    const-string v17, "NFC turned off."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_1f0
    if-eqz v13, :cond_244

    if-eqz v14, :cond_244

    if-eqz v3, :cond_244

    if-eqz v10, :cond_244

    .line 1167
    const-string v16, "ShutdownThread"

    const-string v17, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 1183
    :cond_20b
    return-void

    .line 1094
    .restart local v15    # "subRadioOff":Z
    :cond_20c
    :try_start_20c
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_20f
    .catch Landroid/os/RemoteException; {:try_start_20c .. :try_end_20f} :catch_216

    move-result v16

    if-nez v16, :cond_214

    const/4 v13, 0x1

    :goto_213
    goto :goto_1bd

    :cond_214
    const/4 v13, 0x0

    goto :goto_213

    .line 1096
    :catch_216
    move-exception v6

    .line 1097
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during radio shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1098
    const/4 v13, 0x1

    goto :goto_1bd

    .line 1115
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v15    # "subRadioOff":Z
    :cond_224
    const/4 v14, 0x0

    goto :goto_1cf

    .line 1116
    :catch_226
    move-exception v6

    .line 1117
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1118
    const/4 v14, 0x1

    goto :goto_1cf

    .line 1143
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_234
    const/4 v10, 0x0

    goto :goto_1e7

    .line 1144
    :catch_236
    move-exception v6

    .line 1145
    .restart local v6    # "ex":Landroid/os/RemoteException;
    const-string v16, "ShutdownThread"

    const-string v17, "RemoteException during NFC shutdown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1146
    const/4 v10, 0x1

    goto :goto_1e7

    .line 1172
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_244
    const-string v16, "ShutdownThread"

    const-string v17, "!@before sleep"

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-wide/16 v16, 0x1f4

    :try_start_24d
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_250
    .catch Ljava/lang/InterruptedException; {:try_start_24d .. :try_end_250} :catch_2b5

    .line 1178
    :goto_250
    const-string v16, "ShutdownThread"

    const-string v17, "!@after sleep"

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v16, "ShutdownThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "!@[Phone off retry:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " radio="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " radio2="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bluetooth="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " nfc="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10b

    .line 1175
    :catch_2b5
    move-exception v5

    .line 1176
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v16, "ShutdownThread"

    const-string v17, "InterruptedException"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_250
.end method
