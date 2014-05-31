.class public Lcom/android/server/enterprise/utils/EDMNativeHelper;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"


# static fields
.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field public static TAG:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string v0, "EDMNativeHelper"

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initService(Landroid/content/Context;)V
    .registers 3
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 72
    sput-object p0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method public static isAVRCPProfileEnabled()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 161
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 163
    .local v0, "policy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v0, :cond_11

    .line 164
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v1

    .line 167
    :cond_11
    return v1
.end method

.method public static isAuditLogEnabled()Z
    .registers 2

    .prologue
    .line 193
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 196
    .local v0, "mAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v0, :cond_f

    .line 197
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v1

    .line 200
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static isBTOutgoingCallEnabled()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 171
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 173
    .local v0, "policy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v0, :cond_f

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v1

    .line 176
    :cond_f
    return v1
.end method

.method public static isCameraEnabled(I)Z
    .registers 7
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 128
    const-string v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 130
    .local v2, "policy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v2, :cond_15

    .line 131
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v4, p0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    .line 140
    :cond_14
    :goto_14
    return v0

    .line 134
    :cond_15
    const/4 v0, 0x1

    .line 135
    .local v0, "cameraEnabled":Z
    sget-object v4, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 136
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_14

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabledWithUID(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_2b

    move v0, v3

    :goto_2a
    goto :goto_14

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static isMicrophoneEnabled(I)Z
    .registers 5
    .param p0, "uid"    # I

    .prologue
    .line 180
    const/4 v0, 0x1

    .line 181
    .local v0, "microphoneEnabled":Z
    const-string v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 183
    .local v1, "policy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneEnabled : get policy"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v1, :cond_23

    .line 185
    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneEnabled : get policy success call policy.isMicrophoneEnabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    .line 188
    :cond_23
    return v0
.end method

.method public static isScreenCaptureEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 144
    const-string v3, "restriction_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 146
    .local v0, "policy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v0, :cond_1e

    .line 147
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 149
    .local v1, "userId":I
    if-nez v1, :cond_1f

    .line 150
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    .line 157
    .end local v1    # "userId":I
    :cond_1e
    :goto_1e
    return v2

    .line 154
    .restart local v1    # "userId":I
    :cond_1f
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IIZ)Z

    move-result v2

    goto :goto_1e
.end method

.method public static nativeLogger(IIIILjava/lang/String;[B)V
    .registers 16
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # I
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # [B

    .prologue
    .line 114
    const-string v0, "nativeLogger"

    const-string v1, "Native Logger on JAVA byte array"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :try_start_7
    new-instance v9, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v9, p5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 117
    .local v9, "logs":Ljava/lang/String;
    const-string v0, "\\n"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "inputSplitNewLine":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_15
    array-length v0, v8

    if-ge v7, v0, :cond_2d

    .line 119
    const/4 v2, 0x1

    aget-object v5, v8, v7

    move v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_22} :catch_25

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 121
    .end local v7    # "i":I
    .end local v8    # "inputSplitNewLine":[Ljava/lang/String;
    .end local v9    # "logs":Ljava/lang/String;
    :catch_25
    move-exception v6

    .line 122
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported conversion"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2d
    return-void
.end method

.method public static nativeLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "nativeLogger"

    const-string v1, "Native Logger on JAVA"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static sendIntent(I)V
    .registers 3
    .param p0, "restriction"    # I

    .prologue
    .line 87
    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, "msgResId":I
    packed-switch p0, :pswitch_data_18

    .line 104
    .end local v0    # "msgResId":I
    :cond_8
    :goto_8
    return-void

    .line 91
    .restart local v0    # "msgResId":I
    :pswitch_9
    const v0, 0x1040270

    .line 102
    :goto_c
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_8

    .line 94
    :pswitch_10
    const v0, 0x1040271

    .line 95
    goto :goto_c

    .line 97
    :pswitch_14
    const v0, 0x10402bc

    .line 98
    goto :goto_c

    .line 89
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_9
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public static native setAuditEnabled(Z)V
.end method
