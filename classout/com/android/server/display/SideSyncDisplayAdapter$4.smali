.class Lcom/android/server/display/SideSyncDisplayAdapter$4;
.super Ljava/lang/Object;
.source "SideSyncDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SideSyncDisplayAdapter;->requestDisableSideSyncLocked()V
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
    .line 250
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$4;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$4;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    # getter for: Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$200(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->requestDisableSideSync()V

    .line 254
    return-void
.end method
