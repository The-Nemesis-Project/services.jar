.class Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;
.super Ljava/lang/Object;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagActionFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V
    .registers 2

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Lcom/android/server/ssrm/settings/LevelsModelReader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;
    .param p2, "x1"    # Lcom/android/server/ssrm/settings/LevelsModelReader$1;

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V

    return-void
.end method


# virtual methods
.method getAction(Ljava/lang/String;)Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 531
    const-string/jumbo v0, "step"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 532
    new-instance v0, Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V

    .line 543
    :goto_10
    return-object v0

    .line 534
    :cond_11
    const-string/jumbo v0, "writer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 535
    new-instance v0, Lcom/android/server/ssrm/settings/LevelsModelReader$WriterTagAction;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/settings/LevelsModelReader$WriterTagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V

    goto :goto_10

    .line 537
    :cond_22
    const-string v0, "condition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 538
    new-instance v0, Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V

    goto :goto_10

    .line 540
    :cond_32
    const-string v0, "level"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 541
    new-instance v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V

    goto :goto_10

    .line 543
    :cond_42
    const/4 v0, 0x0

    goto :goto_10
.end method
