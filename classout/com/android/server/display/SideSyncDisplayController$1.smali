.class Lcom/android/server/display/SideSyncDisplayController$1;
.super Landroid/content/BroadcastReceiver;
.source "SideSyncDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SideSyncDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayController;

.field windowOrientation:I

.field wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayController;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setCurrentDisplayRotation(I)V
    .registers 13
    .param p1, "windowOrientation"    # I

    .prologue
    .line 124
    :try_start_0
    const-string v7, "android.media.RemoteDisplay"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "clazz":Ljava/lang/Class;
    const-string v7, "setParam"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 126
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    iget-object v10, v10, Lcom/android/server/display/SideSyncDisplayController;->orientationDegrees:[I

    aget v10, v10, p1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 127
    .local v6, "result":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setParam is called with current orientation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    iget-object v9, v9, Lcom/android/server/display/SideSyncDisplayController;->orientationDegrees:[I

    aget v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_59} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_59} :catch_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_59} :catch_74
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_59} :catch_81

    .line 141
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "result":Ljava/lang/Object;
    :goto_59
    return-void

    .line 129
    :catch_5a
    move-exception v1

    .line 130
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    iget-object v7, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RemoteDisplay is not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 132
    .end local v1    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_67
    move-exception v2

    .line 133
    .local v2, "e3":Ljava/lang/IllegalAccessException;
    iget-object v7, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IllegalAccessException is occured!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 135
    .end local v2    # "e3":Ljava/lang/IllegalAccessException;
    :catch_74
    move-exception v3

    .line 136
    .local v3, "e4":Ljava/lang/reflect/InvocationTargetException;
    iget-object v7, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "InvocationTargetException is occured!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 138
    .end local v3    # "e4":Ljava/lang/reflect/InvocationTargetException;
    :catch_81
    move-exception v4

    .line 139
    .local v4, "e5":Ljava/lang/NoSuchMethodException;
    iget-object v7, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NoSuchMethodException is occured!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    if-nez p2, :cond_3

    .line 120
    :cond_2
    :goto_2
    return-void

    .line 101
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$100(Lcom/android/server/display/SideSyncDisplayController;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_47

    .line 105
    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sidesync is not running! unregister the receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$300(Lcom/android/server/display/SideSyncDisplayController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/SideSyncDisplayController$1;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/display/SideSyncDisplayController;->access$200(Lcom/android/server/display/SideSyncDisplayController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2

    .line 110
    :cond_47
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->wm:Landroid/view/WindowManager;

    .line 111
    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->windowOrientation:I

    .line 112
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 113
    iget v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->windowOrientation:I

    invoke-direct {p0, v2}, Lcom/android/server/display/SideSyncDisplayController$1;->setCurrentDisplayRotation(I)V

    goto :goto_2

    .line 114
    :cond_6b
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 117
    iget v2, p0, Lcom/android/server/display/SideSyncDisplayController$1;->windowOrientation:I

    invoke-direct {p0, v2}, Lcom/android/server/display/SideSyncDisplayController$1;->setCurrentDisplayRotation(I)V

    goto :goto_2
.end method
