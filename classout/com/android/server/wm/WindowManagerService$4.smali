.class Lcom/android/server/wm/WindowManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 941
    const-string v9, "com.sec.android.extra.ARRAGE_MODE"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 942
    .local v5, "mode":I
    const-string v9, "com.sec.android.extra.ARRAGE_TYPE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, "type":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 944
    :try_start_12
    const-string v9, "InputMethod"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 946
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 947
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_2f

    .line 948
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 949
    .local v0, "di":Landroid/view/DisplayInfo;
    iget v9, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v11, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-le v9, v11, :cond_2f

    .line 950
    monitor-exit v10

    .line 989
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_2e
    return-void

    .line 954
    .restart local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2f
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v2

    .line 955
    .local v2, "idx":I
    if-lez v2, :cond_5c

    .line 956
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    add-int/lit8 v11, v2, -0x1

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v12, v12, Lcom/android/server/wm/WindowManagerService;->mWindowCountBetweenIMTargetAndTopWidget:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 957
    .local v3, "imFocus":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_5c

    .line 958
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v9

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_5c

    .line 959
    monitor-exit v10

    goto :goto_2e

    .line 973
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "idx":I
    .end local v3    # "imFocus":Lcom/android/server/wm/WindowState;
    :catchall_59
    move-exception v9

    monitor-exit v10
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_59

    throw v9

    .line 965
    :cond_5c
    :try_start_5c
    # ++operator for: Lcom/android/server/wm/WindowManagerService;->sArrangeModeIndex:I
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$304()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    # setter for: Lcom/android/server/wm/WindowManagerService;->sArrangeModeIndex:I
    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->access$302(I)I

    .line 966
    # getter for: Lcom/android/server/wm/WindowManagerService;->sArrangeModeIndex:I
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$300()I

    move-result v9

    if-nez v9, :cond_b2

    .line 967
    or-int/lit16 v5, v5, 0x800

    .line 972
    :goto_6d
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    # setter for: Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I
    invoke-static {v9, v5}, Lcom/android/server/wm/WindowManagerService;->access$402(Lcom/android/server/wm/WindowManagerService;I)I

    .line 973
    monitor-exit v10
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_59

    .line 975
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 976
    .local v7, "systemDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 978
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "EOF"

    aput-object v10, v6, v9

    .line 979
    .local v6, "str":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 980
    const/4 v9, 0x0

    :try_start_94
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I
    invoke-static {v11}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    .line 981
    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_b5

    .line 982
    const-string v9, "arrangemode"

    invoke-static {v7, v9, v6}, Lcom/android/server/wm/WindowManagerService$MultiWindowDataStorage;->store(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 985
    :try_start_a6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 986
    .local v4, "mgr":Landroid/app/IActivityManager;
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ae} :catch_af

    goto :goto_2e

    .line 987
    .end local v4    # "mgr":Landroid/app/IActivityManager;
    :catch_af
    move-exception v9

    goto/16 :goto_2e

    .line 969
    .end local v6    # "str":[Ljava/lang/String;
    .end local v7    # "systemDir":Ljava/io/File;
    :cond_b2
    and-int/lit16 v5, v5, -0x801

    goto :goto_6d

    .line 981
    .restart local v6    # "str":[Ljava/lang/String;
    .restart local v7    # "systemDir":Ljava/io/File;
    :catchall_b5
    move-exception v9

    :try_start_b6
    monitor-exit v10
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v9
.end method
