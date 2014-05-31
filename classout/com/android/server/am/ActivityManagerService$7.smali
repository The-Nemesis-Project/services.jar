.class Lcom/android/server/am/ActivityManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 6188
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6191
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 6192
    .local v13, "pkgs":[Ljava/lang/String;
    if-eqz v13, :cond_29

    .line 6193
    move-object v10, v13

    .local v10, "arr$":[Ljava/lang/String;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_d
    if-ge v11, v12, :cond_29

    aget-object v2, v10, v11

    .line 6194
    .local v2, "pkg":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 6195
    :try_start_14
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "finished booting"

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZILjava/lang/String;)Z
    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 6197
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$7;->setResultCode(I)V

    .line 6198
    monitor-exit v14

    .line 6203
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_29
    return-void

    .line 6200
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_2a
    monitor-exit v14

    .line 6193
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 6200
    :catchall_2e
    move-exception v1

    monitor-exit v14
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_2e

    throw v1
.end method
