.class Lcom/android/server/sec/ClippedDataPickerDialog$9;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->IsSetProtectAction(I)V
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
    .line 1360
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$9;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 1362
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$9;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 1363
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$9;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sec/TwSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    .line 1364
    .local v1, "handle":Landroid/view/View;
    if-eqz v1, :cond_34

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_34

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_34

    .line 1365
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "handle":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1366
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_34

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_34

    .line 1367
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    .end local v0    # "divider":Landroid/view/View;
    :cond_34
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$9;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1372
    return-void
.end method
