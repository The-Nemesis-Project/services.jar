.class Lcom/android/server/display/SideSyncDisplayAdapter$2;
.super Ljava/lang/Object;
.source "SideSyncDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SideSyncDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$2;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$2;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    new-instance v1, Lcom/android/server/display/SideSyncDisplayController;

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayAdapter$2;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/SideSyncDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/SideSyncDisplayAdapter$2;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/SideSyncDisplayAdapter$2;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    # getter for: Lcom/android/server/display/SideSyncDisplayAdapter;->mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;
    invoke-static {v4}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$300(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController$Listener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/SideSyncDisplayAdapter$2;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    # getter for: Lcom/android/server/display/SideSyncDisplayAdapter;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    invoke-static {v5}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$400(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/SideSyncDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/SideSyncDisplayController$Listener;Lcom/android/server/display/DisplayManagerService$SideSyncListener;)V

    # setter for: Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;
    invoke-static {v0, v1}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$202(Lcom/android/server/display/SideSyncDisplayAdapter;Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController;

    .line 111
    return-void
.end method
