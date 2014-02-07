.class public interface abstract Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;
.super Ljava/lang/Object;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onContentsSizeChange(Landroid/graphics/Rect;)V
.end method

.method public abstract onFocusTabChange(Ljava/lang/Object;Z)V
.end method

.method public abstract onModeChange(I)V
.end method

.method public abstract onOrientationChange(I)V
.end method

.method public abstract onTabItemChange(Ljava/lang/Object;I)V
.end method

.method public abstract onUiStatusChange(I)V
.end method
