.class Lcom/android/server/SecSCTimeReceiver$1;
.super Ljava/lang/Object;
.source "SecSCTimeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleNitztimeUpdation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCTimeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCTimeReceiver;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/SecSCTimeReceiver$1;->this$0:Lcom/android/server/SecSCTimeReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 205
    iget-object v3, p0, Lcom/android/server/SecSCTimeReceiver$1;->this$0:Lcom/android/server/SecSCTimeReceiver;

    # getter for: Lcom/android/server/SecSCTimeReceiver;->mcontext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/SecSCTimeReceiver;->access$000(Lcom/android/server/SecSCTimeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "autoEnable":I
    if-ne v0, v5, :cond_19

    .line 208
    iget-object v3, p0, Lcom/android/server/SecSCTimeReceiver$1;->this$0:Lcom/android/server/SecSCTimeReceiver;

    # invokes: Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleAutoTimeUpdation()V
    invoke-static {v3}, Lcom/android/server/SecSCTimeReceiver;->access$100(Lcom/android/server/SecSCTimeReceiver;)V

    .line 216
    :goto_18
    return-void

    .line 211
    :cond_19
    const-string v3, "SecSCTimeReceiver"

    const-string v4, "NTP time is not available. Receiving NITz "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v3, "SecSCTimeReceiver"

    const-string v4, "call sec_sctime_nitzReceived()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 214
    .local v1, "systemtime":J
    # invokes: Lcom/android/server/SecSCTimeReceiver;->sec_sctime_nitzReceived(J)V
    invoke-static {v1, v2}, Lcom/android/server/SecSCTimeReceiver;->access$200(J)V

    goto :goto_18
.end method
