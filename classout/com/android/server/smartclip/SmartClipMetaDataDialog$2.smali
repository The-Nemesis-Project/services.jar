.class Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;
.super Landroid/telephony/PhoneStateListener;
.source "SmartClipMetaDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipMetaDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, "SmartClipMetaDataDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartClipMetaDataDialog onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    .line 314
    const-string v0, "SmartClipMetaDataDialog"

    const-string v1, "SmartClipMetaDataDialog get TelephonyManager.CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 316
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    # getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    .line 319
    :cond_33
    return-void
.end method
