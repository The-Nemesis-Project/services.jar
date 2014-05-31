.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field static final PHONE_STATE_PERMISSION_MASK_CDMA_DUN:I = 0x1ec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final mCallStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoveCallStateListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApnBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDualSimSlotActivationState:Z

.field private mDunDataActivity:I

.field private mDunDataConnectionState:I

.field private mDunNetWorkType:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 116
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 122
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 124
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 128
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 131
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    .line 133
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    .line 135
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 140
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 158
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    .line 161
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    .line 165
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    .line 190
    new-instance v0, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->init(Landroid/content/Context;I)V

    .line 228
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 116
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 122
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 124
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 128
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 131
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    .line 133
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    .line 135
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 140
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 158
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    .line 161
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    .line 165
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    .line 190
    new-instance v0, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->init(Landroid/content/Context;I)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 1290
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1333
    :goto_d
    return-void

    .line 1294
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1296
    .local v0, "ident":J
    if-eq p1, v6, :cond_22

    if-eq p1, v7, :cond_22

    if-eq p1, v5, :cond_22

    .line 1301
    if-nez p1, :cond_5f

    .line 1302
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_65
    .catchall {:try_start_1a .. :try_end_1f} :catchall_67

    .line 1309
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1313
    :cond_22
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1317
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    :cond_42
    if-eq p1, v6, :cond_48

    if-eq p1, v7, :cond_48

    if-ne p1, v5, :cond_55

    .line 1326
    :cond_48
    const-string v3, "TelephonyRegistry"

    const-string v4, "VOIP_CALLSTATE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string v3, "is_voip_callstate"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1331
    :cond_55
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_d

    .line 1304
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_65
    .catchall {:try_start_5f .. :try_end_64} :catchall_67

    goto :goto_1f

    .line 1306
    :catch_65
    move-exception v3

    goto :goto_1f

    .line 1309
    :catchall_67
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneIndex"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 1337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1339
    .local v0, "ident":J
    if-eq p1, v6, :cond_17

    if-eq p1, v7, :cond_17

    if-eq p1, v5, :cond_17

    .line 1344
    if-nez p1, :cond_68

    .line 1345
    :try_start_f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_6e
    .catchall {:try_start_f .. :try_end_14} :catchall_70

    .line 1352
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1356
    :cond_17
    const-string v3, "TelephonyRegistry"

    const-string v4, "broadcastCallStateChanged() !!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    const-string/jumbo v3, "simSlot"

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1366
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1369
    :cond_46
    if-eq p1, v6, :cond_4c

    if-eq p1, v7, :cond_4c

    if-ne p1, v5, :cond_59

    .line 1372
    :cond_4c
    const-string v3, "TelephonyRegistry"

    const-string v4, "VOIP_CALLSTATE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const-string v3, "is_voip_callstate"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1376
    :cond_59
    const-string v3, "phoneIndex"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1378
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1380
    return-void

    .line 1347
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_68
    :try_start_68
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e
    .catchall {:try_start_68 .. :try_end_6d} :catchall_70

    goto :goto_14

    .line 1349
    :catch_6e
    move-exception v3

    goto :goto_14

    .line 1352
    :catchall_70
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1460
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1472
    :goto_a
    return-void

    .line 1464
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    const-string/jumbo v1, "simSlot"

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneIndex"    # I

    .prologue
    .line 1476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    const-string v1, "phoneIndex"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1480
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1481
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .registers 14
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1387
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1422
    :goto_b
    return-void

    .line 1394
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    if-nez p2, :cond_28

    .line 1398
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1400
    :cond_28
    if-eqz p3, :cond_2f

    .line 1401
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    :cond_2f
    if-eqz p6, :cond_41

    .line 1404
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1405
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 1407
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    .end local v0    # "iface":Ljava/lang/String;
    :cond_41
    if-eqz p7, :cond_48

    .line 1411
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1413
    :cond_48
    if-eqz p8, :cond_4f

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    :cond_4f
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string/jumbo v2, "simSlot"

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1421
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V
    .registers 15
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "phoneIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 1432
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    if-nez p2, :cond_1d

    .line 1435
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1437
    :cond_1d
    if-eqz p3, :cond_24

    .line 1438
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    :cond_24
    if-eqz p6, :cond_36

    .line 1441
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 1444
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    .end local v0    # "iface":Ljava/lang/String;
    :cond_36
    if-eqz p7, :cond_3d

    .line 1448
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1450
    :cond_3d
    if-eqz p8, :cond_44

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1452
    :cond_44
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    const-string v2, "phoneIndex"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1456
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1171
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1193
    :goto_a
    return-void

    .line 1175
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1177
    .local v1, "ident":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_42
    .catchall {:try_start_f .. :try_end_18} :catchall_3d

    .line 1181
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1186
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1187
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1191
    const-string/jumbo v4, "simSlot"

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1192
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 1181
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_3d
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1178
    :catch_42
    move-exception v4

    goto :goto_18
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .registers 9
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneIndex"    # I

    .prologue
    .line 1197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1199
    .local v1, "ident":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_43
    .catchall {:try_start_4 .. :try_end_d} :catchall_3e

    .line 1203
    :goto_d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    const-string v4, "TelephonyRegistry"

    const-string v5, "broadcastServiceStateChanged() !!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1234
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1235
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1236
    const-string v4, "phoneIndex"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1237
    const-string/jumbo v4, "simSlot"

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1238
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1239
    return-void

    .line 1203
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_3e
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1200
    :catch_43
    move-exception v4

    goto :goto_d
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .registers 8
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1243
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1265
    :goto_a
    return-void

    .line 1247
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1249
    .local v1, "ident":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_3b
    .catchall {:try_start_f .. :try_end_14} :catchall_36

    .line 1253
    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1259
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1260
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1264
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 1253
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_36
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1250
    :catch_3b
    move-exception v4

    goto :goto_14
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .registers 9
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneIndex"    # I

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1271
    .local v1, "ident":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_3d
    .catchall {:try_start_4 .. :try_end_9} :catchall_38

    .line 1275
    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1282
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1283
    const-string v4, "phoneIndex"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1284
    const-string/jumbo v4, "simSlot"

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1285
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1286
    return-void

    .line 1275
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_38
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1272
    :catch_3d
    move-exception v4

    goto :goto_9
