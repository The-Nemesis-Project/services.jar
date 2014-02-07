.class Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayManagerService$SideSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService;->registerSideSyncAdapterLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSideSyncChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V
    invoke-static {v0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->access$100(Lcom/android/server/display/DisplayManagerService;II)V

    .line 704
    return-void
.end method
