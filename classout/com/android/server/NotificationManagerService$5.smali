.class Lcom/android/server/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "action":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1232
    .local v21, "queryRestart":Z
    const/16 v19, 0x0

    .line 1233
    .local v19, "queryRemove":Z
    const/16 v17, 0x0

    .line 1234
    .local v17, "packageChanged":Z
    const/4 v12, 0x1

    .line 1236
    .local v12, "cancelNotifications":Z
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3b

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3b

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3b

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1242
    :cond_3b
    const/16 v18, 0x0

    .line 1243
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v19, :cond_91

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_91

    const/16 v20, 0x1

    .line 1246
    .local v20, "queryReplace":Z
    :goto_4c
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1247
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1271
    :goto_5c
    const/4 v10, 0x0

    .line 1272
    .local v10, "anyListenersInvolved":Z
    if-eqz v18, :cond_cd

    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_cd

    .line 1273
    move-object/from16 v11, v18

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_6a
    move/from16 v0, v16

    if-ge v15, v0, :cond_cd

    aget-object v2, v11, v15

    .line 1274
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v12, :cond_7f

    .line 1275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v21, :cond_cb

    const/4 v5, 0x1

    :goto_7b
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 1278
    :cond_7f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1279
    const/4 v10, 0x1

    .line 1273
    :cond_8e
    add-int/lit8 v15, v15, 0x1

    goto :goto_6a

    .line 1243
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v10    # "anyListenersInvolved":Z
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "queryReplace":Z
    :cond_91
    const/16 v20, 0x0

    goto :goto_4c

    .line 1248
    .restart local v20    # "queryReplace":Z
    :cond_94
    if-eqz v21, :cond_9f

    .line 1249
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_5c

    .line 1251
    :cond_9f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 1252
    .local v22, "uri":Landroid/net/Uri;
    if-nez v22, :cond_a6

    .line 1376
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v20    # "queryReplace":Z
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_a5
    :goto_a5
    return-void

    .line 1255
    .restart local v18    # "pkgList":[Ljava/lang/String;
    .restart local v20    # "queryReplace":Z
    .restart local v22    # "uri":Landroid/net/Uri;
    :cond_a6
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1256
    .restart local v2    # "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_a5

    .line 1259
    if-eqz v17, :cond_c2

    .line 1261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v13

    .line 1263
    .local v13, "enabled":I
    const/4 v1, 0x1

    if-eq v13, v1, :cond_c1

    if-nez v13, :cond_c2

    .line 1265
    :cond_c1
    const/4 v12, 0x0

    .line 1268
    .end local v13    # "enabled":I
    :cond_c2
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v18, v1

    .restart local v18    # "pkgList":[Ljava/lang/String;
    goto :goto_5c

    .line 1275
    .end local v22    # "uri":Landroid/net/Uri;
    .restart local v10    # "anyListenersInvolved":Z
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_cb
    const/4 v5, 0x0

    goto :goto_7b

    .line 1284
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_cd
    if-eqz v10, :cond_a5

    .line 1286
    if-nez v20, :cond_d8

    .line 1287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->disableNonexistentListeners()V

    .line 1291
    :cond_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    goto :goto_a5

    .line 1293
    .end local v10    # "anyListenersInvolved":Z
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v20    # "queryReplace":Z
    :cond_e0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1299
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    if-eqz v1, :cond_14c

    .line 1301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$1900(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    .line 1308
    :goto_108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_143

    .line 1310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_143

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-nez v1, :cond_143

    .line 1311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->register()V

    .line 1318
    :cond_143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_a5

    .line 1303
    :cond_14c
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 1319
    :cond_154
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1323
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    if-eqz v1, :cond_19e

    .line 1325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/NotificationManagerService$PickupPlayer;->register()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$2200(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    .line 1332
    :goto_17c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_195

    .line 1333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 1338
    :cond_195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_a5

    .line 1327
    :cond_19e
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 1339
    :cond_1a6
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 1348
    const-string v1, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1349
    .local v14, "extraState":Ljava/lang/String;
    if-eqz v14, :cond_1c5

    .line 1350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1353
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_a5

    .line 1354
    .end local v14    # "extraState":Ljava/lang/String;
    :cond_1ce
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 1355
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1356
    .local v8, "userHandle":I
    if-ltz v8, :cond_a5

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_a5

    .line 1359
    .end local v8    # "userHandle":I
    :cond_1ee
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 1361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_a5

    .line 1362
    :cond_203
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_219

    .line 1364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    goto/16 :goto_a5

    .line 1365
    :cond_219
    const-string v1, "android.intent.action.DORMANT_MODE_ON"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_257

    .line 1366
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "received android.intent.action.DORMANT_MODE_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_disable_led_indicator"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_255

    const/4 v1, 0x1

    :goto_249
    # setter for: Lcom/android/server/NotificationManagerService;->isDormantModeLedDisabled:Z
    invoke-static {v3, v1}, Lcom/android/server/NotificationManagerService;->access$2702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_a5

    .line 1368
    :cond_255
    const/4 v1, 0x0

    goto :goto_249

    .line 1371
    :cond_257
    const-string v1, "android.intent.action.DORMANT_MODE_OFF"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1372
    const-string v1, "STATUSBAR-NotificationService"

    const-string v3, "received android.intent.action.DORMANT_MODE_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_a5
.end method
