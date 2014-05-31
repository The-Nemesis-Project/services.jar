.class Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;
.super Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LevelTagAction"
.end annotation


# instance fields
.field private mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

.field private mIsCompoundLevel:Z

.field private mIsDefaultLevel:Z

.field private mLevel:Lcom/android/server/ssrm/settings/Level;

.field private mLevelConditionName:Ljava/lang/String;

.field private final mLevelConditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V
    .registers 3

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    .line 424
    const-string v0, "level"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    .line 426
    return-void
.end method


# virtual methods
.method handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 508
    const-string/jumbo v0, "state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 509
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/Level;->addBatteryState(Lcom/android/server/ssrm/settings/BatteryState;)V

    .line 511
    :cond_10
    return-void
.end method

.method handleEndTag()V
    .registers 5

    .prologue
    .line 515
    iget-boolean v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    if-eqz v1, :cond_12

    .line 516
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V

    .line 526
    :goto_11
    return-void

    .line 518
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    if-eqz v1, :cond_24

    .line 519
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    goto :goto_11

    .line 522
    :cond_24
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    .line 523
    .local v0, "cond":Lcom/android/server/ssrm/settings/Condition;
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v12, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "errorMsg":Ljava/lang/String;
    const-string v11, "condition"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 442
    iget-boolean v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    if-eqz v11, :cond_10

    .line 443
    const-string v1, "Default level contains <condition> or <DependsOnConditions>."

    .line 446
    :cond_10
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    if-eqz v11, :cond_16

    .line 447
    const-string v1, "Multiple <condition> within <level> or <condition> and <DependsOnConditions> exists concurrently in the same <level>."

    .line 450
    :cond_16
    const-string v11, "name"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "name_attr":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    if-eqz v11, :cond_6c

    .line 452
    const/4 v7, 0x0

    .line 453
    .local v7, "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    .line 454
    .local v0, "condition":Lcom/android/server/ssrm/settings/Condition;
    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 455
    move-object v7, v0

    goto :goto_2b

    .line 459
    .end local v0    # "condition":Lcom/android/server/ssrm/settings/Condition;
    :cond_43
    if-eqz v7, :cond_52

    .line 460
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name_attr":Ljava/lang/String;
    .end local v7    # "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    :cond_4a
    :goto_4a
    if-eqz v1, :cond_13c

    .line 502
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 462
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "name_attr":Ljava/lang/String;
    .restart local v7    # "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    :cond_52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Required condition \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' does not exist. Initially must be a level defined with such a condition."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 467
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    :cond_6c
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 468
    iput-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    goto :goto_4a

    .line 470
    :cond_7b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Condition \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not defined within <conditions>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 474
    .end local v3    # "name_attr":Ljava/lang/String;
    :cond_95
    const-string v11, "DependsOnConditions"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 475
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    goto :goto_4a

    .line 476
    :cond_a1
    const-string/jumbo v11, "state"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e8

    .line 477
    const-string/jumbo v11, "step"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "step_attr":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 479
    .local v6, "temperature":Ljava/lang/Integer;
    if-eqz v6, :cond_cd

    .line 480
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/server/ssrm/settings/BatteryControllerFactory;->createBatteryState(I)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    goto/16 :goto_4a

    .line 482
    :cond_cd
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrong step \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is used. Check <steps> for available values."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    .line 485
    .end local v5    # "step_attr":Ljava/lang/String;
    .end local v6    # "temperature":Ljava/lang/Integer;
    :cond_e8
    const-string v11, "setting"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 486
    const-string/jumbo v11, "writer"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, "writer_attr":Ljava/lang/String;
    const-string/jumbo v11, "value"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, "value_attr":Ljava/lang/String;
    const-string v11, "option"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "option_attr":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$500(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 490
    .local v9, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    if-eqz v9, :cond_121

    .line 491
    if-nez v4, :cond_116

    .line 492
    const-string v4, "null"

    .line 494
    :cond_116
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/ssrm/settings/SettingWriter;->createSettingFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Setting;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/ssrm/settings/BatteryState;->addSetting(Lcom/android/server/ssrm/settings/Setting;)V

    goto/16 :goto_4a

    .line 497
    :cond_121
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Writer \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not registred."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    .line 504
    .end local v4    # "option_attr":Ljava/lang/String;
    .end local v8    # "value_attr":Ljava/lang/String;
    .end local v9    # "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    .end local v10    # "writer_attr":Ljava/lang/String;
    :cond_13c
    return-void
.end method

.method handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    .line 430
    const-string/jumbo v0, "true"

    const-string v1, "default"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    .line 432
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v0}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/MainController;->levelsFactory()Lcom/android/server/ssrm/settings/LevelsFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ssrm/settings/LevelsFactory;->createLevel()Lcom/android/server/ssrm/settings/Level;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    .line 433
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/settings/Level;->initialize(Lcom/android/server/ssrm/settings/BatteryControllerFactory;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Level;->batteryStatesFactory()Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    .line 436
    return-void
.end method
