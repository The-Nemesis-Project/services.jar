.class Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;
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
    .line 214
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 219
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 220
    :try_start_3
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 221
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 222
    const-wide/16 v1, 0x2ee

    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 223
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_0

    .line 224
    :catch_14
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    return-void

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_14
.end method
