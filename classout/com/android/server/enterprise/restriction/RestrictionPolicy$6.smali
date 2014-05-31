.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 364
    :try_start_e
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_37

    .line 370
    :goto_13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 371
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_29

    .line 372
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v1, v7, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 375
    :cond_29
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v7, v10, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    if-nez v7, :cond_36

    .line 376
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion(Z)V
    invoke-static {v7, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)V

    .line 403
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_36
    :goto_36
    return-void

    .line 365
    :catch_37
    move-exception v4

    .line 366
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "updateUsbMode failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 379
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_41
    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 382
    :try_start_49
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_36

    .line 383
    :catch_4f
    move-exception v4

    .line 384
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v6, "RestrictionPolicy"

    const-string/jumbo v7, "updateUsbMode failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 386
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_59
    const-string v7, "android.intent.action.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_78

    .line 388
    :try_start_69
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_36

    .line 389
    :catch_6f
    move-exception v4

    .line 390
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v6, "RestrictionPolicy"

    const-string v7, "Network Policy update failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 392
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_78
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 393
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 394
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 395
    .local v2, "callingUid":I
    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v3

    .line 397
    .local v3, "containerId":I
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-nez v3, :cond_36

    .line 399
    const-string v7, "screenCaptureEnabled"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v9, v5, v3, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IIZ)Z

    move-result v9

    if-eqz v9, :cond_c8

    const/4 v6, 0x1

    :cond_c8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/data/system/enterprise.conf"

    invoke-static {v7, v6, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_36
.end method
