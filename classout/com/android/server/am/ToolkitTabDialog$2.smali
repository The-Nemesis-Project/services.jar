.class Lcom/android/server/am/ToolkitTabDialog$2;
.super Ljava/lang/Object;
.source "ToolkitTabDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$2;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    const/4 v0, 0x1

    return v0
.end method
