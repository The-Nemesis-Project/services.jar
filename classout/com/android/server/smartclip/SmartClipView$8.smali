.class Lcom/android/server/smartclip/SmartClipView$8;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 1844
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z
    invoke-static {v8, v11}, Lcom/android/server/smartclip/SmartClipView;->access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 1847
    :try_start_6
    const-string v8, "SmartClipView"

    const-string v9, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1850
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1851
    .local v0, "boundsOfPath":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1852
    .local v1, "boundsOfSecondPath":Landroid/graphics/RectF;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1854
    .local v4, "cropImgSaveHandler":Landroid/os/Handler;
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3200(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v8

    if-ne v8, v11, :cond_9d

    .line 1855
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1857
    const-string v8, "SmartClipView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSPenEvent : boundsOfPath.right = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", boundsOfPath.left = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const-string v8, "SmartClipView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSPenEvent : boundsOfPath.bottom = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", boundsOfPath.top = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v0, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3402(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1863
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3502(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1864
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3602(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1865
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v0, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3702(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1868
    :cond_9d
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3800(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v8

    if-ne v8, v11, :cond_157

    .line 1869
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1871
    const-string v8, "SmartClipView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSPenEvent : boundsOfSecondPath.right = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", boundsOfSecondPath.left = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const-string v8, "SmartClipView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSPenEvent : boundsOfSecondPath.bottom = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", boundsOfSecondPath.top = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3200(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v8

    if-ne v8, v11, :cond_31a

    .line 1879
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_118

    .line 1880
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3402(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1881
    :cond_118
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_12d

    .line 1882
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3502(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1883
    :cond_12d
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_142

    .line 1884
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3602(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1885
    :cond_142
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_157

    .line 1886
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3702(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1896
    :cond_157
    :goto_157
    const-string v8, "SmartClipView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSPenEvent : mMaxCoordX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMinCoordX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v8, "SmartClipView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addSPenEvent : mMaxCoordY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMinCoordY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3402(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1903
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3502(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1904
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3602(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1905
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3702(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1907
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    sub-int/2addr v9, v10

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$4002(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1908
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    sub-int/2addr v9, v10

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$4102(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1910
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 1912
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # invokes: Lcom/android/server/smartclip/SmartClipView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$4200(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;

    .line 1914
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$4400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$4500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$4302(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1916
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$4400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$4500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$4602(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1919
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$4300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1920
    .local v3, "canvasForCrop":Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$4700(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1929
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$4000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$4100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$4802(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1931
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$4800(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1932
    .local v2, "canvasFinal":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$3500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$3400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/server/smartclip/SmartClipView;->access$3600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1933
    .local v7, "srcRectForCrop":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I
    invoke-static {v10}, Lcom/android/server/smartclip/SmartClipView;->access$4000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I
    invoke-static {v11}, Lcom/android/server/smartclip/SmartClipView;->access$4100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1934
    .local v5, "dstRectForCrop":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$4300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v7, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1974
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3400(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$4902(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1975
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3500(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$5002(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1976
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$5102(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1977
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v9, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v9}, Lcom/android/server/smartclip/SmartClipView;->access$3700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$5202(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1979
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->reset()V

    .line 1981
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # invokes: Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$5400(Lcom/android/server/smartclip/SmartClipView;)V

    .line 1982
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3202(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 1983
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3802(Lcom/android/server/smartclip/SmartClipView;Z)Z

    .line 1984
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$5502(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1986
    new-instance v8, Lcom/android/server/smartclip/SmartClipView$8$1;

    invoke-direct {v8, p0}, Lcom/android/server/smartclip/SmartClipView$8$1;-><init>(Lcom/android/server/smartclip/SmartClipView$8;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2015
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$5900(Lcom/android/server/smartclip/SmartClipView;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2018
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2024
    .end local v0    # "boundsOfPath":Landroid/graphics/RectF;
    .end local v1    # "boundsOfSecondPath":Landroid/graphics/RectF;
    .end local v2    # "canvasFinal":Landroid/graphics/Canvas;
    .end local v3    # "canvasForCrop":Landroid/graphics/Canvas;
    .end local v4    # "cropImgSaveHandler":Landroid/os/Handler;
    .end local v5    # "dstRectForCrop":Landroid/graphics/Rect;
    .end local v7    # "srcRectForCrop":Landroid/graphics/Rect;
    :goto_319
    return-void

    .line 1888
    .restart local v0    # "boundsOfPath":Landroid/graphics/RectF;
    .restart local v1    # "boundsOfSecondPath":Landroid/graphics/RectF;
    .restart local v4    # "cropImgSaveHandler":Landroid/os/Handler;
    :cond_31a
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3402(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1889
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3502(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1890
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3602(Lcom/android/server/smartclip/SmartClipView;I)I

    .line 1891
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v9, v1, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I
    invoke-static {v8, v9}, Lcom/android/server/smartclip/SmartClipView;->access$3702(Lcom/android/server/smartclip/SmartClipView;I)I
    :try_end_33a
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_33a} :catch_33c

    goto/16 :goto_157

    .line 2019
    .end local v0    # "boundsOfPath":Landroid/graphics/RectF;
    .end local v1    # "boundsOfSecondPath":Landroid/graphics/RectF;
    .end local v4    # "cropImgSaveHandler":Landroid/os/Handler;
    :catch_33c
    move-exception v6

    .line 2020
    .local v6, "e":Ljava/lang/InterruptedException;
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView$8;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/smartclip/SmartClipView;->access$5900(Lcom/android/server/smartclip/SmartClipView;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2021
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2022
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    goto :goto_319
.end method
