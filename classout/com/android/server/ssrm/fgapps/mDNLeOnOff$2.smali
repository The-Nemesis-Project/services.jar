.class Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;
.super Ljava/lang/Object;
.source "mDNLeOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onBootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 196
    :goto_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 198
    :try_start_3
    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 199
    sget-wide v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    # getter for: Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I
    invoke-static {}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->access$100()I

    move-result v2

    int-to-long v6, v2

    add-long v0, v4, v6

    .line 200
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1d

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 203
    :cond_1d
    const-string v2, "SSRMv2:mDNIeOnOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call updatemDNIe with delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 205
    const/4 v2, 0x0

    # setter for: Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I
    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->access$102(I)I
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3e} :catch_43
    .catchall {:try_start_3 .. :try_end_3e} :catchall_40

    .line 208
    .end local v0    # "delay":J
    :goto_3e
    :try_start_3e
    monitor-exit v3

    goto :goto_0

    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v2

    .line 206
    :catch_43
    move-exception v2

    goto :goto_3e
.end method
