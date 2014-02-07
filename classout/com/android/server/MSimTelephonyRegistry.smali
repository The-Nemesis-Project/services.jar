.class Lcom/android/server/MSimTelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;
.source "MSimTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MSimTelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "MSimTelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

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

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDefaultSubscription:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:[Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MSimTelephonyRegistry$Record;",
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

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;-><init>()V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 114
    iput v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    .line 116
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 118
    iput-boolean v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    .line 120
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 122
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 134
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    .line 136
    iput-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 138
    iput v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDefaultSubscription:I

    .line 149
    new-instance v3, Lcom/android/server/MSimTelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/MSimTelephonyRegistry$1;-><init>(Lcom/android/server/MSimTelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v3, Lcom/android/server/MSimTelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/MSimTelephonyRegistry$2;-><init>(Lcom/android/server/MSimTelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 186
    .local v1, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 191
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDefaultSubscription:I

    .line 193
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 194
    .local v2, "numPhones":I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    .line 195
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 196
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 197
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 198
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    .line 199
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    .line 200
    new-array v3, v2, [Landroid/os/Bundle;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_80
    if-ge v0, v2, :cond_b7

    .line 203
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aput v5, v3, v0

    .line 204
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 205
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 206
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    .line 207
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v5, v3, v0

    .line 208
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v5, v3, v0

    .line 209
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v0

    .line 210
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 215
    :cond_b7
    if-eqz v1, :cond_ce

    .line 216
    const/4 v0, 0x0

    :goto_ba
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_ce

    .line 217
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 220
    :cond_ce
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MSimTelephonyRegistry;)[Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MSimTelephonyRegistry;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MSimTelephonyRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MSimTelephonyRegistry;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    .line 745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 747
    .local v0, "ident":J
    if-nez p1, :cond_3c

    .line 748
    :try_start_6
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_42
    .catchall {:try_start_6 .. :try_end_b} :catchall_44

    .line 755
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 762
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    :cond_2d
    const-string v3, "subscription"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 767
    return-void

    .line 750
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3c
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42
    .catchall {:try_start_3c .. :try_end_41} :catchall_44

    goto :goto_b

    .line 752
    :catch_42
    move-exception v3

    goto :goto_b

    .line 755
    :catchall_44
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const-string v1, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 809
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

    .line 776
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    if-nez p2, :cond_1c

    .line 780
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    :cond_1c
    if-eqz p3, :cond_23

    .line 783
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    :cond_23
    if-eqz p6, :cond_35

    .line 786
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 787
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 789
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    .end local v0    # "iface":Ljava/lang/String;
    :cond_35
    if-eqz p7, :cond_3c

    .line 793
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 795
    :cond_3c
    if-eqz p8, :cond_43

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 797
    :cond_43
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 800
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .registers 9
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subscription"    # I

    .prologue
    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 709
    .local v1, "ident":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_34
    .catchall {:try_start_4 .. :try_end_d} :catchall_2f

    .line 713
    :goto_d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 718
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 719
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 721
    const-string v4, "subscription"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 723
    return-void

    .line 713
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_2f
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 710
    :catch_34
    move-exception v4

    goto :goto_d
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .registers 9
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subscription"    # I

    .prologue
    .line 726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 728
    .local v1, "ident":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_35
    .catchall {:try_start_4 .. :try_end_9} :catchall_30

    .line 732
    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 739
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 740
    const-string v4, "subscription"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 742
    return-void

    .line 732
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_30
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 729
    :catch_35
    move-exception v4

    goto :goto_9
.end method

.method private checkListenerPermission(I)V
    .registers 5
    .param p1, "events"    # I

    .prologue
    const/4 v2, 0x0

    .line 823
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    .line 824
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_c
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_17

    .line 830
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_17
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_22

    .line 836
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_22
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 814
    const/4 v1, 0x1

    .line 819
    :goto_b
    return v1

    .line 816
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

    .line 819
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private handleRemoveListLocked()V
    .registers 4

    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 843
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

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

    .line 844
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_e

    .line 846
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1e
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 848
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 366
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 367
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 368
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 369
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    .line 370
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 371
    monitor-exit v3

    .line 375
    :goto_1e
    return-void

    .line 368
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 374
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

.method private validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/MSimTelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 853
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 855
    .local v3, "valid":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 856
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/MSimTelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_17

    iget v4, p1, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_19

    and-int/2addr v4, p2

    if-eqz v4, :cond_17

    const/4 v3, 0x1

    .line 863
    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    return v3

    .line 856
    :cond_17
    const/4 v3, 0x0

    goto :goto_13

    .line 863
    .end local v2    # "foregroundUser":I
    :catchall_19
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 668
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    :goto_32
    return-void

    .line 674
    :cond_33
    iget-object v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 675
    :try_start_36
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 676
    .local v3, "recordCount":I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_42
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_172

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallState["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallIncomingNumber["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mServiceState["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSignalStrength["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mMessageWaiting["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallForwarding["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellLocation["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellInfo["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_42

    .line 687
    :cond_172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionNetworkType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_24e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_286

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 697
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24e

    .line 699
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v3    # "recordCount":I
    :catchall_283
    move-exception v4

    monitor-exit v5
    :try_end_285
    .catchall {:try_start_36 .. :try_end_285} :catchall_283

    throw v4

    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "recordCount":I
    :cond_286
    :try_start_286
    monitor-exit v5
    :try_end_287
    .catchall {:try_start_286 .. :try_end_287} :catchall_283

    goto/16 :goto_32
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 21
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subscription"    # I

    .prologue
    .line 233
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 234
    .local v3, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 240
    .local v7, "myUid":I
    if-eqz p3, :cond_16d

    .line 242
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->checkListenerPermission(I)V

    .line 244
    iget-object v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    .line 246
    const/4 v8, 0x0

    .line 248
    .local v8, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_13
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 249
    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_113

    move-result v1

    .line 250
    .local v1, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    move-object v9, v8

    .end local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .local v9, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :goto_1f
    if-ge v6, v1, :cond_f6

    .line 251
    :try_start_21
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_176

    .line 252
    .end local v9    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_29
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_f1

    .line 265
    :goto_2d
    iget v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    xor-int v11, v11, p3

    and-int v10, p3, v11

    .line 266
    .local v10, "send":I
    move/from16 v0, p3

    iput v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_113

    .line 267
    if-eqz p4, :cond_ef

    .line 268
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_4b

    .line 270
    :try_start_3d
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/telephony/ServiceState;

    iget-object v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, p5

    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4b} :catch_116
    .catchall {:try_start_3d .. :try_end_4b} :catchall_113

    .line 276
    :cond_4b
    :goto_4b
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_61

    .line 278
    :try_start_4f
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, p5

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .line 280
    .local v5, "gsmSignalStrength":I
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v5, v13, :cond_5e

    const/4 v5, -0x1

    .end local v5    # "gsmSignalStrength":I
    :cond_5e
    invoke-interface {v11, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_61} :catch_11e
    .catchall {:try_start_4f .. :try_end_61} :catchall_113

    .line 286
    :cond_61
    :goto_61
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_6e

    .line 288
    :try_start_65
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v13, v13, p5

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_126
    .catchall {:try_start_65 .. :try_end_6e} :catchall_113

    .line 294
    :cond_6e
    :goto_6e
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_7b

    .line 296
    :try_start_72
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v13, v13, p5

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7b} :catch_12e
    .catchall {:try_start_72 .. :try_end_7b} :catchall_113

    .line 302
    :cond_7b
    :goto_7b
    const/16 v11, 0x10

    :try_start_7d
    invoke-direct {p0, v8, v11}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_113

    move-result v11

    if-eqz v11, :cond_91

    .line 306
    :try_start_83
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v14, v14, p5

    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_91} :catch_136
    .catchall {:try_start_83 .. :try_end_91} :catchall_113

    .line 312
    :cond_91
    :goto_91
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_a2

    .line 314
    :try_start_95
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aget v13, v13, p5

    iget-object v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v14, v14, p5

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a2} :catch_13e
    .catchall {:try_start_95 .. :try_end_a2} :catchall_113

    .line 320
    :cond_a2
    :goto_a2
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_af

    .line 322
    :try_start_a6
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    iget v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_af} :catch_146
    .catchall {:try_start_a6 .. :try_end_af} :catchall_113

    .line 328
    :cond_af
    :goto_af
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_bc

    .line 330
    :try_start_b5
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_bc} :catch_14e
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_113

    .line 335
    :cond_bc
    :goto_bc
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_cb

    .line 337
    :try_start_c2
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, p5

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_cb} :catch_156
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_113

    .line 342
    :cond_cb
    :goto_cb
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_d8

    .line 344
    :try_start_d1
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d8} :catch_15e
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_113

    .line 349
    :cond_d8
    :goto_d8
    const/16 v11, 0x400

    :try_start_da
    invoke-direct {p0, v8, v11}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_113

    move-result v11

    if-eqz v11, :cond_ef

    .line 353
    :try_start_e0
    iget-object v13, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v13, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_ef} :catch_166
    .catchall {:try_start_e0 .. :try_end_ef} :catchall_113

    .line 359
    :cond_ef
    :goto_ef
    :try_start_ef
    monitor-exit v12
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_113

    .line 363
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v6    # "i":I
    .end local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v10    # "send":I
    :goto_f0
    return-void

    .line 250
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :cond_f1
    add-int/lit8 v6, v6, 0x1

    move-object v9, v8

    .end local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v9    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    goto/16 :goto_1f

    .line 256
    :cond_f6
    :try_start_f6
    new-instance v8, Lcom/android/server/MSimTelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/MSimTelephonyRegistry$Record;-><init>(Lcom/android/server/MSimTelephonyRegistry$1;)V
    :try_end_fc
    .catchall {:try_start_f6 .. :try_end_fc} :catchall_176

    .line 257
    .end local v9    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_fc
    iput-object v2, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 258
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 259
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 260
    iput v3, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callerUid:I

    .line 261
    move/from16 v0, p5

    iput v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I

    .line 262
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    .line 359
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_113
    move-exception v11

    :goto_114
    monitor-exit v12
    :try_end_115
    .catchall {:try_start_fc .. :try_end_115} :catchall_113

    throw v11

    .line 272
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v10    # "send":I
    :catch_116
    move-exception v4

    .line 273
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_117
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_4b

    .line 282
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_11e
    move-exception v4

    .line 283
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_61

    .line 290
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_126
    move-exception v4

    .line 291
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_6e

    .line 298
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_12e
    move-exception v4

    .line 299
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_7b

    .line 308
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_136
    move-exception v4

    .line 309
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_91

    .line 316
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_13e
    move-exception v4

    .line 317
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a2

    .line 324
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_146
    move-exception v4

    .line 325
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_af

    .line 331
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_14e
    move-exception v4

    .line 332
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_bc

    .line 338
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_156
    move-exception v4

    .line 339
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_cb

    .line 345
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_15e
    move-exception v4

    .line 346
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_d8

    .line 354
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_166
    move-exception v4

    .line 355
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_16c
    .catchall {:try_start_117 .. :try_end_16c} :catchall_113

    goto :goto_ef

    .line 361
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "ex":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v10    # "send":I
    :cond_16d
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_f0

    .line 359
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v9    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_176
    move-exception v11

    move-object v8, v9

    .end local v9    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v8    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    goto :goto_114
