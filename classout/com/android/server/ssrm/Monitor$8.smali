.class Lcom/android/server/ssrm/Monitor$8;
.super Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$8;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "setting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 663
    const-string v0, "SSRMv2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSRM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5a

    move v0, v1

    :goto_39
    if-eq v3, v0, :cond_59

    .line 665
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5c

    move v0, v1

    :goto_48
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    .line 666
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v0, :cond_59

    .line 667
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$8;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$8;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, v1, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->resetTemperature(I)V

    .line 670
    :cond_59
    return-void

    :cond_5a
    move v0, v2

    .line 664
    goto :goto_39

    :cond_5c
    move v0, v2

    .line 665
    goto :goto_48
.end method
