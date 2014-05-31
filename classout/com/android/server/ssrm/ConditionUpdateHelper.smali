.class public Lcom/android/server/ssrm/ConditionUpdateHelper;
.super Ljava/lang/Object;
.source "ConditionUpdateHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:ConditionUpdateHelper"

.field static mHelperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/ConditionUpdateHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCondition:Lcom/android/server/ssrm/settings/Condition;

.field mIsAppInList:Z

.field mIsEnable:Z

.field mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSsrmStatusValue:Z

.field mStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "conditionName"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mStatusList:Ljava/util/List;

    .line 37
    iput-boolean p2, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    .line 38
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    if-eqz v0, :cond_27

    if-eqz p2, :cond_27

    .line 39
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 41
    :cond_27
    return-void
.end method

.method static getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;
    .registers 4
    .param p0, "conditionName"    # Ljava/lang/String;
    .param p1, "isEnable"    # Z

    .prologue
    .line 44
    new-instance v0, Lcom/android/server/ssrm/ConditionUpdateHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;-><init>(Ljava/lang/String;Z)V

    .line 45
    .local v0, "instance":Lcom/android/server/ssrm/ConditionUpdateHelper;
    sget-object v1, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method

.method static onForegroundActivitiesChanged(Ljava/lang/String;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v2, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/ConditionUpdateHelper;

    .line 95
    .local v0, "helper":Lcom/android/server/ssrm/ConditionUpdateHelper;
    iget-boolean v2, v0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    if-eqz v2, :cond_6

    .line 96
    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onForegroundActivitiesChangedInternal(Ljava/lang/String;)V

    goto :goto_6

    .line 99
    .end local v0    # "helper":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_1a
    return-void
.end method

.method public static onSsrmStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "statusName"    # Ljava/lang/String;
    .param p1, "statusValue"    # Z

    .prologue
    .line 102
    sget-object v2, Lcom/android/server/ssrm/ConditionUpdateHelper;->mHelperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/ConditionUpdateHelper;

    .line 103
    .local v0, "helper":Lcom/android/server/ssrm/ConditionUpdateHelper;
    iget-boolean v2, v0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsEnable:Z

    if-eqz v2, :cond_6

    .line 104
    invoke-virtual {v0, p0, p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChangedInternal(Ljava/lang/String;Z)V

    goto :goto_6

    .line 107
    .end local v0    # "helper":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_1a
    return-void
.end method


# virtual methods
.method addPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method addPackageNameList([Ljava/lang/String;)V
    .registers 7
    .param p1, "packageNameList"    # [Ljava/lang/String;

    .prologue
    .line 54
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 55
    .local v3, "mList":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 57
    .end local v3    # "mList":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method addStatusName(Ljava/lang/String;)V
    .registers 3
    .param p1, "statusName"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mStatusList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method onForegroundActivitiesChangedInternal(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    iput-boolean v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    .line 67
    iget-object v5, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "packageName_":Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 70
    :cond_24
    iput-boolean v4, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    .line 74
    .end local v2    # "packageName_":Ljava/lang/String;
    :cond_26
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    .line 75
    .local v1, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-object v5, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v6, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    if-nez v6, :cond_34

    iget-boolean v6, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mSsrmStatusValue:Z

    if-eqz v6, :cond_35

    :cond_34
    move v3, v4

    :cond_35
    invoke-virtual {v1, v5, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 76
    return-void
.end method

.method onSsrmStatusChangedInternal(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z

    .prologue
    .line 81
    iget-object v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mStatusList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "statusName_":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    iput-boolean p2, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mSsrmStatusValue:Z

    .line 87
    .end local v2    # "statusName_":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    .line 88
    .local v1, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-object v4, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mSsrmStatusValue:Z

    if-nez v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/server/ssrm/ConditionUpdateHelper;->mIsAppInList:Z

    if-eqz v3, :cond_2f

    :cond_2a
    const/4 v3, 0x1

    :goto_2b
    invoke-virtual {v1, v4, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 89
    return-void

    .line 88
    :cond_2f
    const/4 v3, 0x0

    goto :goto_2b
.end method
