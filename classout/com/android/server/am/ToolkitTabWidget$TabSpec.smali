.class Lcom/android/server/am/ToolkitTabWidget$TabSpec;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mObject:Ljava/lang/Object;

.field private mPermanent:Z

.field private mbLongPress:Z

.field private mbTop:Z

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabWidget;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
    .registers 8
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "permanent"    # Z

    .prologue
    const/4 v0, 0x0

    .line 265
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z

    .line 260
    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    .line 261
    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z

    .line 266
    iput-object p2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 267
    iput-object p3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;

    .line 268
    iput-boolean p4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z

    .line 269
    new-instance v0, Landroid/view/GestureDetector;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabWidget;->access$100(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Lcom/android/server/am/ToolkitTabWidget;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mGestureDetector:Landroid/view/GestureDetector;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZLcom/android/server/am/ToolkitTabWidget$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/android/server/am/ToolkitTabWidget;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/android/server/am/ToolkitTabWidget$1;

    .prologue
    .line 254
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .param p1, "x1"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->showContextMenu()V

    return-void
.end method

.method private showContextMenu()V
    .registers 7

    .prologue
    .line 429
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const-string v5, "Remove this tab"

    aput-object v5, v2, v4

    .line 430
    .local v2, "items":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitTabWidget;->notifyLongPressItem()V

    .line 431
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabWidget;->access$1300(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;

    invoke-direct {v4, p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 445
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 446
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 447
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 448
    return-void
.end method


# virtual methods
.method public changeConfiguration(Z)V
    .registers 6
    .param p1, "bTop"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    .line 356
    if-eqz p1, :cond_72

    .line 357
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080926

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 362
    :goto_17
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I
    invoke-static {v3}, Lcom/android/server/am/ToolkitTabWidget;->access$600(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setBackgroundDrawableDirection(I)V

    .line 364
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 367
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_46

    .line 368
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$700(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$800(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->requestLayout()V

    .line 373
    :cond_46
    const/4 v0, 0x0

    .line 374
    .local v0, "imageView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_56

    .line 375
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 378
    :cond_56
    if-eqz v0, :cond_71

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mAppIconWidth:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$900(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mAppIconHeight:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$1000(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 382
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    :cond_71
    return-void

    .line 359
    .end local v0    # "imageView":Landroid/view/View;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_72
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080925

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 344
    if-eqz p1, :cond_7

    instance-of v2, p1, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-nez v2, :cond_8

    .line 351
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 347
    check-cast v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 348
    .local v0, "arg":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 349
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 389
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    if-eqz v1, :cond_8

    .line 390
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    .line 425
    :goto_7
    return-object v1

    .line 393
    :cond_8
    new-instance v1, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    .line 394
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I
    invoke-static {v3}, Lcom/android/server/am/ToolkitTabWidget;->access$700(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabWidget;->access$800(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I
    invoke-static {v3}, Lcom/android/server/am/ToolkitTabWidget;->access$700(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    # getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabWidget;->access$800(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setGravity(I)V

    .line 399
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_71

    .line 400
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080925

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 402
    :cond_71
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setEnabled(Z)V

    .line 404
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setClickable(Z)V

    .line 405
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setFocusable(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setFocusableInTouchMode(Z)V

    .line 408
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 425
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    goto/16 :goto_7
.end method

.method public requestFocus(Z)V
    .registers 3
    .param p1, "bFocus"    # Z

    .prologue
    .line 334
    if-eqz p1, :cond_a

    .line 335
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 340
    :goto_9
    return-void

    .line 337
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_9
.end method

.method public updateTopItemBackground(Z)V
    .registers 4
    .param p1, "bTop"    # Z

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    if-ne v0, p1, :cond_5

    .line 326
    :goto_4
    return-void

    .line 319
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    .line 320
    if-eqz p1, :cond_24

    .line 321
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080926

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 325
    :goto_1c
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 323
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080925

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1c
.end method
