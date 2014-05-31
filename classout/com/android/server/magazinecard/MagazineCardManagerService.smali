.class public Lcom/android/server/magazinecard/MagazineCardManagerService;
.super Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;
.source "MagazineCardManagerService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCardRecordArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastAllocatedRecordId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "MagazineCardManagerService"

    sput-object v0, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    const-string v1, "MagazineCardManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    const-string v1, "MagazineCardManagerService(Context, WindowManagerService)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private findRecordIndex(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "magazineCardInfoId"    # I

    .prologue
    .line 65
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 66
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_24

    .line 67
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 68
    .local v1, "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    if-ne v3, p2, :cond_21

    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 72
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :goto_20
    return v0

    .line 66
    .restart local v0    # "i":I
    .restart local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 72
    .end local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_24
    const/4 v0, -0x1

    goto :goto_20
.end method

.method private getNewRecordId()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    .line 60
    iget v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    return v0
.end method

.method private sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 7
    .param p1, "command"    # I
    .param p2, "cardRecord"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 81
    sget-object v1, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCardUpdatedNotification : CMD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cardId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.system.action.MAGAZINE_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "card"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method


# virtual methods
.method public addCard(Landroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 118
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 119
    :cond_4
    sget-object v3, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    const-string v4, "addCard : empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_b
    return-void

    .line 123
    :cond_c
    sget-object v3, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cardId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v3, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(Landroid/content/ComponentName;I)I

    move-result v1

    .line 127
    .local v1, "recordIndex":I
    if-ltz v1, :cond_44

    .line 128
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 129
    .local v2, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    .line 132
    .end local v2    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_44
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->getNewRecordId()I

    move-result v3

    invoke-direct {v0, v3, p2, p1}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V

    .line 133
    .local v0, "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_b
.end method

.method public getAllCard()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .registers 5
    .param p1, "cardRecordId"    # I

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 108
    .local v0, "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget v2, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    if-ne v2, p1, :cond_6

    .line 112
    .end local v0    # "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getCards(IZ)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "securityMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCardExist(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "cardId"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(Landroid/content/ComponentName;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    const/4 v0, 0x1

    .line 205
    .local v0, "isExist":Z
    :goto_8
    sget-object v1, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cardId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Existance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v0

    .line 204
    .end local v0    # "isExist":Z
    :cond_35
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public removeAllCard(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 187
    sget-object v4, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAllCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 190
    .local v2, "recordCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_42

    .line 191
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 192
    .local v1, "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v4, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    .line 193
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 194
    .local v3, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    .line 190
    .end local v3    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 197
    .end local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_42
    return-void
.end method

.method public removeCard(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "cardId"    # I

    .prologue
    .line 171
    sget-object v3, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cardId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "isDeleted":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(Landroid/content/ComponentName;I)I

    move-result v1

    .line 176
    .local v1, "recordIndex":I
    if-ltz v1, :cond_36

    .line 177
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 178
    .local v2, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    .line 182
    .end local v2    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :goto_35
    return-void

    .line 180
    :cond_36
    sget-object v3, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCard : Cannot find the card : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public updateCard(Landroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 140
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 141
    :cond_4
    sget-object v4, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateCard : empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_c
    return-void

    .line 145
    :cond_d
    sget-object v4, Lcom/android/server/magazinecard/MagazineCardManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cardId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v4, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(Landroid/content/ComponentName;I)I

    move-result v2

    .line 149
    .local v2, "recordIndex":I
    const/4 v1, -0x1

    .line 150
    .local v1, "recordId":I
    if-ltz v2, :cond_45

    .line 151
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 152
    .local v3, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget v1, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    .line 154
    .end local v3    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_45
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4c

    .line 155
    invoke-direct {p0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->getNewRecordId()I

    move-result v1

    .line 158
    :cond_4c
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {v0, v1, p2, p1}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V

    .line 159
    .local v0, "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    if-ltz v2, :cond_5d

    .line 160
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    :goto_58
    const/4 v4, 0x2

    invoke-direct {p0, v4, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_c

    .line 162
    :cond_5d
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_58
.end method