.end method

.method private checkListenerPermission(I)V
    .registers 5
    .param p1, "events"    # I

    .prologue
    const/4 v2, 0x0

    .line 1496
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    .line 1497
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :cond_c
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_17

    .line 1503
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_17
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_22

    .line 1518
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_22
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1485
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1487
    const/4 v1, 0x1

    .line 1492
    :goto_b
    return v1

    .line 1489
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private getCallStateForAllSims()I
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 521
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    new-array v1, v4, [I

    .line 524
    .local v1, "state":[I
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v0, v4, :cond_1c

    .line 525
    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MultiSimTelephonyManager;->getCallState()I

    move-result v4

    aput v4, v1, v0

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 528
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v0, v4, :cond_2b

    .line 529
    aget v4, v1, v0

    if-ne v2, v4, :cond_28

    .line 540
    :goto_27
    return v2

    .line 528
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 534
    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 535
    aget v2, v1, v0

    if-ne v3, v2, :cond_38

    move v2, v3

    .line 536
    goto :goto_27

    .line 534
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 540
    :cond_3b
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private handleRemoveCallStateListenerListLocked()V
    .registers 4

    .prologue
    .line 1553
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 1554
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1555
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->removeCallStateListener(Landroid/os/IBinder;)V

    goto :goto_e

    .line 1557
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1e
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1559
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method private handleRemoveListLocked()V
    .registers 4

    .prologue
    .line 1525
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 1526
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1527
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_e

    .line 1529
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1e
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1531
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 496
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 497
    :try_start_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 498
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 499
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    .line 500
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 501
    monitor-exit v3

    .line 505
    :goto_1e
    return-void

    .line 498
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 504
    :cond_22
    monitor-exit v3

    goto :goto_1e

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private removeCallStateListener(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 509
    sget-object v3, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 510
    :try_start_3
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 511
    .local v1, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 512
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    .line 513
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    monitor-exit v3

    .line 518
    :goto_1e
    return-void

    .line 511
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 517
    :cond_22
    monitor-exit v3

    goto :goto_1e

    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 1535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1536
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 1538
    .local v3, "valid":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1539
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_17

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_19

    and-int/2addr v4, p2

    if-eqz v4, :cond_17

    const/4 v3, 0x1

    .line 1546
    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    return v3

    .line 1539
    :cond_17
    const/4 v3, 0x0

    goto :goto_13

    .line 1546
    .end local v2    # "foregroundUser":I
    :catchall_19
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1124
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    .line 1126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    :goto_32
    return-void

    .line 1130
    :cond_33
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1131
    :try_start_36
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1132
    .local v4, "recordCount":I
    const-string v5, "last known state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCallState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCallIncomingNumber="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mServiceState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSignalStrength="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMessageWaiting="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCallForwarding="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataActivity="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionPossible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionReason="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionApn="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionLinkProperties="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCellLocation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCellInfo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registrations: count="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1150
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " 0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c5

    .line 1163
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "recordCount":I
    :catchall_1fa
    move-exception v5

    monitor-exit v6
    :try_end_1fc
    .catchall {:try_start_36 .. :try_end_1fc} :catchall_1fa

    throw v5

    .line 1154
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "recordCount":I
    :cond_1fd
    :try_start_1fd
    sget-object v7, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_1fa

    .line 1155
    :try_start_200
    sget-object v5, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1156
    .local v2, "listenerCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call state listeners: count="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21d
    if-ge v0, v2, :cond_252

    .line 1158
    sget-object v5, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1159
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " 0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_21d

    .line 1161
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_252
    monitor-exit v7
    :try_end_253
    .catchall {:try_start_200 .. :try_end_253} :catchall_256

    .line 1163
    :try_start_253
    monitor-exit v6
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_1fa

    goto/16 :goto_32

    .line 1161
    .end local v0    # "i":I
    .end local v2    # "listenerCount":I
    :catchall_256
    move-exception v5

    :try_start_257
    monitor-exit v7
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_256

    :try_start_258
    throw v5
    :try_end_259
    .catchall {:try_start_258 .. :try_end_259} :catchall_1fa
.end method

.method init(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 257
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    .line 258
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 262
    .local v2, "location":Landroid/telephony/CellLocation;
    if-eqz v2, :cond_d

    .line 263
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 265
    :cond_d
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 266
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    .line 275
    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "apnStrings":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block apn list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_51} :catch_52

    .line 283
    .end local v0    # "apnStrings":[Ljava/lang/String;
    :goto_51
    return-void

    .line 279
    :catch_52
    move-exception v1

    .line 280
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "TelephonyRegistry"

    const-string v4, "Block apn list not found."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 28
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    .line 297
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 298
    .local v5, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 304
    .local v13, "myUid":I
    if-eqz p3, :cond_2b6

    .line 306
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 310
    const/4 v15, 0x0

    .line 313
    .local v15, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_19
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 314
    .local v4, "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_1f6

    move-result v3

    .line 315
    .local v3, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v16, v15

    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v16, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_2a
    if-ge v9, v3, :cond_1ce

    .line 316
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_316

    .line 317
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_3a
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_1c8

    .line 330
    :goto_42
    iget v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move/from16 v19, v0

    xor-int v19, v19, p3

    and-int v18, p3, v19

    .line 331
    .local v18, "send":I
    iget v14, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 332
    .local v14, "oldEvents":I
    move/from16 v0, p3

    iput v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 335
    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_200

    .line 336
    const/4 v10, 0x0

    .line 337
    .local v10, "listener":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v7, 0x0

    .line 338
    .local v7, "found":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 339
    sget-object v21, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v21
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_1f6

    .line 340
    :try_start_5d
    sget-object v19, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 341
    .local v12, "listenerCount":I
    const/4 v9, 0x0

    :goto_64
    if-ge v9, v12, :cond_322

    .line 342
    sget-object v19, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v10, v0

    .line 343
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_1fd

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_1f9

    .line 344
    const/4 v7, 0x1

    move-object v11, v10

    .line 348
    .end local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .local v11, "listener":Lcom/android/server/TelephonyRegistry$Record;
    :goto_7d
    if-nez v7, :cond_31f

    .line 349
    :try_start_7f
    new-instance v10, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_31b

    .line 350
    .end local v11    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_88
    iput-object v4, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 351
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 352
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 353
    const/16 v19, 0x20

    move/from16 v0, v19

    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 354
    sget-object v19, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_9f
    monitor-exit v21
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_1fd

    .line 364
    .end local v7    # "found":Z
    .end local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .end local v12    # "listenerCount":I
    :cond_a0
    :goto_a0
    if-eqz p4, :cond_1c6

    .line 365
    and-int/lit8 v19, p3, 0x1

    if-eqz v19, :cond_bc

    .line 367
    :try_start_a6
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    new-instance v21, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_bc} :catch_211
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_1f6

    .line 372
    :cond_bc
    :goto_bc
    and-int/lit8 v19, p3, 0x2

    if-eqz v19, :cond_da

    .line 374
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v8

    .line 375
    .local v8, "gsmSignalStrength":I
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    const/16 v21, 0x63

    move/from16 v0, v21

    if-ne v8, v0, :cond_d5

    const/4 v8, -0x1

    .end local v8    # "gsmSignalStrength":I
    :cond_d5
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_da} :catch_21f
    .catchall {:try_start_c0 .. :try_end_da} :catchall_1f6

    .line 381
    :cond_da
    :goto_da
    and-int/lit8 v19, p3, 0x4

    if-eqz v19, :cond_ef

    .line 383
    :try_start_de
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_ef} :catch_22d
    .catchall {:try_start_de .. :try_end_ef} :catchall_1f6

    .line 388
    :cond_ef
    :goto_ef
    and-int/lit8 v19, p3, 0x8

    if-eqz v19, :cond_104

    .line 390
    :try_start_f3
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_104} :catch_23b
    .catchall {:try_start_f3 .. :try_end_104} :catchall_1f6

    .line 395
    :cond_104
    :goto_104
    const/16 v19, 0x10

    :try_start_106
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_10d
    .catchall {:try_start_106 .. :try_end_10d} :catchall_1f6

    move-result v19

    if-eqz v19, :cond_126

    .line 398
    :try_start_110
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    new-instance v21, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_126} :catch_249
    .catchall {:try_start_110 .. :try_end_126} :catchall_1f6

    .line 403
    :cond_126
    :goto_126
    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_141

    .line 408
    :try_start_12a
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->getCallStateForAllSims()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_141} :catch_257
    .catchall {:try_start_12a .. :try_end_141} :catchall_1f6

    .line 415
    :cond_141
    :goto_141
    and-int/lit8 v19, p3, 0x40

    if-eqz v19, :cond_15e

    .line 417
    :try_start_145
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_15e} :catch_270
    .catchall {:try_start_145 .. :try_end_15e} :catchall_1f6

    .line 423
    :cond_15e
    :goto_15e
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_177

    .line 425
    :try_start_166
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_177} :catch_27e
    .catchall {:try_start_166 .. :try_end_177} :catchall_1f6

    .line 449
    :cond_177
    :goto_177
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_190

    .line 451
    :try_start_17f
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_190} :catch_28c
    .catchall {:try_start_17f .. :try_end_190} :catchall_1f6

    .line 456
    :cond_190
    :goto_190
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_1a9

    .line 458
    :try_start_198
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1a9
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_1a9} :catch_29a
    .catchall {:try_start_198 .. :try_end_1a9} :catchall_1f6

    .line 463
    :cond_1a9
    :goto_1a9
    const/16 v19, 0x400

    :try_start_1ab
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_1b2
    .catchall {:try_start_1ab .. :try_end_1b2} :catchall_1f6

    move-result v19

    if-eqz v19, :cond_1c6

    .line 466
    :try_start_1b5
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_1b5 .. :try_end_1c6} :catch_2a8
    .catchall {:try_start_1b5 .. :try_end_1c6} :catchall_1f6

    .line 472
    :cond_1c6
    :goto_1c6
    :try_start_1c6
    monitor-exit v20
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1f6

    .line 493
    .end local v3    # "N":I
    .end local v14    # "oldEvents":I
    .end local v18    # "send":I
    :goto_1c7
    return-void

    .line 315
    .restart local v3    # "N":I
    :cond_1c8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v15

    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_2a

    .line 321
    :cond_1ce
    :try_start_1ce
    new-instance v15, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_1d7
    .catchall {:try_start_1ce .. :try_end_1d7} :catchall_316

    .line 322
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v19, 0x0

    :try_start_1d9
    move/from16 v0, v19

    iput v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 323
    iput-object v4, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 324
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 325
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 326
    iput v5, v15, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    .line 472
    .end local v3    # "N":I
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v9    # "i":I
    :catchall_1f6
    move-exception v19

    :goto_1f7
    monitor-exit v20
    :try_end_1f8
    .catchall {:try_start_1d9 .. :try_end_1f8} :catchall_1f6

    throw v19

    .line 341
    .restart local v3    # "N":I
    .restart local v4    # "b":Landroid/os/IBinder;
    .restart local v7    # "found":Z
    .restart local v9    # "i":I
    .restart local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v12    # "listenerCount":I
    .restart local v14    # "oldEvents":I
    .restart local v18    # "send":I
    :cond_1f9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_64

    .line 356
    .end local v12    # "listenerCount":I
    :catchall_1fd
    move-exception v19

    :goto_1fe
    :try_start_1fe
    monitor-exit v21
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    :try_start_1ff
    throw v19

    .line 358
    .end local v7    # "found":Z
    .end local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    :cond_200
    and-int/lit8 v19, v14, 0x20

    if-eqz v19, :cond_a0

    .line 359
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->removeCallStateListener(Landroid/os/IBinder;)V

    goto/16 :goto_a0

    .line 368
    :catch_211
    move-exception v6

    .line 369
    .local v6, "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_bc

    .line 377
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_21f
    move-exception v6

    .line 378
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_da

    .line 384
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_22d
    move-exception v6

    .line 385
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_ef

    .line 391
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_23b
    move-exception v6

    .line 392
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_104

    .line 399
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_249
    move-exception v6

    .line 400
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_126

    .line 410
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_257
    move-exception v6

    .line 411
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 412
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->removeCallStateListener(Landroid/os/IBinder;)V

    goto/16 :goto_141

    .line 419
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_270
    move-exception v6

    .line 420
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_15e

    .line 426
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_27e
    move-exception v6

    .line 427
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_177

    .line 452
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_28c
    move-exception v6

    .line 453
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_190

    .line 459
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_29a
    move-exception v6

    .line 460
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1a9

    .line 467
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_2a8
    move-exception v6

    .line 468
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2b4
    .catchall {:try_start_1ff .. :try_end_2b4} :catchall_1f6

    goto/16 :goto_1c6

    .line 475
    .end local v3    # "N":I
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v9    # "i":I
    .end local v14    # "oldEvents":I
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v18    # "send":I
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 476
    const/4 v15, 0x0

    .line 477
    .restart local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2be
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 478
    .restart local v4    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 479
    .local v17, "recordSize":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2cd
    move/from16 v0, v17

    if-ge v9, v0, :cond_302

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v15, v0

    .line 481
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_2ff

    .line 482
    iget v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_2ff

    .line 483
    sget-object v19, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_2ff
    add-int/lit8 v9, v9, 0x1

    goto :goto_2cd

    .line 487
    :cond_302
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveCallStateListenerListLocked()V

    .line 488
    monitor-exit v20
    :try_end_306
    .catchall {:try_start_2be .. :try_end_306} :catchall_313

    .line 491
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1c7

    .line 488
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v9    # "i":I
    .end local v17    # "recordSize":I
    :catchall_313
    move-exception v19

    :try_start_314
    monitor-exit v20
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_313

    throw v19

    .line 472
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v3    # "N":I
    .restart local v4    # "b":Landroid/os/IBinder;
    .restart local v9    # "i":I
    .restart local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_316
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_1f7

    .line 356
    .restart local v7    # "found":Z
    .restart local v11    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v12    # "listenerCount":I
    .restart local v14    # "oldEvents":I
    .restart local v18    # "send":I
    :catchall_31b
    move-exception v19

    move-object v10, v11

    .end local v11    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_1fe

    .end local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v11    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    :cond_31f
    move-object v10, v11

    .end local v11    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_9f

    :cond_322
    move-object v11, v10

    .end local v10    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v11    # "listener":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_7d
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 8
    .param p1, "cfi"    # Z

    .prologue
    .line 759
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 775
    :goto_8
    return-void

    .line 762
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 763
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 764
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 765
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_14

    .line 767
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    .line 768
    :catch_2c
    move-exception v0

    .line 769
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 774
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    .line 773
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 774
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 578
    :goto_8
    return-void

    .line 548
    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 549
    :try_start_c
    sget-object v6, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_49

    .line 550
    :try_start_f
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 551
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 552
    sget-object v4, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 553
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_46

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_19

    .line 556
    move v3, p1

    .line 558
    .local v3, "tempState":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_4c

    .line 559
    const/4 v3, 0x1

    .line 565
    :cond_30
    :goto_30
    :try_start_30
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_46

    goto :goto_19

    .line 567
    :catch_36
    move-exception v0

    .line 568
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_37
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v4, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 575
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "tempState":I
    :catchall_46
    move-exception v4

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    :try_start_48
    throw v4

    .line 576
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    throw v4

    .line 560
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v3    # "tempState":I
    :cond_4c
    const/4 v4, 0x5

    if-ne v3, v4, :cond_51

    .line 561
    const/4 v3, 0x2

    goto :goto_30

    .line 562
    :cond_51
    const/4 v4, 0x3

    if-ne v3, v4, :cond_30

    .line 563
    const/4 v3, 0x0

    goto :goto_30

    .line 573
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "tempState":I
    :cond_56
    :try_start_56
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 574
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveCallStateListenerListLocked()V

    .line 575
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_46

    .line 576
    :try_start_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_49

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public notifyCallStateDuos(ILjava/lang/String;I)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneIndex"    # I

    .prologue
    .line 582
    const-string v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 611
    :goto_8
    return-void

    .line 585
    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 586
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 587
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 588
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 589
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_3c

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_16

    .line 592
    move v3, p1

    .line 594
    .local v3, "tempState":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3f

    .line 595
    const/4 v3, 0x1

    .line 601
    :cond_2d
    :goto_2d
    :try_start_2d
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_3c

    goto :goto_16

    .line 603
    :catch_33
    move-exception v0

    .line 604
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_34
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 609
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "tempState":I
    :catchall_3c
    move-exception v4

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v4

    .line 596
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v3    # "tempState":I
    :cond_3f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_44

    .line 597
    const/4 v3, 0x2

    goto :goto_2d

    .line 598
    :cond_44
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2d

    .line 599
    const/4 v3, 0x0

    goto :goto_2d

    .line 608
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "tempState":I
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 609
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_3c

    .line 610
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_8
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 737
    :goto_8
    return-void

    .line 721
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 722
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    .line 723
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 724
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_37

    move-result v3

    if-eqz v3, :cond_14

    .line 729
    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37

    goto :goto_14

    .line 730
    :catch_2e
    move-exception v0

    .line 731
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 736
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v3

    .line 735
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 736
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    goto :goto_8
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1061
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1082
    :goto_8
    return-void

    .line 1064
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1065
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 1066
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1067
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_3c

    move-result v3

    if-eqz v3, :cond_14

    .line 1073
    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_33
    .catchall {:try_start_28 .. :try_end_32} :catchall_3c

    goto :goto_14

    .line 1074
    :catch_33
    move-exception v0

    .line 1075
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_34
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1081
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v3

    .line 1080
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1081
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_3c

    goto :goto_8
