.class Lcom/android/server/am/MultiWindowManagerService$1;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 2

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "isNeedAdditionalAnimation":Z
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_17

    .line 585
    const-string v7, "MultiWindowManagerService"

    const-string v8, "mShiftPosition mCurrMovements.size=0 reuturn"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_16
    :goto_16
    return-void

    .line 589
    :cond_17
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5a

    .line 590
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$Movement;

    .line 591
    .local v0, "currMovements":Lcom/android/server/am/MultiWindowManagerService$Movement;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 593
    if-eqz v0, :cond_5a

    .line 594
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v8, v0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iput v8, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    .line 595
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v8, v0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    iput v8, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    .line 599
    .end local v0    # "currMovements":Lcom/android/server/am/MultiWindowManagerService$Movement;
    :cond_5a
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 600
    .local v4, "size":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v4, v7, :cond_76

    .line 601
    const-string v7, "MultiWindowManagerService"

    const-string v8, "mShiftPosition mMinimizeCallbacks and mCurrMovements are size different"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 604
    :cond_76
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_78
    if-lez v1, :cond_17a

    .line 605
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_9e

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_108

    .line 606
    :cond_9e
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v5, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    .line 607
    .local v5, "token":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityStack;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 608
    .local v6, "winInfo":Landroid/os/Bundle;
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 609
    .local v3, "lastSize":Landroid/graphics/Rect;
    if-eqz v3, :cond_ec

    .line 610
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    float-to-int v8, v7

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    float-to-int v7, v7

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 611
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/am/ActivityStack;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 613
    :cond_ec
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v11, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    .line 614
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v11, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    .line 617
    .end local v3    # "lastSize":Landroid/graphics/Rect;
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    :cond_108
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_143

    .line 618
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v8, v8, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I
    invoke-static {v9}, Lcom/android/server/am/MultiWindowManagerService;->access$300(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    .line 619
    const/4 v2, 0x1

    .line 621
    :cond_143
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_176

    .line 622
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v8, v8, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    iput v8, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    .line 623
    const/4 v2, 0x1

    .line 604
    :cond_176
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_78

    .line 627
    :cond_17a
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_19e

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_214

    .line 628
    :cond_19e
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 629
    .restart local v6    # "winInfo":Landroid/os/Bundle;
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 630
    .restart local v3    # "lastSize":Landroid/graphics/Rect;
    if-eqz v3, :cond_1f8

    .line 631
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    float-to-int v8, v7

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v7, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    float-to-int v7, v7

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 632
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/am/ActivityStack;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 634
    :cond_1f8
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v11, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    .line 635
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v11, v7, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    .line 637
    .end local v3    # "lastSize":Landroid/graphics/Rect;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    :cond_214
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v7

    if-nez v7, :cond_21e

    if-eqz v2, :cond_16

    .line 638
    :cond_21e
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v8, v8, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_16
.end method