.end method

.method public notifyCallForwardingChanged(ZI)V
    .registers 9
    .param p1, "cfi"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 499
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 516
    :goto_8
    return-void

    .line 502
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 503
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p1, v3, p2

    .line 504
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 505
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_16

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_3b

    if-ne v3, p2, :cond_16

    .line 508
    :try_start_2c
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_3b

    goto :goto_16

    .line 509
    :catch_32
    move-exception v0

    .line 510
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_33
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 515
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v3

    .line 514
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 515
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_3b

    goto :goto_8
.end method

.method public notifyCallState(ILjava/lang/String;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    .line 378
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 397
    :goto_8
    return-void

    .line 381
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 382
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aput p1, v3, p3

    .line 383
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p2, v3, p3

    .line 384
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 385
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1a

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_3f

    if-ne v3, p3, :cond_1a

    .line 388
    :try_start_30
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_3f

    goto :goto_1a

    .line 389
    :catch_36
    move-exception v0

    .line 390
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_37
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 395
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v3

    .line 394
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_42
    :try_start_42
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 395
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_3f

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MSimTelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_8
.end method

.method public notifyCellInfo(Ljava/util/List;I)V
    .registers 9
    .param p2, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 476
    :goto_8
    return-void

    .line 459
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 460
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 462
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_3e

    if-ne v3, p2, :cond_17

    .line 468
    :try_start_2f
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35
    .catchall {:try_start_2f .. :try_end_34} :catchall_3e

    goto :goto_17

    .line 469
    :catch_35
    move-exception v0

    .line 470
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_36
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 475
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    throw v3

    .line 474
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_41
    :try_start_41
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 475
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_3e

    goto :goto_8
.end method

.method public notifyCellLocation(Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "cellLocation"    # Landroid/os/Bundle;
    .param p2, "subscription"    # I

    .prologue
    .line 623
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 645
    :goto_8
    return-void

    .line 626
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 627
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p1, v3, p2

    .line 628
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 629
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_42

    if-ne v3, p2, :cond_16

    .line 636
    :try_start_2e
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_38} :catch_39
    .catchall {:try_start_2e .. :try_end_38} :catchall_42

    goto :goto_16

    .line 637
    :catch_39
    move-exception v0

    .line 638
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 644
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_42
    move-exception v3

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v3

    .line 643
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 644
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_42

    goto :goto_8
.end method

.method public notifyDataActivity(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 519
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 535
    :goto_8
    return-void

    .line 522
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 523
    :try_start_c
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    .line 524
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 525
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    .line 527
    :try_start_26
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    .line 528
    :catch_2c
    move-exception v0

    .line 529
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 534
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    .line 533
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 534
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
    .line 540
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 599
    :goto_8
    return-void

    .line 549
    :cond_9
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 550
    const/4 v12, 0x0

    .line 551
    .local v12, "modified":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_73

    .line 552
    :try_start_10
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 553
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_28

    .line 555
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 556
    const/4 v12, 0x1

    .line 570
    :cond_28
    :goto_28
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    .line 571
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 572
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 573
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 574
    iget v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_43

    .line 575
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    .line 577
    const/4 v12, 0x1

    .line 579
    :cond_43
    if-eqz v12, :cond_8c

    .line 584
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 585
    .local v13, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_70

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4b

    .line 587
    :try_start_5d
    iget-object v1, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_66} :catch_67
    .catchall {:try_start_5d .. :try_end_66} :catchall_70

    goto :goto_4b

    .line 589
    :catch_67
    move-exception v10

    .line 590
    .local v10, "ex":Landroid/os/RemoteException;
    :try_start_68
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 596
    .end local v10    # "ex":Landroid/os/RemoteException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_70
    move-exception v1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_70

    throw v1

    .line 560
    :cond_73
    :try_start_73
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 561
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 562
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 563
    const/4 v12, 0x1

    goto :goto_28

    .line 594
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_89
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 596
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_73 .. :try_end_8d} :catchall_70

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 597
    invoke-direct/range {v1 .. v9}, Lcom/android/server/MSimTelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 602
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 620
    :goto_8
    return-void

    .line 619
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyMessageWaitingChanged(ZI)V
    .registers 9
    .param p1, "mwi"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 479
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 496
    :goto_8
    return-void

    .line 482
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 483
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p1, v3, p2

    .line 484
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 485
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_16

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_3b

    if-ne v3, p2, :cond_16

    .line 488
    :try_start_2c
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_3b

    goto :goto_16

    .line 489
    :catch_32
    move-exception v0

    .line 490
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_33
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 495
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v3

    .line 494
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 495
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_3b

    goto :goto_8
