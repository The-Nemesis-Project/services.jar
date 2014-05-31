.class public Lcom/android/server/SecSCService;
.super Landroid/app/Service;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecSCService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final SEC_SC_BOOT_COMPLETE:I = 0x1

.field public static final SEC_SC_GOT_DATA_CONNECTION:I = 0x2

.field public static final SEC_SC_GOT_NITZ:I = 0x3

.field private static final SEC_SC_LIMIT_TIME:I = 0x1388

.field private static final SEC_SC_NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final TAG:Ljava/lang/String; = "SecSCService"


# instance fields
.field private mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SecSCService;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    return-void
.end method

.method private static native SecSC_bootComplete()V
.end method

.method private static native SecSC_createTempFile()V
.end method

.method private static native SecSC_deleteFile()V
.end method

.method private static native SecSC_deleteTempFile()V
.end method

.method private SecSC_handleConnectivityStateChanged()V
    .registers 4

    .prologue
    .line 208
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 209
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 211
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCService$1;-><init>(Lcom/android/server/SecSCService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method private static native SecSC_nitzReceived(JJ)V
.end method

.method private static native SecSC_ntpReceived(JJ)V
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 65
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_bootComplete()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 65
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_createTempFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SecSCService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SecSCService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/SecSCService;->SecSC_handleConnectivityStateChanged()V

    return-void
.end method

.method static synthetic access$300(JJ)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/SecSCService;->SecSC_nitzReceived(JJ)V

    return-void
.end method


# virtual methods
.method public SecSC_handleNitzTimeUpdation()V
    .registers 5

    .prologue
    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 240
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/SecSCService$2;

    invoke-direct {v1, p0}, Lcom/android/server/SecSCService$2;-><init>(Lcom/android/server/SecSCService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    return-void
.end method

.method public SecSC_onNetworkStateChanged(JJ)V
    .registers 8
    .param p1, "networktime"    # J
    .param p3, "recvelapsedtime"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 232
    cmp-long v0, p1, v1

    if-lez v0, :cond_d

    cmp-long v0, p3, v1

    if-lez v0, :cond_d

    .line 233
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCService;->SecSC_ntpReceived(JJ)V

    .line 235
    :cond_d
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 143
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SecSCService;->mServiceLooper:Landroid/os/Looper;

    .line 149
    new-instance v1, Lcom/android/server/SecSCService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/SecSCService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/SecSCService$ServiceHandler;-><init>(Lcom/android/server/SecSCService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    .line 150
    const-string v1, "SecSC"

    const-string v2, "SecSCService oncreate call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_deleteFile()V

    .line 153
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 198
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 203
    const-string v0, "SecSCService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 205
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 161
    const-string v1, "SecSC"

    const-string v2, "SecSCService onStartCommand call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/SecSCService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 166
    if-eqz p1, :cond_20

    .line 168
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 170
    iput v3, v0, Landroid/os/Message;->what:I

    .line 184
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SecSCService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return v3

    .line 172
    :cond_26
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 174
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_20

    .line 176
    :cond_36
    const-string v1, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 177
    const-string v1, "SecSC"

    const-string v2, "Current action is nitz set time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_20

    .line 181
    :cond_4d
    const-string v1, "SecSC"

    const-string v2, "Code should not reach here"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
