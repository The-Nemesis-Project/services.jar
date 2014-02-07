.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1175
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 36
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1179
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1181
    .local v9, "cr":Landroid/content/ContentResolver;
    const-string v29, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a6

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v30

    monitor-enter v30

    .line 1183
    :try_start_27
    const-string v29, "connected"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 1184
    .local v24, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const-string v31, "rndis"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1186
    if-eqz v24, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_92

    .line 1187
    const-string v29, "enabled"

    const-string v31, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v31

    invoke-static {v9, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7b
    .catchall {:try_start_27 .. :try_end_7b} :catchall_a3

    move-result v29

    if-eqz v29, :cond_83

    .line 1189
    const-wide/16 v31, 0x3e8

    :try_start_80
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_83} :catch_578
    .catchall {:try_start_80 .. :try_end_83} :catchall_a3

    .line 1194
    :cond_83
    :goto_83
    :try_start_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1196
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1201
    monitor-exit v30

    .line 1577
    .end local v24    # "usbConnected":Z
    :cond_a2
    :goto_a2
    :pswitch_a2
    return-void

    .line 1201
    :catchall_a3
    move-exception v29

    monitor-exit v30
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_a3

    throw v29

    .line 1202
    :cond_a6
    const-string v29, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e1

    .line 1203
    const-string v29, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkInfo;

    .line 1205
    .local v18, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v18, :cond_a2

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_a2

    .line 1207
    const-string v29, "Tethering"

    const-string v30, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v29

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_a2

    .line 1215
    .end local v18    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_e1
    const-string v29, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b0

    .line 1216
    const-string v29, "Tethering"

    const-string v30, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_1a7

    .line 1220
    const-string v29, "Tethering"

    const-string v30, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v29, "network_management"

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 1223
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v21

    .line 1224
    .local v21, "service":Landroid/os/INetworkManagementService;
    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v14, v0, [Ljava/lang/String;

    .line 1227
    .local v14, "ifaces":[Ljava/lang/String;
    :try_start_115
    invoke-interface/range {v21 .. v21}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_18a

    move-result-object v14

    .line 1233
    move-object v6, v14

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_11c
    if-ge v12, v15, :cond_a2

    aget-object v13, v6, v12

    .line 1234
    .local v13, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_187

    .line 1235
    const-string v29, "Tethering"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1238
    .local v22, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v22, :cond_187

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v29

    if-eqz v29, :cond_187

    .line 1239
    const-string v29, "Tethering"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 1233
    .end local v22    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_187
    add-int/lit8 v12, v12, 0x1

    goto :goto_11c

    .line 1228
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "iface":Ljava/lang/String;
    .end local v15    # "len$":I
    :catch_18a
    move-exception v10

    .line 1229
    .local v10, "e":Ljava/lang/Exception;
    const-string v29, "Tethering"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 1245
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "ifaces":[Ljava/lang/String;
    .end local v21    # "service":Landroid/os/INetworkManagementService;
    :cond_1a7
    const-string v29, "Tethering"

    const-string v30, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 1249
    :cond_1b0
    const-string v29, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-nez v29, :cond_1d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_25b

    :cond_1d2
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1400()I

    move-result v29

    if-nez v29, :cond_25b

    .line 1251
    const-string v29, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1252
    .local v23, "type":Ljava/lang/String;
    const-string v29, "Tethering"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    if-eqz v23, :cond_a2

    .line 1254
    const-string v29, "NUM"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1255
    .local v19, "numExtra":I
    if-gez v19, :cond_212

    const/16 v19, 0x0

    .line 1256
    :cond_212
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v19

    if-eq v0, v1, :cond_a2

    .line 1258
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()I

    move-result v29

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1602(I)I

    .line 1259
    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->access$1502(I)I

    .line 1260
    const-string v29, "Tethering"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "**number of client: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$1702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const v30, 0x1080874

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_a2

    .line 1314
    .end local v19    # "numExtra":I
    .end local v23    # "type":Ljava/lang/String;
    :cond_25b
    const-string v29, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_278

    .line 1315
    const-string v29, "wifi_state"

    const/16 v30, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1316
    .local v5, "apState":I
    packed-switch v5, :pswitch_data_57c

    goto/16 :goto_a2

    .line 1332
    .end local v5    # "apState":I
    :cond_278
    const-string v29, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2f3

    .line 1333
    const-string v29, "Tethering"

    const-string v30, "SCREEN_ON is received"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()Z

    move-result v29

    if-eqz v29, :cond_a2

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2000()Z

    move-result v29

    if-nez v29, :cond_a2

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "connectivity"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 1336
    .local v16, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v29

    if-nez v29, :cond_2bd

    .line 1337
    const-string v29, "Tethering"

    const-string v30, "SCREEN_ON --> data enable"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/16 v29, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1340
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "wifi"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/WifiManager;

    .line 1341
    .local v28, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v25

    .line 1342
    .local v25, "wifiApState":I
    const/16 v29, 0xa

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_2e3

    const/16 v29, 0xb

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_a2

    .line 1344
    :cond_2e3
    const-string v29, "Tethering"

    const-string v30, "SCREEN_ON --> hotspot on"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_a2

    .line 1449
    .end local v16    # "mCm":Landroid/net/ConnectivityManager;
    .end local v25    # "wifiApState":I
    .end local v28    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2f3
    const-string v29, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_47a

    .line 1451
    const-string v29, "level"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1452
    .local v17, "mLevel":I
    const-string v29, "plugged"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1453
    .local v20, "pluggedType":I
    const-string v29, "Tethering"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "lowBatteryThreshold = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0xf

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-nez v29, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_41a

    :cond_359
    const/16 v29, 0xf

    move/from16 v0, v17

    move/from16 v1, v29

    if-gt v0, v1, :cond_41a

    if-nez v20, :cond_41a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v29

    if-nez v29, :cond_41a

    .line 1456
    const-string v29, "Tethering"

    const-string v30, "showLowBatteryNotification"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;)V

    .line 1465
    :cond_37f
    :goto_37f
    if-nez v20, :cond_387

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v29

    if-nez v29, :cond_38f

    :cond_387
    if-eqz v20, :cond_a2

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v29

    if-nez v29, :cond_a2

    .line 1466
    :cond_38f
    const-string v29, "wifi_ap_plugged_type"

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1467
    new-instance v11, Landroid/content/Intent;

    const-string v29, "com.android.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1468
    .local v11, "i":Landroid/content/Intent;
    const-string v29, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_3c5

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1472
    :cond_3c5
    if-nez v20, :cond_43b

    .line 1473
    const-string v29, "Tethering"

    const-string v30, "Unplugged"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/16 v29, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "wifi"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 1484
    .local v27, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1487
    .local v26, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :try_start_3e9
    const-string v29, "wifi_ap_tx_power_changed_by_service"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3f0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3e9 .. :try_end_3f0} :catch_438

    move-result v8

    .line 1491
    .local v8, "changedByService":I
    :goto_3f1
    if-eqz v26, :cond_a2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a2

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v8, v0, :cond_a2

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v30

    # invokes: Lcom/android/server/connectivity/Tethering;->setWifiApTxPowerMode(Landroid/net/wifi/WifiConfiguration;I)I
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiConfiguration;I)I

    goto/16 :goto_a2

    .line 1459
    .end local v8    # "changedByService":I
    .end local v11    # "i":Landroid/content/Intent;
    .end local v26    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v27    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v29

    if-eqz v29, :cond_37f

    .line 1460
    const-string v29, "Tethering"

    const-string v30, "clearLowBatteryNotification"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_37f

    .line 1488
    .restart local v11    # "i":Landroid/content/Intent;
    .restart local v26    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v27    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_438
    move-exception v10

    .line 1489
    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v8, 0x0

    .restart local v8    # "changedByService":I
    goto :goto_3f1

    .line 1496
    .end local v8    # "changedByService":I
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v26    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v27    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_43b
    const-string v29, "Tethering"

    const-string v30, "Plugged"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/16 v29, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "wifi"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiManager;

    .line 1504
    .restart local v27    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 1505
    .restart local v26    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v26, :cond_a2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    move/from16 v29, v0

    if-nez v29, :cond_a2

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move/from16 v2, v30

    # invokes: Lcom/android/server/connectivity/Tethering;->setWifiApTxPowerMode(Landroid/net/wifi/WifiConfiguration;I)I
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiConfiguration;I)I

    goto/16 :goto_a2

    .line 1535
    .end local v11    # "i":Landroid/content/Intent;
    .end local v17    # "mLevel":I
    .end local v20    # "pluggedType":I
    .end local v26    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v27    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_47a
    const-string v29, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_500

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_4c2

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v29

    if-eqz v29, :cond_a2

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$2802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v30, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_a2

    .line 1541
    :cond_4c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v29

    if-eqz v29, :cond_a2

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v29

    if-eqz v29, :cond_a2

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$2802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v30, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_a2

    .line 1549
    :cond_500
    const-string v29, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_56c

    .line 1550
    const-string v29, "Tethering"

    const-string v30, "Boot complete."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->access$2502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1553
    const-string v29, "enabled"

    const-string v30, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_545

    .line 1554
    const-string v29, "Tethering"

    const-string v30, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string v29, "net.tether.always"

    const-string v30, "1"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    .line 1560
    :cond_545
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 1561
    .local v4, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v4, :cond_a2

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v30

    const/16 v31, 0x5

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_a2

    .line 1565
    .end local v4    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_56c
    const-string v29, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a2

    goto/16 :goto_a2

    .line 1190
    .restart local v24    # "usbConnected":Z
    :catch_578
    move-exception v29

    goto/16 :goto_83

    .line 1316
    nop

    :pswitch_data_57c
    .packed-switch 0xd
        :pswitch_a2
    .end packed-switch
.end method