.end method

.method public notifyOtaspChanged(I)V
    .registers 8
    .param p1, "otaspMode"    # I

    .prologue
    .line 648
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 664
    :goto_8
    return-void

    .line 651
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 652
    :try_start_c
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    .line 653
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 654
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_14

    .line 656
    :try_start_26
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    .line 657
    :catch_2c
    move-exception v0

    .line 658
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 663
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    .line 662
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 663
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;I)V
    .registers 9
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subscription"    # I

    .prologue
    .line 400
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 421
    :goto_8
    return-void

    .line 406
    :cond_9
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 407
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v3, p2

    .line 408
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 409
    .local v2, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_16

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_40

    if-ne v3, p2, :cond_16

    .line 412
    :try_start_2c
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_37
    .catchall {:try_start_2c .. :try_end_36} :catchall_40

    goto :goto_16

    .line 413
    :catch_37
    move-exception v0

    .line 414
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_38
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 419
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v3

    .line 418
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_43
    :try_start_43
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 419
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_40

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_8
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;I)V
    .registers 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subscription"    # I

    .prologue
    .line 424
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 452
    :goto_8
    return-void

    .line 427
    :cond_9
    iget-object v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 428
    :try_start_c
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v4, p2

    .line 429
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 430
    .local v3, "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_36

    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_58

    if-ne v4, p2, :cond_36

    .line 433
    :try_start_2c
    iget-object v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_5b
    .catchall {:try_start_2c .. :try_end_36} :catchall_58

    .line 438
    :cond_36
    :goto_36
    :try_start_36
    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_16

    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_58

    if-ne v4, p2, :cond_16

    .line 441
    :try_start_40
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 442
    .local v1, "gsmSignalStrength":I
    iget-object v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_4b

    const/4 v1, -0x1

    .end local v1    # "gsmSignalStrength":I
    :cond_4b
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4e} :catch_4f
    .catchall {:try_start_40 .. :try_end_4e} :catchall_58

    goto :goto_16

    .line 444
    :catch_4f
    move-exception v0

    .line 445
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_50
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 450
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_58
    move-exception v4

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw v4

    .line 434
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :catch_5b
    move-exception v0

    .line 435
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 449
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/MSimTelephonyRegistry$Record;
    :cond_64
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 450
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_58

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_8
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method
