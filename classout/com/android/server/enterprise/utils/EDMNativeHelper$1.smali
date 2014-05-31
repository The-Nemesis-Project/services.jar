.class final Lcom/android/server/enterprise/utils/EDMNativeHelper$1;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/EDMNativeHelper;->initService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 76
    :try_start_0
    const-string v1, "edmnativehelperservice"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_f

    .line 82
    :goto_5
    return-void

    .line 77
    :catch_6
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v2, "UnsatisfiedLinkError: Could not load libedmnativehelperservice.so"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 79
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_f
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v2, "Exception: Could not load libedmnativehelperservice.so"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
