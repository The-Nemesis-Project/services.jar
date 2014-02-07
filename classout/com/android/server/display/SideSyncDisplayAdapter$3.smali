.class Lcom/android/server/display/SideSyncDisplayAdapter$3;
.super Ljava/lang/Object;
.source "SideSyncDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SideSyncDisplayAdapter;->requestEnableSideSyncLocked(Ljava/lang/String;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

.field final synthetic val$ipAddr:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;

.field final synthetic val$resolution:I


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->val$ipAddr:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->val$port:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->val$resolution:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    # getter for: Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$200(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->val$ipAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->val$port:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/display/SideSyncDisplayAdapter$3;->val$resolution:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/SideSyncDisplayController;->requestEnableSideSync(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    return-void
.end method
