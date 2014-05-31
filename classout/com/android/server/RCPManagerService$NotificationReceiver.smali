.class public Lcom/android/server/RCPManagerService$NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 43
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1168
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationReceiver onReceive()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    if-nez p2, :cond_15

    .line 1170
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, " intent is null ... return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_14
    :goto_14
    return-void

    .line 1174
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    .line 1176
    .local v25, "extras":Landroid/os/Bundle;
    if-nez v25, :cond_25

    .line 1177
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO INTENT EXTRAS (looking for statusBarNotification)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1182
    :cond_25
    const-string v3, "notification"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/service/notification/StatusBarNotification;

    .line 1184
    .local v33, "sbn":Landroid/service/notification/StatusBarNotification;
    if-nez v33, :cond_3b

    .line 1185
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO StatusBarNotification EXTRA... return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1188
    :cond_3b
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " NotificationReceiver sbn.getPackageName() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sbn.getUser().getIdentifier() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v3, v3, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/PersonaManager;

    .line 1199
    .local v30, "mPersona":Landroid/os/PersonaManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const-string v5, "Notifications"

    const-string v6, "knox-sanitize-data"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/RCPManagerService;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1204
    .local v32, "sanitizePolicy":Ljava/lang/String;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "going to get the app label for pkg == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v33

    # invokes: Lcom/android/server/RCPManagerService;->getLabelForNotif(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/server/RCPManagerService;->access$1100(Lcom/android/server/RCPManagerService;Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v7

    .line 1210
    .local v7, "label":Ljava/lang/String;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app label == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v3, "com.samsung.knox.ACTION_NEW_NOTIFICATION"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const-string v5, "Notifications"

    const-string v6, "knox-export-data"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/RCPManagerService;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1225
    .local v24, "exportPolicy":Ljava/lang/String;
    if-eqz v24, :cond_fb

    const-string v3, "false"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1229
    :cond_fb
    const-string/jumbo v3, "userHandle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Landroid/os/UserHandle;

    .line 1231
    .local v34, "user":Landroid/os/UserHandle;
    const-string/jumbo v3, "userId"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 1232
    .local v37, "userIddd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    # invokes: Lcom/android/server/RCPManagerService;->getAllowedIds(I)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;I)Ljava/util/ArrayList;

    move-result-object v20

    .line 1234
    .local v20, "allowedId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v38, "usersThatWantThisNotif":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 1241
    .local v39, "usersThatWantThisNotifSanitizedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v27, 0x1

    .line 1242
    .local v27, "isKnox":Z
    const/16 v28, 0x0

    .line 1246
    .local v28, "isPasswordLockEnabled":Z
    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v36

    .line 1247
    .local v36, "userIdInt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1248
    .local v35, "userId":Ljava/lang/String;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userid of SBN =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    if-ltz v36, :cond_14

    .line 1265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1266
    .local v9, "name":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v31

    .line 1268
    .local v31, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v31, :cond_18a

    .line 1269
    move-object/from16 v0, v31

    iget-object v9, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1271
    :cond_18a
    if-eqz v32, :cond_215

    const-string/jumbo v3, "true"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 1272
    new-instance v2, Landroid/app/KnoxNotification;

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    const-string v4, ""

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/app/KnoxNotification;-><init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;)V

    .line 1282
    .local v2, "not":Landroid/app/KnoxNotification;
    :goto_1b8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 1283
    :try_start_1c1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_1d1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2ca

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1286
    .local v23, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ISyncCallBack;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1288
    .local v29, "key":Ljava/lang/Integer;
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_241

    .line 1289
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dont need to call back into userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " config because that is where the SBN initiated from"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d1

    .line 1314
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ISyncCallBack;>;"
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v29    # "key":Ljava/lang/Integer;
    :catchall_212
    move-exception v3

    monitor-exit v4
    :try_end_214
    .catchall {:try_start_1c1 .. :try_end_214} :catchall_212

    throw v3

    .line 1276
    .end local v2    # "not":Landroid/app/KnoxNotification;
    :cond_215
    new-instance v2, Landroid/app/KnoxNotification;

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v2

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v19}, Landroid/app/KnoxNotification;-><init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;)V

    .restart local v2    # "not":Landroid/app/KnoxNotification;
    goto/16 :goto_1b8

    .line 1294
    .restart local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ISyncCallBack;>;"
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v29    # "key":Ljava/lang/Integer;
    :cond_241
    :try_start_241
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_256

    .line 1295
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v5, "don\'t need to send outside persona Group"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d1

    .line 1299
    :cond_256
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ISyncCallBack;

    .line 1300
    .local v21, "callback":Landroid/content/ISyncCallBack;
    if-eqz v21, :cond_2a6

    .line 1301
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling post Notification for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " via his ISyncCallBack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_280
    .catchall {:try_start_241 .. :try_end_280} :catchall_212

    .line 1304
    :try_start_280
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/content/ISyncCallBack;->postNotification(Landroid/app/KnoxNotification;)V
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_285} :catch_287
    .catchall {:try_start_280 .. :try_end_285} :catchall_212

    goto/16 :goto_1d1

    .line 1305
    :catch_287
    move-exception v22

    .line 1306
    .local v22, "e":Ljava/lang/Exception;
    :try_start_288
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown by service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d1

    .line 1310
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_2a6
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provider ISyncCallBack for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is NULL!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d1

    .line 1314
    .end local v21    # "callback":Landroid/content/ISyncCallBack;
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ISyncCallBack;>;"
    .end local v29    # "key":Ljava/lang/Integer;
    :cond_2ca
    monitor-exit v4
    :try_end_2cb
    .catchall {:try_start_288 .. :try_end_2cb} :catchall_212

    goto/16 :goto_14

    .line 1315
    .end local v2    # "not":Landroid/app/KnoxNotification;
    .end local v9    # "name":Ljava/lang/String;
    .end local v20    # "allowedId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "exportPolicy":Ljava/lang/String;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v27    # "isKnox":Z
    .end local v28    # "isPasswordLockEnabled":Z
    .end local v31    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v34    # "user":Landroid/os/UserHandle;
    .end local v35    # "userId":Ljava/lang/String;
    .end local v36    # "userIdInt":I
    .end local v37    # "userIddd":I
    .end local v38    # "usersThatWantThisNotif":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "usersThatWantThisNotifSanitizedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2cd
    const-string v3, "com.samsung.knox.ACTION_CANCEL_NOTIFICATION"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1316
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, " NotificationReceiver ACTION_CANCEL_NOTIFICATION "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v35

    .line 1318
    .local v35, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/RCPManagerService$NotificationReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ISyncCallBack;

    .line 1319
    .restart local v21    # "callback":Landroid/content/ISyncCallBack;
    if-eqz v21, :cond_14

    .line 1320
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling doSync() for cancel notif for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " via his ISyncCallBack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    if-eqz v32, :cond_376

    const-string/jumbo v3, "true"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_376

    .line 1324
    new-instance v2, Landroid/app/KnoxNotification;

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    const-string v12, ""

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v10, v2

    move-object v15, v7

    invoke-direct/range {v10 .. v19}, Landroid/app/KnoxNotification;-><init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;)V

    .line 1335
    .restart local v2    # "not":Landroid/app/KnoxNotification;
    :goto_350
    :try_start_350
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/content/ISyncCallBack;->cancelNotification(Landroid/app/KnoxNotification;)V
    :try_end_355
    .catch Landroid/os/RemoteException; {:try_start_350 .. :try_end_355} :catch_357

    goto/16 :goto_14

    .line 1337
    :catch_357
    move-exception v22

    .line 1338
    .local v22, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception (in ACTION_CANCEL_NOTIFICATION) thrown by service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1328
    .end local v2    # "not":Landroid/app/KnoxNotification;
    .end local v22    # "e":Landroid/os/RemoteException;
    :cond_376
    new-instance v2, Landroid/app/KnoxNotification;

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v19}, Landroid/app/KnoxNotification;-><init>(ILjava/lang/String;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/util/HashMap;)V

    .restart local v2    # "not":Landroid/app/KnoxNotification;
    goto :goto_350
.end method
