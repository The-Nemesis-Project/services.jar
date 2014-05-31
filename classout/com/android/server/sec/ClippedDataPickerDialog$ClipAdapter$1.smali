.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V
    .registers 2

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2045
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-boolean v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    if-eqz v2, :cond_9

    .line 2065
    :goto_8
    return-void

    .line 2050
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/ClippedDataPickerGridView;->getPositionForView(Landroid/view/View;)I
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_12} :catch_2c

    move-result v1

    .line 2058
    .local v1, "index":I
    :try_start_13
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/sec/clipboard/IClipboardDataUiEvent;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_8

    .line 2059
    :catch_27
    move-exception v0

    .line 2061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 2051
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    :catch_2c
    move-exception v0

    .line 2052
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_8
.end method
