.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->onStateChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

.field final synthetic val$oldState:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;II)V
    .registers 4

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 877
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " old state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v15

    .line 880
    .local v15, "info":Landroid/content/pm/PersonaInfo;
    if-nez v15, :cond_67

    .line 881
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get persona info for user "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_66
    :goto_66
    return-void

    .line 885
    :cond_67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v18

    .line 886
    .local v18, "ownerUid":I
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 887
    .local v4, "userId":I
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v16, v0

    .line 888
    .local v16, "isUserManaged":Z
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUserManaged "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and user"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    if-nez v1, :cond_16e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16e

    .line 895
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_15b

    .line 896
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.created.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    .line 918
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_119

    .line 919
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    if-nez v1, :cond_119

    .line 920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v19

    .line 921
    .local v19, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v19, :cond_119

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    invoke-static {v1, v0, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 927
    .end local v19    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_119
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(I)I

    move-result v5

    .line 928
    .local v5, "tOldState":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(I)I

    move-result v6

    .line 929
    .local v6, "tstate":I
    if-eq v6, v5, :cond_201

    .line 930
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 931
    .local v20, "pkgNames":[Ljava/lang/String;
    if-eqz v20, :cond_1ec

    .line 932
    move-object/from16 v13, v20

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_141
    move/from16 v0, v17

    if-ge v14, v0, :cond_201

    aget-object v2, v13, v14

    .line 933
    .local v2, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 932
    add-int/lit8 v14, v14, 0x1

    goto :goto_141

    .line 898
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v5    # "tOldState":I
    .end local v6    # "tstate":I
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "pkgNames":[Ljava/lang/String;
    :cond_15b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.created.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_d6

    .line 901
    :cond_16e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1a0

    .line 903
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_18d

    .line 904
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_d6

    .line 906
    :cond_18d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_d6

    .line 909
    :cond_1a0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1bb

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.mdmlocked"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_d6

    .line 911
    :cond_1bb
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1ca

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_1d9

    :cond_1ca
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_d6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_d6

    .line 912
    :cond_1d9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.mdmunlocked"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_d6

    .line 936
    .restart local v5    # "tOldState":I
    .restart local v6    # "tstate":I
    .restart local v20    # "pkgNames":[Ljava/lang/String;
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v9

    move v10, v4

    move v11, v5

    move v12, v6

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 941
    .end local v20    # "pkgNames":[Ljava/lang/String;
    :cond_201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_66

    .line 942
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 943
    .restart local v20    # "pkgNames":[Ljava/lang/String;
    if-eqz v20, :cond_239

    .line 944
    move-object/from16 v13, v20

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_21f
    move/from16 v0, v17

    if-ge v14, v0, :cond_66

    aget-object v2, v13, v14

    .line 945
    .restart local v2    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    .line 944
    add-int/lit8 v14, v14, 0x1

    goto :goto_21f

    .line 948
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    :cond_239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v3, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    goto/16 :goto_66
.end method
