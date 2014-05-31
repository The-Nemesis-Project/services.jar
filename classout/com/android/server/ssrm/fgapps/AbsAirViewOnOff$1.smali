.class Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$fps:I


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->val$fps:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 268
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget-boolean v3, v3, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    if-nez v3, :cond_11

    .line 269
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iput-boolean v6, v3, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    .line 270
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    invoke-virtual {v3}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus()V

    .line 294
    :cond_10
    :goto_10
    return-void

    .line 274
    :cond_11
    const/16 v0, 0xa

    .line 275
    .local v0, "cnt":I
    :goto_13
    if-lez v0, :cond_10

    .line 277
    const-wide/16 v3, 0x32

    :try_start_17
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_56

    .line 282
    :goto_1a
    const-string v3, "SSRMv2:AirViewOnOff"

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->val$filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "temp":Ljava/lang/String;
    if-eqz v2, :cond_74

    .line 284
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 285
    const-string v3, "SSRMv2:AirViewOnOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: Current FPS trim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget v4, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->val$fps:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->checkFPS(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 287
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iput-boolean v6, v3, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    .line 288
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;

    iget v4, p0, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff$1;->val$fps:I

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/fgapps/AbsAirViewOnOff;->updateAirViewStatus(I)V

    goto :goto_10

    .line 278
    .end local v2    # "temp":Ljava/lang/String;
    :catch_56
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "SSRMv2:AirViewOnOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: exception msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 292
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_74
    add-int/lit8 v0, v0, -0x1

    .line 293
    goto :goto_13
.end method