.end method

.method public notifyDataActivity(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 778
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 794
    :goto_8
    return-void

    .line 781
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 782
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 783
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 784
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    .line 786
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    .line 787
    :catch_2c
    move-exception v0

    .line 788
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 793
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    .line 792
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 793
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .registers 24
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    .line 861
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 947
    :goto_8
    return-void

    .line 890
    :cond_9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 891
    const/4 v12, 0x0

    .line 897
    .local v12, "modified":Z
    :try_start_d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 898
    :cond_1b
    const/4 v1, 0x2

    if-ne p1, v1, :cond_81

    .line 899
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 900
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_36

    .line 902
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 903
    const/4 v12, 0x1

    .line 918
    :cond_36
    :goto_36
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 919
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 920
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 921
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 922
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_51

    .line 923
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 925
    const/4 v12, 0x1

    .line 927
    :cond_51
    if-eqz v12, :cond_9a

    .line 932
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_59
    :goto_59
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 933
    .local v13, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_67
    .catchall {:try_start_d .. :try_end_67} :catchall_7e

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_59

    .line 935
    :try_start_6b
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_74} :catch_75
    .catchall {:try_start_6b .. :try_end_74} :catchall_7e

    goto :goto_59

    .line 937
    :catch_75
    move-exception v10

    .line 938
    .local v10, "ex":Landroid/os/RemoteException;
    :try_start_76
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 944
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_7e
    move-exception v1

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_7e

    throw v1

    .line 907
    :cond_81
    :try_start_81
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 908
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 909
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 910
    const/4 v12, 0x1

    goto :goto_36

    .line 942
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_97
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 944
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_7e

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 945
    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionDuos(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    .registers 26
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z
    .param p10, "phoneIndex"    # I

    .prologue
    .line 953
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1013
    :goto_8
    return-void

    .line 963
    :cond_9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 964
    const/4 v13, 0x0

    .line 965
    .local v13, "modified":Z
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_79

    .line 966
    :try_start_12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 967
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_2e

    .line 969
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 970
    const/4 v13, 0x1

    .line 984
    :cond_2e
    :goto_2e
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 985
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 986
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 987
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 988
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_49

    .line 989
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 991
    const/4 v13, 0x1

    .line 993
    :cond_49
    if-eqz v13, :cond_94

    .line 998
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TelephonyRegistry$Record;

    .line 999
    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v14, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_76

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_51

    .line 1001
    :try_start_63
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6c} :catch_6d
    .catchall {:try_start_63 .. :try_end_6c} :catchall_76

    goto :goto_51

    .line 1003
    :catch_6d
    move-exception v11

    .line 1004
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_6e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1010
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_76
    move-exception v1

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    throw v1

    .line 974
    :cond_79
    :try_start_79
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 975
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 976
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 977
    const/4 v13, 0x1

    goto :goto_2e

    .line 1008
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_91
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1010
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_76

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    .line 1011
    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1017
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1035
    :goto_8
    return-void

    .line 1034
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyDataConnectionFailedDuos(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "phoneIndex"    # I

    .prologue
    .line 1039
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1057
    :goto_8
    return-void

    .line 1056
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public notifyDualSimSlotActivationState(Z)V
    .registers 5
    .param p1, "resultInfo"    # Z

    .prologue
    .line 798
    const-string v1, "notifyDualSimSlotActivationState()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 814
    :goto_8
    return-void

    .line 801
    :cond_9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 802
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    .line 803
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_23

    .line 804
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 803
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 813
    :cond_23
    monitor-exit v2

    goto :goto_8

    .end local v0    # "i":I
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v1
.end method

.method public notifyDunDataActivity(I)V
    .registers 7
    .param p1, "state"    # I

    .prologue
    .line 819
    const-string v3, "notifyDunDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 835
    :goto_8
    return-void

    .line 822
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 823
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    .line 824
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_38

    .line 825
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 826
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x180

    if-eqz v3, :cond_2b

    .line 828
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDunDataActivity(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2e
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    .line 824
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 829
    :catch_2e
    move-exception v0

    .line 830
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2f
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2b

    .line 834
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v3

    .restart local v1    # "i":I
    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    goto :goto_8
.end method

.method public notifyDunDataConnection(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 838
    const-string v3, "notifyDunDataConnection()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 855
    :goto_8
    return-void

    .line 841
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 842
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    .line 843
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    .line 844
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_3a

    .line 845
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 846
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_37

    and-int/lit16 v3, v3, 0x140

    if-eqz v3, :cond_2d

    .line 848
    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDunDataConnectionStateChanged(II)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_30
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37

    .line 844
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 849
    :catch_30
    move-exception v0

    .line 850
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_31
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2d

    .line 854
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_37

    throw v3

    .restart local v1    # "i":I
    :cond_3a
    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    goto :goto_8
.end method

.method public notifyFdnUpdated()V
    .registers 7

    .prologue
    .line 1105
    const-string v3, "notifyFdnUpdated()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1121
    :goto_8
    return-void

    .line 1109
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1110
    :try_start_c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1111
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_33

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_12

    .line 1113
    :try_start_24
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onFdnUpdated()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a
    .catchall {:try_start_24 .. :try_end_29} :catchall_33

    goto :goto_12

    .line 1114
    :catch_2a
    move-exception v0

    .line 1115
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1120
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    throw v3

    .line 1119
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1120
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_33

    goto :goto_8
.end method

.method public notifyMessageWaitingChanged(Z)V
    .registers 8
    .param p1, "mwi"    # Z

    .prologue
    .line 740
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 756
    :goto_8
    return-void

    .line 743
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 744
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 745
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 746
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_14

    .line 748
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    .line 749
    :catch_2c
    move-exception v0

    .line 750
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 755
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    .line 754
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 755
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyOtaspChanged(I)V
    .registers 8
    .param p1, "otaspMode"    # I

    .prologue
    .line 1085
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1101
    :goto_8
    return-void

    .line 1088
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1089
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1090
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1091
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_14

    .line 1093
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    .line 1094
    :catch_2c
    move-exception v0

    .line 1095
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1100
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    .line 1099
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1100
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .registers 8
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 615
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 632
    :goto_8
    return-void

    .line 618
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 619
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 620
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 621
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_3a

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_14

    .line 623
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31
    .catchall {:try_start_26 .. :try_end_30} :catchall_3a

    goto :goto_14

    .line 624
    :catch_31
    move-exception v0

    .line 625
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 630
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v3

    .line 629
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 630
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    .line 631
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_8
.end method

.method public notifyServiceStateDuos(Landroid/telephony/ServiceState;I)V
    .registers 9
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneIndex"    # I

    .prologue
    .line 636
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 653
    :goto_8
    return-void

    .line 639
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 640
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 641
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 642
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_3a

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_14

    .line 644
    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31
    .catchall {:try_start_26 .. :try_end_30} :catchall_3a

    goto :goto_14

    .line 645
    :catch_31
    move-exception v0

    .line 646
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 651
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v3

    .line 650
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 651
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    .line 652
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_8
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 9
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 657
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 683
    :goto_8
    return-void

    .line 660
    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 661
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 662
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 663
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_4e

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_30

    .line 665
    :try_start_26
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_51
    .catchall {:try_start_26 .. :try_end_30} :catchall_4e

    .line 670
    :cond_30
    :goto_30
    :try_start_30
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_4e

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    .line 672
    :try_start_36
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 673
    .local v1, "gsmSignalStrength":I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_41

    const/4 v1, -0x1

    .end local v1    # "gsmSignalStrength":I
    :cond_41
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_45
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e

    goto :goto_14

    .line 675
    :catch_45
    move-exception v0

    .line 676
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_46
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 681
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v4

    .line 666
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_51
    move-exception v0

    .line 667
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_52
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 680
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 681
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_4e

    .line 682
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_8
.end method

.method public notifySignalStrengthDuos(Landroid/telephony/SignalStrength;I)V
    .registers 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneIndex"    # I

    .prologue
    .line 687
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 713
    :goto_8
    return-void

    .line 690
    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 691
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 692
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 693
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_4e

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_30

    .line 695
    :try_start_26
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_51
    .catchall {:try_start_26 .. :try_end_30} :catchall_4e

    .line 700
    :cond_30
    :goto_30
    :try_start_30
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_4e

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    .line 702
    :try_start_36
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 703
    .local v1, "gsmSignalStrength":I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_41

    const/4 v1, -0x1

    .end local v1    # "gsmSignalStrength":I
    :cond_41
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_45
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e

    goto :goto_14

    .line 705
    :catch_45
    move-exception v0

    .line 706
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_46
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 711
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v4

    .line 696
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_51
    move-exception v0

    .line 697
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_52
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 710
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 711
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_4e

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_8
.end method

.method public systemRunning()V
    .registers 4

    .prologue
    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method
