.class Lcom/android/server/power/ShutdownThread$7;
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
    .line 906
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 908
    const-string v11, "ShutdownThread"

    const-string v12, "!@Start shutdown radios"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v11, "sys.deviceOffReq"

    const-string v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v11, "sys.radio.shutdown"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v11, "nfc"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 925
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 927
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v11, "bluetooth_manager"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 930
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v11, "connectivity"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 933
    .local v2, "connectivity":Landroid/net/IConnectivityManager;
    const/4 v8, 0x0

    .line 956
    .local v8, "phone2":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    .line 959
    .local v1, "bluetoothOff":Z
    if-eqz v7, :cond_47

    :try_start_41
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_104

    :cond_47
    const/4 v9, 0x1

    .line 960
    .local v9, "radioOff":Z
    :goto_48
    if-eqz v2, :cond_51

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v11

    if-eqz v11, :cond_59

    :cond_51
    if-eqz v7, :cond_59

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_5a

    .line 963
    :cond_59
    const/4 v9, 0x1

    .line 965
    :cond_5a
    if-nez v9, :cond_107

    .line 966
    const-string v11, "ShutdownThread"

    const-string v12, "Turning off radio..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_67} :catch_110

    .line 980
    :goto_67
    if-eqz v8, :cond_6f

    :try_start_69
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_11b

    :cond_6f
    const/4 v10, 0x1

    .line 982
    .local v10, "radioOff2":Z
    :goto_70
    if-nez v10, :cond_7d

    .line 983
    const-string v11, "ShutdownThread"

    const-string v12, "Turning off radio2..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v11, 0x0

    invoke-interface {v8, v11}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7d} :catch_11e

    .line 1001
    :cond_7d
    :goto_7d
    const-string v11, "ShutdownThread"

    const-string v12, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    if-eqz v5, :cond_8d

    :try_start_86
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_129

    :cond_8d
    const/4 v6, 0x1

    .line 1007
    .local v6, "nfcOff":Z
    :goto_8e
    if-nez v6, :cond_9b

    .line 1008
    const-string v11, "ShutdownThread"

    const-string v12, "Turning off NFC..."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_9b} :catch_12c

    .line 1016
    :cond_9b
    :goto_9b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_103

    .line 1017
    if-nez v1, :cond_b7

    .line 1019
    :try_start_a7
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_aa} :catch_13a

    move-result v11

    if-nez v11, :cond_137

    const/4 v1, 0x1

    .line 1024
    :goto_ae
    if-eqz v1, :cond_b7

    .line 1025
    const-string v11, "ShutdownThread"

    const-string v12, "Bluetooth turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_b7
    if-nez v9, :cond_c9

    .line 1030
    :try_start_b9
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_148

    move-result v11

    if-nez v11, :cond_145

    const/4 v9, 0x1

    .line 1035
    :goto_c0
    if-eqz v9, :cond_c9

    .line 1036
    const-string v11, "ShutdownThread"

    const-string v12, "Radio turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_c9
    if-nez v10, :cond_db

    .line 1050
    :try_start_cb
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ce} :catch_156

    move-result v11

    if-nez v11, :cond_153

    const/4 v10, 0x1

    .line 1055
    :goto_d2
    if-eqz v10, :cond_db

    .line 1056
    const-string v11, "ShutdownThread"

    const-string v12, "Radio2 turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_db
    if-nez v6, :cond_ee

    .line 1078
    :try_start_dd
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e0} :catch_163

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_161

    const/4 v6, 0x1

    .line 1083
    :goto_e5
    if-eqz v6, :cond_ee

    .line 1084
    const-string v11, "ShutdownThread"

    const-string v12, "NFC turned off."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_ee
    if-eqz v9, :cond_16e

    if-eqz v10, :cond_16e

    if-eqz v1, :cond_16e

    if-eqz v6, :cond_16e

    .line 1102
    const-string v11, "ShutdownThread"

    const-string v12, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v11, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput-boolean v13, v11, v12

    .line 1118
    :cond_103
    return-void

    .line 959
    .end local v6    # "nfcOff":Z
    .end local v9    # "radioOff":Z
    .end local v10    # "radioOff2":Z
    :cond_104
    const/4 v9, 0x0

    goto/16 :goto_48

    .line 969
    .restart local v9    # "radioOff":Z
    :cond_107
    :try_start_107
    const-string v11, "ShutdownThread"

    const-string v12, "radio already turned off"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_10e} :catch_110

    goto/16 :goto_67

    .line 971
    .end local v9    # "radioOff":Z
    :catch_110
    move-exception v4

    .line 972
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 973
    const/4 v9, 0x1

    .restart local v9    # "radioOff":Z
    goto/16 :goto_67

    .line 980
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_11b
    const/4 v10, 0x0

    goto/16 :goto_70

    .line 986
    :catch_11e
    move-exception v4

    .line 987
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio2 shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 988
    const/4 v10, 0x1

    .restart local v10    # "radioOff2":Z
    goto/16 :goto_7d

    .line 1005
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_129
    const/4 v6, 0x0

    goto/16 :goto_8e

    .line 1011
    :catch_12c
    move-exception v4

    .line 1012
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1013
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto/16 :goto_9b

    .line 1019
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_137
    const/4 v1, 0x0

    goto/16 :goto_ae

    .line 1020
    :catch_13a
    move-exception v4

    .line 1021
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during bluetooth shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1022
    const/4 v1, 0x1

    goto/16 :goto_ae

    .line 1030
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_145
    const/4 v9, 0x0

    goto/16 :goto_c0

    .line 1031
    :catch_148
    move-exception v4

    .line 1032
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1033
    const/4 v9, 0x1

    goto/16 :goto_c0

    .line 1050
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_153
    const/4 v10, 0x0

    goto/16 :goto_d2

    .line 1051
    :catch_156
    move-exception v4

    .line 1052
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio2 shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1053
    const/4 v10, 0x1

    goto/16 :goto_d2

    .line 1078
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_161
    const/4 v6, 0x0

    goto :goto_e5

    .line 1079
    :catch_163
    move-exception v4

    .line 1080
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1081
    const/4 v6, 0x1

    goto/16 :goto_e5

    .line 1107
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_16e
    const-string v11, "ShutdownThread"

    const-string v12, "!@before sleep"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-wide/16 v11, 0x1f4

    :try_start_177
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17a
    .catch Ljava/lang/InterruptedException; {:try_start_177 .. :try_end_17a} :catch_1d3

    .line 1113
    :goto_17a
    const-string v11, "ShutdownThread"

    const-string v12, "!@after sleep"

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!@[Phone off retry:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " radio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " radio2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bluetooth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " nfc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 1110
    :catch_1d3
    move-exception v3

    .line 1111
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v11, "ShutdownThread"

    const-string v12, "InterruptedException"

    invoke-static {v11, v12, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_17a
.end method
