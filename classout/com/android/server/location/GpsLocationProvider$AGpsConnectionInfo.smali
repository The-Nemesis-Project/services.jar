.class Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AGpsConnectionInfo"
.end annotation


# static fields
.field private static final BEARER_INVALID:I = -0x1

.field private static final BEARER_IPV4:I = 0x0

.field private static final BEARER_IPV4V6:I = 0x2

.field private static final BEARER_IPV6:I = 0x1

.field private static final CONNECTION_TYPE_ANY:I = 0x0

.field private static final CONNECTION_TYPE_C2K:I = 0x2

.field private static final CONNECTION_TYPE_SUPL:I = 0x1

.field private static final CONNECTION_TYPE_SUPL2:I = 0x3

.field private static final CONNECTION_TYPE_SUPL2_A_GLONASS:I = 0x6

.field private static final CONNECTION_TYPE_WIFI:I = 0x5

.field private static final CONNECTION_TYPE_WWAN_ANY:I = 0x4

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_KEEP_OPEN:I = 0x3

.field private static final STATE_OPEN:I = 0x2

.field private static final STATE_OPENING:I = 0x1


# instance fields
.field private mAPN:Ljava/lang/String;

.field private final mAgpsType:I

.field private mBearerType:I

.field private final mCMConnType:I

.field private mIPvVerType:I

.field private mIpAddr:Ljava/net/InetAddress;

.field private final mPHConnFeatureStr:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 6
    .param p2, "connMgrConnType"    # I
    .param p3, "agpsType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3110
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3111
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    .line 3112
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    .line 3113
    const/4 v0, 0x3

    if-ne v0, p2, :cond_1c

    .line 3114
    const-string v0, "enableSUPL"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    .line 3118
    :goto_11
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 3119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 3120
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    .line 3121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    .line 3122
    return-void

    .line 3116
    :cond_1c
    const-string v0, "enableMMS"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    goto :goto_11
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/location/GpsLocationProvider$1;

    .prologue
    .line 3077
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    .prologue
    .line 3077
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .param p1, "x1"    # I

    .prologue
    .line 3077
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    .prologue
    .line 3077
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    .prologue
    .line 3077
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getCMConnType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    .prologue
    .line 3077
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 3077
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3077
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getBearerType(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3077
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    .prologue
    .line 3077
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # [B

    .prologue
    .line 3077
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->connect(Landroid/net/NetworkInfo;[B)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    .prologue
    .line 3077
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    return-object v0
.end method

.method private connect(Landroid/net/NetworkInfo;[B)V
    .registers 10
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "ipAddr"    # [B

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3203
    const/4 v0, -0x1

    .line 3204
    .local v0, "result":I
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    if-nez v2, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 3206
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 3207
    const/4 v0, 0x0

    .line 3222
    :cond_19
    :goto_19
    if-nez v0, :cond_4a

    .line 3223
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    if-eq v2, v6, :cond_29

    .line 3225
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 3234
    :cond_29
    :goto_29
    return-void

    .line 3211
    :cond_2a
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 3212
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 3214
    if-eqz p2, :cond_19

    .line 3216
    :try_start_3a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_19

    .line 3217
    :catch_41
    move-exception v1

    .line 3218
    .local v1, "uhe":Ljava/net/UnknownHostException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "bad ipaddress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 3227
    .end local v1    # "uhe":Ljava/net/UnknownHostException;
    :cond_4a
    if-ne v0, v4, :cond_54

    .line 3228
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 3231
    :cond_54
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    goto :goto_29
.end method

.method private getAgpsType()I
    .registers 2

    .prologue
    .line 3124
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method private getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->getDefaultApn()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "defaultApn"    # Ljava/lang/String;

    .prologue
    .line 3137
    if-eqz p1, :cond_8

    .line 3138
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 3140
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 3143
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 3146
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method private getBearerType(Landroid/net/NetworkInfo;)I
    .registers 14
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3149
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 3150
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 3152
    :cond_c
    const/4 v7, 0x0

    .line 3153
    .local v7, "ipProtocol":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 3157
    .local v9, "phone":Landroid/telephony/TelephonyManager;
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    .line 3158
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 3159
    .local v8, "networkType":I
    const/4 v0, 0x4

    if-eq v0, v8, :cond_34

    const/4 v0, 0x5

    if-eq v0, v8, :cond_34

    const/4 v0, 0x6

    if-eq v0, v8, :cond_34

    const/4 v0, 0x7

    if-eq v0, v8, :cond_34

    const/16 v0, 0xc

    if-ne v0, v8, :cond_3c

    .line 3164
    :cond_34
    const-string v0, "persist.telephony.cdma.protocol"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3168
    .end local v8    # "networkType":I
    :cond_3c
    if-nez v7, :cond_9b

    .line 3169
    const-string v3, "current = 1"

    .line 3170
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3173
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "protocol"

    aput-object v4, v2, v10

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3176
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_9b

    .line 3178
    :try_start_8d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 3179
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_e0

    move-result-object v7

    .line 3182
    :cond_98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3186
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_9b
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    if-nez v7, :cond_e5

    .line 3190
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    .line 3199
    :goto_dd
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    return v0

    .line 3182
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_e0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3191
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_e5
    const-string v0, "IPV6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 3192
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_dd

    .line 3193
    :cond_f0
    const-string v0, "IPV4V6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 3194
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_dd

    .line 3196
    :cond_fc
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_dd
.end method

.method private getCMConnType()I
    .registers 2

    .prologue
    .line 3127
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    return v0
.end method

.method private getIpAddr()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    return-object v0
.end method
