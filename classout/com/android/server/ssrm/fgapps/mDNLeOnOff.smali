.class public Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "mDNLeOnOff.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;
    }
.end annotation


# static fields
.field static final MSG_ANI_STARTED:I = 0x1

.field public static avgAniTime:J

.field public static currentEndTime:J

.field public static currentStartTime:J

.field private static delayOffset:I

.field static syncObject:Ljava/lang/Object;

.field static syncObject2:Ljava/lang/Object;

.field public static totalAniCount:I

.field public static totalAniTime:J


# instance fields
.field final TAG:Ljava/lang/String;

.field isLockScreenOn:Z

.field ismDNIeAppFg:Z

.field private mHandler:Landroid/os/Handler;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreviousmDNIeValue:I

.field mResult:Z

.field mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

.field updateThread:Ljava/lang/Thread;

.field updateThread2:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 132
    sput v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    .line 287
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    .line 289
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    .line 291
    sput v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    .line 293
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    .line 295
    sput-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 41
    const-string v0, "SSRMv2:mDNIeOnOff"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    .line 54
    iput v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateSettings()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 38
    sput p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    return p0
.end method

.method private updateSettings()V
    .registers 15

    .prologue
    const/4 v13, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 86
    sget-object v10, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "reading_mode_app_list"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "readingModeApps":Ljava/lang/String;
    const-string v10, "SSRMv2:mDNIeOnOff"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSettings:: readingModeApps = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v10, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "e_reading_display_mode"

    invoke-static {v10, v11, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v8, :cond_5e

    move v2, v8

    .line 91
    .local v2, "isReadingMode":Z
    :goto_37
    const-string v10, "SSRMv2:mDNIeOnOff"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSettings:: isReadingMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v7, :cond_58

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_60

    .line 95
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->clearPackages()V

    .line 96
    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 128
    :goto_5d
    return-void

    .end local v2    # "isReadingMode":Z
    :cond_5e
    move v2, v9

    .line 89
    goto :goto_37

    .line 100
    .restart local v2    # "isReadingMode":Z
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->clearPackages()V

    .line 101
    if-eqz v2, :cond_b4

    .line 102
    if-eqz v7, :cond_b4

    .line 103
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "names":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_74
    if-ge v1, v3, :cond_b4

    aget-object v5, v0, v1

    .line 105
    .local v5, "packageAndActivityName":Ljava/lang/String;
    if-nez v5, :cond_7d

    .line 104
    :cond_7a
    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 108
    :cond_7d
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "packageName":[Ljava/lang/String;
    const-string v10, "com.google.android.gms"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 110
    const-string v10, "com.google.android.gms"

    invoke-virtual {p0, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    .line 111
    const-string v10, "com.google.android.gms.ui"

    invoke-virtual {p0, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    goto :goto_7a

    .line 113
    :cond_96
    const-string v10, "com.google.android.music"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 114
    const-string v10, "com.google.android.music"

    invoke-virtual {p0, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    .line 115
    const-string v10, "com.google.android.music:ui"

    invoke-virtual {p0, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    goto :goto_7a

    .line 117
    :cond_a9
    if-eqz v6, :cond_7a

    array-length v10, v6

    if-lt v10, v8, :cond_7a

    .line 118
    aget-object v10, v6, v9

    invoke-virtual {p0, v10}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->addPackage(Ljava/lang/String;)V

    goto :goto_7a

    .line 124
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "packageAndActivityName":Ljava/lang/String;
    .end local v6    # "packageName":[Ljava/lang/String;
    :cond_b4
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateForegroundPackageStatus()V

    .line 125
    sget-object v9, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v9

    .line 126
    :try_start_ba
    sget-object v8, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 127
    monitor-exit v9

    goto :goto_5d

    :catchall_c1
    move-exception v8

    monitor-exit v9
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_c1

    throw v8
.end method


# virtual methods
.method protected calculateCurrentmDNIe()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isMultiWindowActivated()Z

    move-result v1

    if-nez v1, :cond_f

    .line 248
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    if-eqz v1, :cond_10

    .line 258
    :cond_f
    :goto_f
    return v0

    .line 251
    :cond_10
    const-string v0, "com.android.email"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 252
    const/16 v0, 0xa

    goto :goto_f

    .line 254
    :cond_1f
    const/16 v0, 0x9

    goto :goto_f
.end method

.method public onAnimationFinished(J)V
    .registers 9
    .param p1, "currentTime"    # J

    .prologue
    .line 309
    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 319
    :cond_a
    :goto_a
    return-void

    .line 313
    :cond_b
    sput-wide p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    .line 314
    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_a

    .line 315
    sget v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    .line 316
    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget-wide v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentEndTime:J

    sget-wide v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    .line 317
    sget-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniTime:J

    sget v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->totalAniCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    goto :goto_a
.end method

.method public onAnimationStarted(J)V
    .registers 6
    .param p1, "currentTime"    # J

    .prologue
    .line 298
    sget-wide v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_b

    .line 306
    :cond_a
    :goto_a
    return-void

    .line 302
    :cond_b
    sput-wide p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->currentStartTime:J

    .line 303
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method public onBootComplete()V
    .registers 3

    .prologue
    .line 167
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 168
    const-string v0, "SSRMv2:mDNIeOnOff"

    const-string v1, "onBootComplete : mContext == null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_b
    return-void

    .line 172
    :cond_c
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    .line 174
    new-instance v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$1;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$1;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    .line 188
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->register()V

    .line 189
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateSettings()V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread:Ljava/lang/Thread;

    .line 212
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;-><init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread2:Ljava/lang/Thread;

    .line 230
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateThread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method public onFgAppChanged()V
    .registers 3

    .prologue
    .line 323
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_3
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 325
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onFgAppInPackageList(Z)V
    .registers 5
    .param p1, "isForeground"    # Z

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "foregroundPackageName":Ljava/lang/String;
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->ismDNIeAppFg:Z

    .line 139
    const-string v1, "launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 140
    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_11
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v1, :cond_19

    .line 142
    const/16 v1, -0x64

    sput v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I

    .line 144
    :cond_19
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 145
    monitor-exit v2

    .line 147
    :cond_1f
    return-void

    .line 145
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onLockScreenRelease()V
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 238
    return-void
.end method

.method public onMultiWindowStatusChanged(Z)V
    .registers 5
    .param p1, "isMultiWindowOn"    # Z

    .prologue
    .line 330
    const-string v0, "SSRMv2:mDNIeOnOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiWindowActivated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isMultiWindowActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_1f
    sget-object v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 342
    sput-object p1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mContext:Landroid/content/Context;

    .line 343
    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "onReceive:: ACTION_USER_FOREGROUND"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->deregister()V

    .line 345
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mSettingsObserver:Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->register()V

    .line 346
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updateSettings()V

    .line 348
    :cond_25
    return-void
.end method

.method public onScreenOff()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->isLockScreenOn:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 153
    return-void
.end method

.method protected declared-synchronized updatemDNIe()V
    .registers 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->calculateCurrentmDNIe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIeSysFs(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updatemDNIeSysFs(I)V
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_5

    .line 285
    :cond_4
    :goto_4
    return-void

    .line 268
    :cond_5
    iget v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    if-eq p1, v1, :cond_4

    .line 270
    :try_start_9
    invoke-static {p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    .line 271
    iput p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPreviousmDNIeValue:I

    .line 272
    const-string v1, "SSRMv2:mDNIeOnOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNIeUIMode => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-nez p1, :cond_4e

    .line 275
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    .line 276
    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "setAutoBrightnessForEbookOnly = true"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalAccessError; {:try_start_9 .. :try_end_44} :catch_45

    goto :goto_4

    .line 281
    :catch_45
    move-exception v0

    .line 282
    .local v0, "e0":Ljava/lang/IllegalAccessError;
    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "IllegalAccessError occured!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 278
    .end local v0    # "e0":Ljava/lang/IllegalAccessError;
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    .line 279
    const-string v1, "SSRMv2:mDNIeOnOff"

    const-string v2, "setAutoBrightnessForEbookOnly = false"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/IllegalAccessError; {:try_start_4e .. :try_end_5b} :catch_45

    goto :goto_4
.end method
