.class Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
