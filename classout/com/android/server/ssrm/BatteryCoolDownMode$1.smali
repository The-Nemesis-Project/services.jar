.class Lcom/android/server/ssrm/BatteryCoolDownMode$1;
.super Ljava/lang/Object;
.source "BatteryCoolDownMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/BatteryCoolDownMode;->startBatteryCoolDownMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/BatteryCoolDownMode;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 97
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    .line 98
    .local v0, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget-object v2, v2, Lcom/android/server/ssrm/BatteryCoolDownMode;->mKillActiveApplicationsRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/server/ssrm/BatteryCoolDownMode$1;->this$0:Lcom/android/server/ssrm/BatteryCoolDownMode;

    iget v3, v3, Lcom/android/server/ssrm/BatteryCoolDownMode;->DELAY_FOR_BATTERY_COOLDOWN:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
