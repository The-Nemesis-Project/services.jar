.class public interface abstract Lcom/android/server/display/SideSyncDisplayController$Listener;
.super Ljava/lang/Object;
.source "SideSyncDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SideSyncDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end method

.method public abstract onDisplayConnectionFailed()V
.end method

.method public abstract onDisplayDisconnected()V
.end method
