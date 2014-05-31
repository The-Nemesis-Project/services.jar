.class Lcom/android/server/am/ActivityManagerService$32;
.super Landroid/app/IProcessObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 19605
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$32;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 19607
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$32;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->onForegroundActivitiesChanged(IIZ)V

    .line 19608
    return-void
.end method

.method public onImportanceChanged(III)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 19611
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$32;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->onImportanceChanged(III)V

    .line 19612
    return-void
.end method

.method public onProcessDied(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 19615
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$32;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemApi;->onProcessDied(II)V

    .line 19616
    return-void
.end method
