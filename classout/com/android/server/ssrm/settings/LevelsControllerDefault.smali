.class public Lcom/android/server/ssrm/settings/LevelsControllerDefault;
.super Lcom/android/server/ssrm/settings/LevelsController;
.source "LevelsControllerDefault.java"


# instance fields
.field protected mLevelsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/LevelsController;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionSignaled(Lcom/android/server/ssrm/settings/Condition;Lcom/android/server/ssrm/settings/SortedArrayList;Z)V
    .registers 15
    .param p1, "condition"    # Lcom/android/server/ssrm/settings/Condition;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Condition;",
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "levels":Lcom/android/server/ssrm/settings/SortedArrayList;, "Lcom/android/server/ssrm/settings/SortedArrayList<Lcom/android/server/ssrm/settings/Level;>;"
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/SortedArrayList;->size()I

    move-result v2

    .line 101
    .local v2, "countLevels":I
    const/4 v7, 0x0

    .line 102
    .local v7, "traverseNeeded":Z
    add-int/lit8 v4, v2, -0x1

    .local v4, "ii":I
    :goto_7
    if-ltz v4, :cond_4a

    .line 103
    invoke-virtual {p2, v4}, Lcom/android/server/ssrm/settings/SortedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/settings/Level;

    .line 104
    .local v6, "level":Lcom/android/server/ssrm/settings/Level;
    invoke-virtual {v6}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Condition;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 106
    .local v1, "count":I
    const/4 v8, 0x0

    .line 107
    .local v8, "triggeredConditions":I
    const/4 v5, 0x0

    .local v5, "jj":I
    :goto_19
    if-ge v5, v1, :cond_2e

    .line 108
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v9}, Lcom/android/server/ssrm/settings/Condition;->signaled()Z

    move-result v9

    if-eqz v9, :cond_2c

    const/4 v9, 0x1

    :goto_28
    add-int/2addr v8, v9

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 108
    :cond_2c
    const/4 v9, 0x0

    goto :goto_28

    .line 111
    :cond_2e
    if-ne v1, v8, :cond_3f

    .line 112
    const/4 v9, -0x1

    iget v10, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {v6, v9, v10}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    .line 113
    iget-object v9, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v9, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v7, 0x1

    .line 102
    :goto_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 116
    :cond_3f
    iget-object v9, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v9, v6}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 117
    .local v3, "deleted":Z
    if-eqz v7, :cond_48

    :goto_47
    goto :goto_3c

    :cond_48
    move v7, v3

    goto :goto_47

    .line 121
    .end local v0    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Condition;>;"
    .end local v1    # "count":I
    .end local v3    # "deleted":Z
    .end local v5    # "jj":I
    .end local v6    # "level":Lcom/android/server/ssrm/settings/Level;
    .end local v8    # "triggeredConditions":I
    :cond_4a
    if-eqz v7, :cond_4f

    .line 122
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->traverseLevels()V

    .line 124
    :cond_4f
    return-void
.end method

.method protected onInitialize()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    .line 40
    return-void
.end method

.method protected onTemperatureChanged(II)V
    .registers 6
    .param p1, "oldTemperature"    # I
    .param p2, "newTemperature"    # I

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    .line 61
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "ii":I
    :goto_8
    if-ltz v1, :cond_18

    .line 62
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 65
    :cond_18
    if-lez v0, :cond_1d

    .line 66
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->traverseLevels()V

    .line 68
    :cond_1d
    return-void
.end method

.method public removeLevel(Lcom/android/server/ssrm/settings/Level;)V
    .registers 3
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->removeLevel(Lcom/android/server/ssrm/settings/Level;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->traverseLevels()V

    .line 48
    :cond_e
    return-void
.end method

.method setDefaultLevel(Lcom/android/server/ssrm/settings/Level;)V
    .registers 3
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "DEBUG":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/ssrm/settings/LevelsController;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_11

    .line 132
    const-string v6, "ACTIVE LEVELS:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_11
    const/4 v4, 0x0

    .line 137
    .local v4, "lvl":Lcom/android/server/ssrm/settings/Level;
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 138
    .local v3, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Level;>;"
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 139
    .local v2, "lastPos":I
    move v1, v2

    .local v1, "i":I
    :goto_23
    if-ltz v1, :cond_3c

    .line 140
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "lvl":Lcom/android/server/ssrm/settings/Level;
    check-cast v4, Lcom/android/server/ssrm/settings/Level;

    .line 141
    .restart local v4    # "lvl":Lcom/android/server/ssrm/settings/Level;
    if-eqz v0, :cond_39

    .line 142
    invoke-virtual {v4}, Lcom/android/server/ssrm/settings/Level;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 145
    :cond_3c
    if-eqz v0, :cond_48

    .line 146
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_43
    :goto_43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 148
    :cond_48
    if-eqz v4, :cond_43

    .line 149
    invoke-virtual {v4}, Lcom/android/server/ssrm/settings/Level;->dumpStateChangeData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43
.end method

.method protected declared-synchronized traverseLevels()V
    .registers 6

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v1

    .line 78
    .local v1, "count":I
    if-lez v1, :cond_29

    .line 79
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->startSettingsWriting()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    .line 85
    add-int/lit8 v2, v1, -0x1

    .local v2, "ii":I
    :goto_e
    if-ltz v2, :cond_26

    .line 86
    :try_start_10
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->mLevelsStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/settings/Level;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/Level;->getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v0

    .line 87
    .local v0, "battState":Lcom/android/server/ssrm/settings/BatteryState;
    if-eqz v0, :cond_22

    .line 88
    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->writeSettings()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_25
    .catchall {:try_start_10 .. :try_end_22} :catchall_2b

    .line 85
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 91
    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    :catch_25
    move-exception v3

    .line 93
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsControllerDefault;->stopSettingsWritingAndApply()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    .line 95
    .end local v2    # "ii":I
    :cond_29
    monitor-exit p0

    return-void

    .line 77
    .end local v1    # "count":I
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method
