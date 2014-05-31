.class Lcom/android/server/sec/ClippedDataPickerDialog$3;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 2

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .registers 3

    .prologue
    .line 603
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "called setOnDrawerCloseListener.onDrawerClosed()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_b
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 606
    return-void
.end method
