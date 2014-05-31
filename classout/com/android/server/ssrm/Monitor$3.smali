.class Lcom/android/server/ssrm/Monitor$3;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final TIMER_PERIOD:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 3

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$3;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/Monitor$3;->TIMER_PERIOD:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 609
    invoke-static {}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->update()V

    .line 610
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$3;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    return-void
.end method
