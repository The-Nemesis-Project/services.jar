.class Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PowerSavingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PowerSavingMode;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    invoke-virtual {v0}, Lcom/android/server/ssrm/PowerSavingMode;->onSettingChanged()V

    .line 83
    return-void
.end method
