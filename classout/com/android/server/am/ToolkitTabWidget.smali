.class public Lcom/android/server/am/ToolkitTabWidget;
.super Landroid/widget/LinearLayout;
.source "ToolkitTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ToolkitTabWidget$1;,
        Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;,
        Lcom/android/server/am/ToolkitTabWidget$TabSpec;,
        Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToolkitTabWidget"


# instance fields
.field private mAppIconHeight:I

.field private mAppIconWidth:I

.field private mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

.field private mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mTabSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ToolkitTabWidget$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

.field private mWindowGravity:I

.field private mWindowMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    .line 59
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    .line 63
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/ToolkitTabWidget;Ljava/lang/Object;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget;->notifyFocusChange(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/ToolkitTabWidget;Ljava/lang/Object;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget;->notifyTabItemChange(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/am/ToolkitTabWidget;Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;
    .param p1, "x1"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ToolkitTabWidget;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconWidth:I

    return v0
.end method

.method private findTabSpec(Ljava/lang/Object;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 200
    .local v1, "tabSpec":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 204
    .end local v1    # "tabSpec":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabWidget;->setShowDividers(I)V

    .line 183
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/server/am/ToolkitTabWidget;->setPadding(IIII)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/server/am/ToolkitTabWidget;->setWillNotDraw(Z)V

    .line 185
    return-void
.end method

.method private notifyFocusChange(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "mObject"    # Ljava/lang/Object;
    .param p2, "bFocus"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onFocusChange(Ljava/lang/Object;Z)V

    .line 241
    :cond_9
    return-void
.end method

.method private notifyTabItemChange(Ljava/lang/Object;I)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "toolkitItemStatus"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onTabItemChange(Ljava/lang/Object;I)V

    .line 246
    :cond_9
    return-void
.end method

.method private notifyToogle()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onToggle()V

    .line 236
    :cond_9
    return-void
.end method

.method private updateTopItemBackground()V
    .registers 6

    .prologue
    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, "bTop":Z
    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 91
    :cond_6
    return-void

    .line 83
    :cond_7
    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/16 v4, 0x50

    if-eq v3, v4, :cond_6

    .line 87
    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 88
    .local v2, "tabSpec":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->updateTopItemBackground(Z)V

    .line 89
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public addTab(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 3
    .param p1, "tabSpec"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabWidget;->addView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->updateTopItemBackground()V

    .line 76
    return-void
.end method

.method public changeConfiguration(IIIIIIZ)V
    .registers 13
    .param p1, "gravity"    # I
    .param p2, "mode"    # I
    .param p3, "itemWidth"    # I
    .param p4, "itemHeight"    # I
    .param p5, "appIconWidth"    # I
    .param p6, "appIconHeight"    # I
    .param p7, "bScroll"    # Z

    .prologue
    const/4 v4, 0x1

    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "bTop":Z
    iput p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    .line 141
    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    sparse-switch v3, :sswitch_data_42

    .line 153
    :goto_9
    if-eqz p7, :cond_c

    .line 154
    const/4 v0, 0x0

    .line 157
    :cond_c
    iput p2, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    .line 158
    iput p3, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I

    .line 159
    iput p4, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I

    .line 160
    iput p5, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconWidth:I

    .line 161
    iput p6, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconHeight:I

    .line 163
    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 164
    .local v2, "tabSpec":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->changeConfiguration(Z)V

    .line 165
    const/4 v0, 0x0

    goto :goto_1c

    .line 144
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tabSpec":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    :sswitch_2d
    const/4 v0, 0x0

    .line 145
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ToolkitTabWidget;->setOrientation(I)V

    goto :goto_9

    .line 150
    :sswitch_33
    invoke-virtual {p0, v4}, Lcom/android/server/am/ToolkitTabWidget;->setOrientation(I)V

    goto :goto_9

    .line 167
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_37
    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-eqz v3, :cond_40

    .line 168
    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    .line 170
    :cond_40
    return-void

    .line 141
    nop

    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_33
        0x5 -> :sswitch_33
        0x30 -> :sswitch_2d
        0x50 -> :sswitch_2d
    .end sparse-switch
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public newTabSpec(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .registers 10
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "permanent"    # Z

    .prologue
    .line 68
    new-instance v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZLcom/android/server/am/ToolkitTabWidget$1;)V

    return-object v0
.end method

.method public notifyLongPressItem()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onLongPressItem()V

    .line 251
    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 211
    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    packed-switch v0, :pswitch_data_50

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    return-void

    .line 213
    :pswitch_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 214
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    .line 211
    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method

.method public removeTab(Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabWidget;->findTabSpec(Ljava/lang/Object;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    move-result-object v0

    .line 95
    .local v0, "tabSpec":Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    if-nez v0, :cond_1f

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not found in tab list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ToolkitTabWidget;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->updateTopItemBackground()V

    .line 101
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v0, "padding":Landroid/graphics/Rect;
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 192
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ToolkitTabWidget;->setPadding(IIII)V

    .line 196
    :goto_1f
    return-void

    .line 194
    :cond_20
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/server/am/ToolkitTabWidget;->setPadding(IIII)V

    goto :goto_1f
.end method

.method public setFocusItem(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 3
    .param p1, "item"    # Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-ne v0, p1, :cond_8

    .line 127
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->notifyToogle()V

    .line 135
    :goto_7
    return-void

    .line 133
    :cond_8
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    goto :goto_7
.end method

.method public setFocusItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p1, :cond_10

    .line 105
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 123
    :cond_f
    :goto_f
    return-void

    .line 111
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-eqz v0, :cond_21

    .line 112
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_f

    .line 115
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    .line 118
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabWidget;->findTabSpec(Ljava/lang/Object;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    .line 119
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-nez v0, :cond_44

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not found in tab list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_44
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    goto :goto_f
.end method

.method public setOnToolkitTabItemListener(Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;)V
    .registers 2
    .param p1, "tabItemToolkitTabItemListener"    # Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    .line 174
    return-void
.end method
