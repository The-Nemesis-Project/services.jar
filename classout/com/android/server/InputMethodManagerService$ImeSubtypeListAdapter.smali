.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mSwitchingDialogAllListItemEnabled:Z


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4079
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4083
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4084
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 4085
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 4086
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4087
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4088
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 4127
    sget-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 4092
    if-eqz p2, :cond_f

    move-object v6, p2

    .line 4094
    .local v6, "view":Landroid/view/View;
    :goto_4
    if-ltz p1, :cond_e

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_19

    .line 4118
    :cond_e
    :goto_e
    return-object v6

    .line 4092
    .end local v6    # "view":Landroid/view/View;
    :cond_f
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_4

    .line 4095
    .restart local v6    # "view":Landroid/view/View;
    :cond_19
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 4096
    .local v2, "item":Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v1, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 4097
    .local v1, "imeName":Ljava/lang/CharSequence;
    iget-object v5, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 4098
    .local v5, "subtypeName":Ljava/lang/CharSequence;
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4099
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4100
    .local v4, "secondTextView":Landroid/widget/TextView;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 4101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4102
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4108
    :goto_45
    const v7, 0x10203e7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 4110
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v7, :cond_6e

    const/4 v7, 0x1

    :goto_53
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4112
    sget-boolean v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    if-nez v7, :cond_e

    .line 4114
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4115
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4116
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_e

    .line 4104
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_64
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4105
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4106
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_45

    .restart local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_6e
    move v7, v8

    .line 4110
    goto :goto_53
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 4136
    sget-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return v0
.end method

.method public setAllListItemEnabled(Z)V
    .registers 2
    .param p1, "bSet"    # Z

    .prologue
    .line 4142
    sput-boolean p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    .line 4144
    return-void
.end method

.method public setAllListItemEnabled(ZLandroid/view/View;)V
    .registers 9
    .param p1, "bSet"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4149
    sput-boolean p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    .line 4151
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4152
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4153
    .local v2, "secondTextView":Landroid/widget/TextView;
    const v3, 0x10203e7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 4156
    .local v1, "radioButton":Landroid/widget/RadioButton;
    if-eqz v0, :cond_32

    if-eqz v2, :cond_32

    if-eqz v1, :cond_32

    .line 4159
    sget-boolean v3, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    if-nez v3, :cond_33

    .line 4160
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4161
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4162
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 4170
    :cond_32
    :goto_32
    return-void

    .line 4164
    :cond_33
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4165
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4166
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_32
.end method
