.class public Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SsrmPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 2

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1226
    if-nez p1, :cond_14

    .line 1227
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCallStateChanged:: CALL_STATE_IDLE"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-boolean v3, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    .line 1236
    :cond_13
    :goto_13
    return-void

    .line 1229
    :cond_14
    if-ne p1, v4, :cond_26

    .line 1230
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCallStateChanged:: CALL_STATE_RINGING"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-boolean v3, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    goto :goto_13

    .line 1232
    :cond_26
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 1233
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCallStateChanged:: CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-boolean v4, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    goto :goto_13
.end method
