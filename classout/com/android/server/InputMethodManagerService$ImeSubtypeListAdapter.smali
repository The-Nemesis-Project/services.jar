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
    .line 4776
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
    .line 4780
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4781
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 4782
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 4783
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4784
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4785
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 4827
    sget-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 4789
    if-eqz p2, :cond_11

    move-object v6, p2

    .line 4791
    .local v6, "view":Landroid/view/View;
    :goto_6
    if-ltz p1, :cond_10

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_1b

    .line 4818
    :cond_10
    :goto_10
    return-object v6

    .line 4789
    .end local v6    # "view":Landroid/view/View;
    :cond_11
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_6

    .line 4792
    .restart local v6    # "view":Landroid/view/View;
    :cond_1b
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 4793
    .local v2, "item":Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v1, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 4794
    .local v1, "imeName":Ljava/lang/CharSequence;
    iget-object v5, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 4795
    .local v5, "subtypeName":Ljava/lang/CharSequence;
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4796
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4797
    .local v4, "secondTextView":Landroid/widget/TextView;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 4798
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4799
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4808
    :goto_45
    const v7, 0x1020346

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 4810
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget v7, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v7, :cond_83

    const/4 v7, 0x1

    :goto_53
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4812
    sget-boolean v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    if-nez v7, :cond_10

    .line 4814
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4815
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4816
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_10

    .line 4800
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_64
    iget-object v7, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.sec.android.inputmethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 4801
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4802
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_45

    .line 4804
    :cond_79
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4805
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4806
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_45

    .restart local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_83
    move v7, v8

    .line 4810
    goto :goto_53
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 4836
    sget-boolean v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    return v0
.end method

.method public setAllListItemEnabled(Z)V
    .registers 2
    .param p1, "bSet"    # Z

    .prologue
    .line 4842
    sput-boolean p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    .line 4844
    return-void
.end method

.method public setAllListItemEnabled(ZLandroid/view/View;)V
    .registers 9
    .param p1, "bSet"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4849
    sput-boolean p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    .line 4851
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4852
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4853
    .local v2, "secondTextView":Landroid/widget/TextView;
    const v3, 0x1020346

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 4856
    .local v1, "radioButton":Landroid/widget/RadioButton;
    if-eqz v0, :cond_32

    if-eqz v2, :cond_32

    if-eqz v1, :cond_32

    .line 4859
    sget-boolean v3, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mSwitchingDialogAllListItemEnabled:Z

    if-nez v3, :cond_33

    .line 4860
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4861
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4862
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 4870
    :cond_32
    :goto_32
    return-void

    .line 4864
    :cond_33
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4865
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4866
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_32
.end method
