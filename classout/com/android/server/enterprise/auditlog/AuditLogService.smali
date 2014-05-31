.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final mEnableLowLevelLog:Z = true


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;-><init>()V

    .line 107
    new-instance v4, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 77
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    new-instance v4, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    .line 79
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 81
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    .line 83
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v1, "IFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v5

    .line 94
    :try_start_55
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 95
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v0

    .line 97
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 98
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 103
    :cond_78
    monitor-exit v5

    .line 105
    return-void

    .line 103
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :catchall_7a
    move-exception v4

    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_7a

    throw v4
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method private createAdmins()V
    .registers 10

    .prologue
    .line 177
    const/4 v7, 0x6

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "auditCriticalSize"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "auditMaximumSize"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "auditLogIptables"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "auditLogMDM"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "auditLogEnabled"

    aput-object v8, v1, v7

    .line 181
    .local v1, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "AUDITLOG"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 183
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .line 184
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 185
    .local v3, "it":Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 187
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 188
    .local v6, "uid":I
    const-string v7, "auditLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 189
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 190
    .local v0, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string v7, "auditCriticalSize"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 191
    const-string v7, "auditMaximumSize"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 192
    const-string v7, "auditLogIptables"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 193
    const-string v7, "auditLogMDM"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    .line 194
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v5

    .line 196
    .local v5, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto :goto_2e

    .line 199
    .end local v0    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "uid":I
    :cond_ae
    return-void
.end method

.method private enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v0

    .line 151
    .local v0, "deviceInventory":Landroid/app/enterprise/DeviceInventory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, " -----------------------------------------\n"

    .line 154
    .local v1, "separator":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDeviceMaker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLATFORM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDevicePlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OS VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASEBAND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getModemFirmware()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/enterprise/DeviceInventory;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 372
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 375
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_99

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    if-ne p4, v5, :cond_95

    const-string v5, "1"

    :goto_39
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "newData":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 464
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 465
    .local v2, "c":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 467
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v6

    .line 468
    :try_start_7c
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 469
    .local v3, "it":Ljava/util/Iterator;
    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    .line 471
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V

    goto :goto_80

    .line 473
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_92
    move-exception v5

    monitor-exit v6
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_92

    throw v5

    .line 459
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "c":Ljava/util/Collection;
    .end local v4    # "newData":Ljava/lang/String;
    :cond_95
    const-string v5, "0"

    goto :goto_39

    .line 473
    .restart local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v2    # "c":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "newData":Ljava/lang/String;
    :cond_98
    :try_start_98
    monitor-exit v6
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_92

    .line 475
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "c":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "newData":Ljava/lang/String;
    :cond_99
    return-void
.end method

.method public disableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 419
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 420
    .local v2, "uid":I
    const/4 v1, 0x1

    .line 422
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 424
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_49

    .line 425
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogEnabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 428
    if-eqz v1, :cond_49

    .line 429
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 430
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 433
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 436
    :cond_3e
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v4, "AuditLogPolicy//isAuditLogEnabled"

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 442
    :cond_49
    return v1
.end method

.method public disableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 251
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 252
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 253
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v2, 0x0

    .line 255
    .local v2, "ret":Z
    if-eqz v0, :cond_1e

    .line 256
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 257
    const/4 v2, 0x1

    .line 268
    :cond_1e
    :goto_1e
    return v2

    .line 259
    :cond_1f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "auditLogIptables"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 262
    if-eqz v2, :cond_1e

    .line 263
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    .line 264
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    goto :goto_1e
.end method

.method public declared-synchronized dumpLogFile(Landroid/app/enterprise/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 593
    monitor-enter p0

    if-nez p7, :cond_6

    .line 606
    :cond_4
    :goto_4
    monitor-exit p0

    return v1

    .line 595
    :cond_6
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 596
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 597
    .local v6, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 598
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_4

    .line 599
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 600
    invoke-virtual {v0, p6}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p7

    .line 603
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2f

    move-result v1

    goto :goto_4

    .line 593
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v6    # "uid":I
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 385
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 386
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 388
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_16

    move v2, v4

    .line 409
    :cond_15
    :goto_15
    return v2

    .line 391
    :cond_16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "auditLogEnabled"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AUDITLOG"

    invoke-virtual {v5, v3, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 394
    .local v2, "ret":Z
    if-eqz v2, :cond_15

    .line 395
    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 396
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v5, v6}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 397
    .local v0, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 398
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 402
    invoke-static {v4}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 405
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    const-string v5, "AuditLogPolicy//isAuditLogEnabled"

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_15
.end method

.method public enableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 227
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 228
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 229
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v2, 0x0

    .line 230
    .local v2, "ret":Z
    if-eqz v0, :cond_3e

    .line 231
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 243
    :goto_1d
    return v4

    .line 234
    :cond_1e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "auditLogIptables"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AUDITLOG"

    invoke-virtual {v5, v3, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_3e

    .line 238
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 239
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_3e
    move v4, v2

    .line 243
    goto :goto_1d
.end method

.method public getCriticalLogSize(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 529
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 531
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 532
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    .line 534
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getCurrentLogFileSize(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 484
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 486
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 487
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    .line 490
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getMaximumLogSize(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 572
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 574
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_19

    .line 575
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    .line 577
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public isAuditLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isAuditServiceRunning()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isIPTablesLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 276
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 278
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 279
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    .line 281
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 630
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 659
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_23

    .line 660
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 662
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 665
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 668
    :cond_23
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 640
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_29

    .line 641
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 643
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 644
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v1

    if-nez v1, :cond_29

    .line 645
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 648
    :cond_29
    return-void
.end method

.method public setCriticalLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 503
    .local v1, "ret":Z
    const/4 v4, 0x1

    if-lt p2, v4, :cond_8

    const/16 v4, 0x63

    if-le p2, v4, :cond_a

    :cond_8
    move v2, v1

    .line 519
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_9
    return v2

    .line 506
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 507
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 508
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 510
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_3b

    .line 511
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const-string v6, "auditCriticalSize"

    invoke-virtual {v4, v3, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 513
    if-nez v1, :cond_38

    .line 514
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    const-string v5, "Cannot set critcal log size on Databank"

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_38
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    :cond_3b
    move v2, v1

    .line 519
    .restart local v2    # "ret":I
    goto :goto_9
.end method

.method public setMaximumLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    .line 544
    const/4 v1, 0x0

    .line 546
    .local v1, "ret":Z
    const/4 v4, 0x1

    if-lt p2, v4, :cond_8

    const/16 v4, 0x63

    if-le p2, v4, :cond_a

    :cond_8
    move v2, v1

    .line 562
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_9
    return v2

    .line 549
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceOwnerOnlyAndAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 550
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 551
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 553
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_3b

    .line 554
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const-string v6, "auditMaximumSize"

    invoke-virtual {v4, v3, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 556
    if-nez v1, :cond_38

    .line 557
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    const-string v5, "Cannot set maximum log size on databank"

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_38
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    :cond_3b
    move v2, v1

    .line 562
    .restart local v2    # "ret":I
    goto :goto_9
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 620
    return-void
.end method
