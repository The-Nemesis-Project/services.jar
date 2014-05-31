.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBondingAirplaneModeSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3232
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    .line 3233
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3234
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3249
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "SmartBondingAirplaneModeSettingObserver : turn on airplan mode."

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 3250
    :cond_13
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4500(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v0

    if-nez v0, :cond_34

    .line 3251
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3252
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "SmartBondingAirplaneModeSettingObserver : user is owner / disable smart bonding"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 3257
    :cond_2e
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    .line 3272
    :cond_34
    :goto_34
    return-void

    .line 3261
    :cond_35
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "SmartBondingAirplaneModeSettingObserver : turn off airplan mode."

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto :goto_34
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3238
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3239
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3243
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3244
    return-void
.end method
