.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2850
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2851
    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 2853
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 77
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2856
    const-string v69, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 2857
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v69, v0

    packed-switch v69, :pswitch_data_e70

    .line 3287
    :cond_e
    :goto_e
    :pswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v69, v0

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0x1388

    move/from16 v69, v0

    const/16 v70, 0x1388

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_52

    .line 3289
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v69, v0

    move/from16 v0, v69

    add-int/lit16 v0, v0, -0x1388

    move/from16 v42, v0

    .line 3295
    .local v42, "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v69

    if-eqz v69, :cond_52

    .line 3296
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "setPersonaState mHandlerCacheManager is not null & onSessionExpired called."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/HandlerCacheManager;->onSessionExpired(I)V

    .line 3300
    .end local v42    # "personaId":I
    :cond_52
    :goto_52
    return-void

    .line 2860
    :pswitch_53
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 2861
    .local v18, "event":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v70

    monitor-enter v70

    .line 2862
    if-eqz v18, :cond_eb

    .line 2863
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2864
    .local v47, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_7a
    :goto_7a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_eb

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2865
    .local v38, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_7a

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v69

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 2867
    .local v8, "b":Ljava/lang/Boolean;
    if-eqz v8, :cond_7a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_7a

    .line 2868
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_7a

    .line 2874
    .end local v8    # "b":Ljava/lang/Boolean;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_e8
    move-exception v69

    monitor-exit v70
    :try_end_ea
    .catchall {:try_start_66 .. :try_end_ea} :catchall_e8

    throw v69

    :cond_eb
    :try_start_eb
    monitor-exit v70
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_e8

    goto/16 :goto_e

    .line 2878
    .end local v18    # "event":I
    :pswitch_ee
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 2880
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v42

    move/from16 v2, v70

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_e

    .line 2884
    .end local v42    # "personaId":I
    :pswitch_125
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "MSG_STOP_TIMER called :"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 2886
    .restart local v42    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 2887
    .local v20, "force":I
    const/16 v69, 0x1

    move/from16 v0, v20

    move/from16 v1, v69

    if-eq v0, v1, :cond_177

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v69

    if-eqz v69, :cond_e

    .line 2888
    :cond_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_e

    .line 2893
    .end local v20    # "force":I
    .end local v42    # "personaId":I
    :pswitch_186
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 2895
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v42

    move/from16 v2, v70

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v69

    if-eqz v69, :cond_e

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_e

    .line 2902
    .end local v42    # "personaId":I
    :pswitch_1da
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 2903
    .local v8, "b":Landroid/os/Bundle;
    const-string/jumbo v69, "type"

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 2904
    .local v63, "type":Z
    const-string v69, "flag"

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2905
    .local v19, "flag":I
    const-string/jumbo v69, "uid"

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v65

    .line 2906
    .local v65, "uid":I
    const-string v69, "pid"

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v49

    .line 2907
    .local v49, "pid":I
    const-string v69, "package"

    const-string v70, ""

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2908
    .local v39, "packageName":Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v67

    .line 2909
    .local v67, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v63

    move/from16 v2, v19

    move/from16 v3, v65

    move/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_e

    .line 2913
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v19    # "flag":I
    .end local v39    # "packageName":Ljava/lang/String;
    .end local v49    # "pid":I
    .end local v63    # "type":Z
    .end local v65    # "uid":I
    .end local v67    # "userId":I
    :pswitch_237
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "MSG_ACTION_SCREEN_OFF called"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v70

    monitor-enter v70

    .line 2916
    :try_start_249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2917
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_25d
    :goto_25d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_2bd

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2918
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_25d

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v71

    const-wide/16 v73, 0x0

    cmp-long v69, v71, v73

    if-nez v69, :cond_25d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    move-object/from16 v0, v69

    move/from16 v1, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v69

    if-eqz v69, :cond_25d

    .line 2920
    const-string v69, "PersonaManagerServiceHandler"

    const-string v71, "MSG_ACTION_SCREEN_OFF screen time = 0, change state and switch"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    move-object/from16 v0, v69

    move/from16 v1, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_25d

    .line 2925
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_2ba
    move-exception v69

    monitor-exit v70
    :try_end_2bc
    .catchall {:try_start_249 .. :try_end_2bc} :catchall_2ba

    throw v69

    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2bd
    :try_start_2bd
    monitor-exit v70
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_2ba

    goto/16 :goto_e

    .line 2929
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_2c0
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "MSG_ACTION_SCREEN_ON called"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v70

    monitor-enter v70

    .line 2931
    :try_start_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2932
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_2e6
    :goto_2e6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_3a4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2933
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_2e6

    .line 2934
    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v42, v0

    .line 2935
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v58

    .line 2937
    .local v58, "sessionLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v69

    if-nez v69, :cond_2e6

    const-wide/16 v71, 0x0

    cmp-long v69, v58, v71

    if-lez v69, :cond_2e6

    .line 2938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    .line 2939
    .local v35, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v27

    .line 2940
    .local v27, "lastTime":J
    sub-long v12, v35, v27

    .line 2942
    .local v12, "duration":J
    sub-long v61, v58, v12

    .line 2943
    .local v61, "timeRemaining":J
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "timeRemaining: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move-wide/from16 v1, v61

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v69

    move/from16 v0, v42

    or-int/lit16 v0, v0, 0x1388

    move/from16 v71, v0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 2946
    .local v31, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v69

    move/from16 v0, v42

    or-int/lit16 v0, v0, 0x1388

    move/from16 v71, v0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 2947
    const-wide/16 v71, 0x1

    cmp-long v69, v61, v71

    if-gez v69, :cond_38c

    const-wide/16 v61, 0x0

    .line 2948
    :cond_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v31

    move-wide/from16 v2, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2e6

    .line 2953
    .end local v12    # "duration":J
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v27    # "lastTime":J
    .end local v31    # "message":Landroid/os/Message;
    .end local v35    # "now":J
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v42    # "personaId":I
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v58    # "sessionLength":J
    .end local v61    # "timeRemaining":J
    :catchall_3a1
    move-exception v69

    monitor-exit v70
    :try_end_3a3
    .catchall {:try_start_2d2 .. :try_end_3a3} :catchall_3a1

    throw v69

    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3a4
    :try_start_3a4
    monitor-exit v70
    :try_end_3a5
    .catchall {:try_start_3a4 .. :try_end_3a5} :catchall_3a1

    goto/16 :goto_e

    .line 2957
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_3a7
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v70

    monitor-enter v70

    .line 2959
    :try_start_3b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2960
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_3cd
    :goto_3cd
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_450

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2961
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_3cd

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v69

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 2963
    .local v8, "b":Ljava/lang/Boolean;
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "mTimerMap.get(pInfo.id) called:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v72, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v72

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v73, v0

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    if-eqz v8, :cond_3cd

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_3cd

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_3cd

    .line 2969
    .end local v8    # "b":Ljava/lang/Boolean;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_44d
    move-exception v69

    monitor-exit v70
    :try_end_44f
    .catchall {:try_start_3b9 .. :try_end_44f} :catchall_44d

    throw v69

    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_450
    :try_start_450
    monitor-exit v70
    :try_end_451
    .catchall {:try_start_450 .. :try_end_451} :catchall_44d

    goto/16 :goto_e

    .line 2974
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_453
    :try_start_453
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v68, v0

    .line 2975
    .local v68, "userid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v68

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_466
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_466} :catch_468

    goto/16 :goto_e

    .line 2976
    .end local v68    # "userid":I
    :catch_468
    move-exception v14

    .line 2977
    .local v14, "e":Ljava/lang/Exception;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Cannot process DPM state change broadcast :"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2982
    .end local v14    # "e":Ljava/lang/Exception;
    :pswitch_487
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v66, v0

    .line 2984
    .local v66, "userHandle":I
    :try_start_48d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v22

    .line 2985
    .local v22, "i":I
    :goto_49b
    if-lez v22, :cond_4e1

    .line 2986
    add-int/lit8 v22, v22, -0x1

    .line 2987
    const-string v69, "PersonaManagerService"

    const-string v70, " sending remove persona event to system observers "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v69

    check-cast v69, Landroid/content/pm/ISystemPersonaObserver;

    move-object/from16 v0, v69

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_4c1
    .catch Ljava/lang/Exception; {:try_start_48d .. :try_end_4c1} :catch_4c2

    goto :goto_49b

    .line 2991
    .end local v22    # "i":I
    :catch_4c2
    move-exception v15

    .line 2994
    .local v15, "e2":Ljava/lang/Exception;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Exception Caught:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2990
    .end local v15    # "e2":Ljava/lang/Exception;
    .restart local v22    # "i":I
    :cond_4e1
    :try_start_4e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4ee
    .catch Ljava/lang/Exception; {:try_start_4e1 .. :try_end_4ee} :catch_4c2

    goto/16 :goto_e

    .line 3000
    .end local v22    # "i":I
    .end local v66    # "userHandle":I
    :pswitch_4f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_4fe
    :goto_4fe
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_55e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 3001
    .local v22, "i":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v64

    .line 3002
    .local v64, "ui":Landroid/content/pm/PersonaInfo;
    if-eqz v64, :cond_4fe

    .line 3003
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Removing partially created user #"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v64

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " (name="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v64

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ")"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static/range {v69 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_4fe

    .line 3008
    .end local v22    # "i":Ljava/lang/Integer;
    .end local v64    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_55e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_e

    .line 3014
    .end local v23    # "i$":Ljava/util/Iterator;
    :pswitch_56d
    :try_start_56d
    const-string v69, "PersonaManagerService"

    const-string v70, "reading from xml resource for fota"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v69

    const v70, 0x10f000a

    invoke-virtual/range {v69 .. v70}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v41

    .line 3016
    .local v41, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v21, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v69

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;-><init>(Lcom/android/server/pm/PersonaManagerService;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3017
    .local v21, "fotaParser":Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->readFromXml()V

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->getAppList()Ljava/util/ArrayList;

    move-result-object v70

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_5aa
    .catch Ljava/lang/Exception; {:try_start_56d .. :try_end_5aa} :catch_762

    .line 3022
    .end local v21    # "fotaParser":Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
    .end local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_5aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v45

    .line 3023
    .local v45, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5ba
    :goto_5ba
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/PersonaInfo;

    .line 3025
    .local v48, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v48, :cond_5ba

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5ba

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5ba

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_613

    .line 3029
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v69, v0

    if-eqz v69, :cond_604

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->isEmpty()Z

    move-result v69

    if-eqz v69, :cond_613

    .line 3030
    :cond_604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static/range {v69 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3034
    :cond_613
    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v69

    if-eqz v69, :cond_6a6

    .line 3035
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v69, v0

    const-string v70, "persona_file_system"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v71, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v71 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v71

    const/16 v72, 0x0

    invoke-static/range {v69 .. v72}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 3036
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    move/from16 v69, v0

    if-nez v69, :cond_87e

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_87e

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x4

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_87e

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_87e

    .line 3038
    :try_start_662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v69

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    const/16 v71, 0x0

    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v72

    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v73

    invoke-virtual/range {v69 .. v73}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z

    move-result v32

    .line 3039
    .local v32, "mountStatus":Z
    if-nez v32, :cond_77f

    .line 3040
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "File system not mounted successfully for"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "."

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a6
    .catch Ljava/lang/Exception; {:try_start_662 .. :try_end_6a6} :catch_861

    .line 3066
    .end local v32    # "mountStatus":Z
    :cond_6a6
    :goto_6a6
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v71, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "; pi.fwversion = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_5ba

    .line 3068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_5ba

    .line 3070
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "pi.removePersona = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "; pi.state = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5ba

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x4

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5ba

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5ba

    .line 3075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v48

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateContainerOnlyApks(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_5ba

    .line 3019
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_762
    move-exception v14

    .line 3020
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Failed to open file - Exception: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5aa

    .line 3042
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v32    # "mountStatus":Z
    .restart local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_77f
    :try_start_77f
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "File system successfully mounted for"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "."

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    if-eqz v69, :cond_6a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    if-eqz v69, :cond_6a6

    .line 3045
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Persona firmware version : "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v71, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_6a6

    .line 3047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_6a6

    .line 3049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_821
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_6a6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    .line 3050
    .local v25, "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "AppUpgradeInfo: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v71, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static/range {v69 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_860
    .catch Ljava/lang/Exception; {:try_start_77f .. :try_end_860} :catch_861

    goto :goto_821

    .line 3057
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v32    # "mountStatus":Z
    :catch_861
    move-exception v14

    .line 3058
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Failed to mount file system. "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a6

    .line 3061
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_87e
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Did not mount file system for superLocked persona "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " or due to container state."

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a6

    .line 3084
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_8a4
    :try_start_8a4
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    const-string v70, "persona"

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/os/PersonaManager;

    .line 3088
    .local v46, "personaManager":Landroid/os/PersonaManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    const-string v70, "activity"

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 3091
    .local v5, "activityManager":Landroid/app/ActivityManager;
    if-eqz v46, :cond_e

    .line 3092
    const/16 v69, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v45

    .line 3094
    .restart local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v45, :cond_e

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v69

    if-lez v69, :cond_e

    .line 3095
    const/16 v69, 0x2

    move/from16 v0, v69

    new-array v0, v0, [I

    move-object/from16 v43, v0

    .line 3096
    .local v43, "personaIds":[I
    const/16 v33, 0x0

    .line 3097
    .local v33, "n":I
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    move/from16 v34, v33

    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v33    # "n":I
    .local v34, "n":I
    :goto_8f3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_a87

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/PersonaInfo;

    .line 3098
    .restart local v48    # "pi":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v33, v34, 0x1

    .end local v34    # "n":I
    .restart local v33    # "n":I
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v69, v0

    aput v69, v43, v34

    .line 3100
    new-instance v16, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v16

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3101
    .local v16, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v69, v0

    move-object/from16 v0, v16

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v37

    .line 3102
    .local v37, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v17

    .line 3103
    .local v17, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    new-instance v70, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    move-object/from16 v0, v70

    move/from16 v1, v37

    move/from16 v2, v71

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v26

    .line 3105
    .local v26, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    if-eqz v69, :cond_a66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    if-eqz v69, :cond_a66

    .line 3106
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Persona firmware version : "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v71, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_a66

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_a66

    .line 3110
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 3111
    .local v52, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_9d6
    :goto_9d6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_a45

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    .line 3112
    .restart local v25    # "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Boot receiver AppUpgradeInfo: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " system:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    move/from16 v69, v0

    if-nez v69, :cond_9d6

    .line 3114
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v69, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a25
    .catch Ljava/lang/Exception; {:try_start_8a4 .. :try_end_a25} :catch_a26

    goto :goto_9d6

    .line 3128
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v17    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v33    # "n":I
    .end local v37    # "ownerUid":I
    .end local v43    # "personaIds":[I
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v46    # "personaManager":Landroid/os/PersonaManager;
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v52    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_a26
    move-exception v14

    .line 3129
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3117
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v5    # "activityManager":Landroid/app/ActivityManager;
    .restart local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v17    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v33    # "n":I
    .restart local v37    # "ownerUid":I
    .restart local v43    # "personaIds":[I
    .restart local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v46    # "personaManager":Landroid/os/PersonaManager;
    .restart local v48    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v52    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a45
    :try_start_a45
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v69

    move/from16 v0, v69

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v69, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 3118
    .local v11, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v69

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v70

    invoke-virtual {v0, v11, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 3122
    .end local v11    # "disablePackages":[Ljava/lang/String;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v52    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v48

    iput-object v0, v1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 3123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v48

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    move/from16 v34, v33

    .line 3124
    .end local v33    # "n":I
    .restart local v34    # "n":I
    goto/16 :goto_8f3

    .line 3125
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v17    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v37    # "ownerUid":I
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_a87
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->softStartPersonas([I)Z
    :try_end_a8c
    .catch Ljava/lang/Exception; {:try_start_a45 .. :try_end_a8c} :catch_a26

    goto/16 :goto_e

    .line 3137
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v34    # "n":I
    .end local v43    # "personaIds":[I
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v46    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_a8e
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    :try_start_aac
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3141
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PersonaInfo;

    .line 3142
    .local v44, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v44, :cond_ad7

    .line 3143
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_acf
    .catch Ljava/lang/Exception; {:try_start_aac .. :try_end_acf} :catch_ad1

    goto/16 :goto_52

    .line 3157
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_ad1
    move-exception v14

    .line 3158
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 3147
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v42    # "personaId":I
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_ad7
    :try_start_ad7
    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v40

    .line 3148
    .local v40, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v55

    .line 3149
    .local v55, "result":Z
    if-eqz v55, :cond_b16

    .line 3150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v9

    .line 3151
    .local v9, "code":I
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "startRemovingPersona return code is "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3154
    .end local v9    # "code":I
    :cond_b16
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "Failed to switch persona. Aborted removing of persona..."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1d
    .catch Ljava/lang/Exception; {:try_start_ad7 .. :try_end_b1d} :catch_ad1

    goto/16 :goto_e

    .line 3164
    .end local v40    # "parentUserId":I
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v55    # "result":Z
    :pswitch_b1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3165
    .restart local v42    # "personaId":I
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v30

    .line 3169
    .local v30, "mEpm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const-string v69, "PersonaManagerService"

    const-string v70, " PersonaHandler:: resetting file system "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, " resetPersona: resetting persona :"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->resetPartition(I)Z

    move-result v56

    .line 3176
    .local v56, "ret":Z
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v42

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    goto/16 :goto_e

    .line 3185
    .end local v30    # "mEpm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v42    # "personaId":I
    .end local v56    # "ret":Z
    :pswitch_b94
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "PersonaHandler.MSG_START_RESET_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :try_start_bb2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3189
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PersonaInfo;

    .line 3190
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v44, :cond_bdd

    .line 3191
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd5
    .catch Ljava/lang/Exception; {:try_start_bb2 .. :try_end_bd5} :catch_bd7

    goto/16 :goto_52

    .line 3205
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_bd7
    move-exception v14

    .line 3206
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 3195
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v42    # "personaId":I
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_bdd
    :try_start_bdd
    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v40

    .line 3196
    .restart local v40    # "parentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v55

    .line 3197
    .restart local v55    # "result":Z
    if-eqz v55, :cond_c1c

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(I)I
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;I)I

    move-result v9

    .line 3199
    .restart local v9    # "code":I
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "startResetPersona return code is "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3202
    .end local v9    # "code":I
    :cond_c1c
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "Failed to switch persona. Aborted reset of persona..."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c23
    .catch Ljava/lang/Exception; {:try_start_bdd .. :try_end_c23} :catch_bd7

    goto/16 :goto_e

    .line 3212
    .end local v40    # "parentUserId":I
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v55    # "result":Z
    :pswitch_c25
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3213
    .restart local v42    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v60, v0

    .line 3214
    .local v60, "state":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v6

    .line 3215
    .local v6, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3216
    .local v10, "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PersonaInfo;

    .line 3217
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v44, :cond_c66

    .line 3218
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 3222
    :cond_c66
    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v40

    .line 3223
    .restart local v40    # "parentUserId":I
    const-string v69, "PersonaManagerServiceHandler"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " adminUid= "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    const/16 v55, 0x1

    .line 3225
    .restart local v55    # "result":Z
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v69

    move/from16 v0, v42

    move/from16 v1, v69

    if-ne v0, v1, :cond_cc1

    .line 3226
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v55

    .line 3229
    :cond_cc1
    const/16 v69, 0x8

    move/from16 v0, v60

    move/from16 v1, v69

    if-ne v0, v1, :cond_cdc

    .line 3230
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v69

    move/from16 v0, v69

    move/from16 v1, v42

    if-ne v0, v1, :cond_cdc

    .line 3231
    const/16 v55, 0x0

    .line 3232
    const-string v69, "PersonaManagerServiceHandler"

    const-string v70, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_cdc
    if-eqz v55, :cond_cf5

    .line 3237
    const-string v69, "PersonaManagerServiceHandler"

    const-string/jumbo v70, "stopPersona persona..."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    goto/16 :goto_e

    .line 3239
    :cond_cf5
    const/16 v69, 0x8

    move/from16 v0, v60

    move/from16 v1, v69

    if-ne v0, v1, :cond_e

    .line 3241
    new-instance v16, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v16

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3242
    .restart local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v37

    .line 3243
    .restart local v37    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v51

    .line 3244
    .local v51, "pkgNames":[Ljava/lang/String;
    if-eqz v51, :cond_d53

    .line 3245
    move-object/from16 v7, v51

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_d37
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    aget-object v50, v7, v23

    .line 3246
    .local v50, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v50

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 3245
    add-int/lit8 v23, v23, 0x1

    goto :goto_d37

    .line 3249
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v29    # "len$":I
    .end local v50    # "pkgName":Ljava/lang/String;
    :cond_d53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    goto/16 :goto_e

    .line 3256
    .end local v6    # "adminUid":I
    .end local v10    # "currentUser":Ljava/lang/Integer;
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v37    # "ownerUid":I
    .end local v40    # "parentUserId":I
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v51    # "pkgNames":[Ljava/lang/String;
    .end local v55    # "result":Z
    .end local v60    # "state":I
    :pswitch_d68
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3257
    .restart local v42    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_dab

    const/16 v54, 0x1

    .line 3258
    .local v54, "removePersona":Z
    :goto_d7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 3259
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_dae

    .line 3260
    const-string v69, "PersonaManagerService"

    const-string/jumbo v70, "userStopped triggered removal process..."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_e

    .line 3257
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v54    # "removePersona":Z
    :cond_dab
    const/16 v54, 0x0

    goto :goto_d7e

    .line 3262
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v54    # "removePersona":Z
    :cond_dae
    if-eqz v38, :cond_e

    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    move/from16 v69, v0

    if-eqz v69, :cond_e

    invoke-virtual/range {v38 .. v38}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v69

    if-eqz v69, :cond_e

    .line 3264
    :try_start_dbe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v57

    .line 3265
    .local v57, "retVal":Z
    const-string v69, "PersonaManagerService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "unmounting file system due to super lock: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v69, v0

    const/16 v70, 0x8

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_e

    .line 3268
    new-instance v16, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v16

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3269
    .restart local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v37

    .line 3270
    .restart local v37    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v51

    .line 3271
    .restart local v51    # "pkgNames":[Ljava/lang/String;
    if-eqz v51, :cond_e51

    .line 3272
    move-object/from16 v7, v51

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v23, 0x0

    .restart local v23    # "i$":I
    :goto_e35
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    aget-object v50, v7, v23

    .line 3273
    .restart local v50    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v50

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 3272
    add-int/lit8 v23, v23, 0x1

    goto :goto_e35

    .line 3276
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v29    # "len$":I
    .end local v50    # "pkgName":Ljava/lang/String;
    :cond_e51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_e64
    .catch Landroid/os/RemoteException; {:try_start_dbe .. :try_end_e64} :catch_e66

    goto/16 :goto_e

    .line 3279
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v37    # "ownerUid":I
    .end local v51    # "pkgNames":[Ljava/lang/String;
    .end local v57    # "retVal":Z
    :catch_e66
    move-exception v53

    .line 3280
    .local v53, "re":Landroid/os/RemoteException;
    const-string v69, "PersonaManagerService"

    const-string v70, "Failed to unmount file system on super lock."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2857
    :pswitch_data_e70
    .packed-switch 0x1
        :pswitch_a8e
        :pswitch_b1f
        :pswitch_e
        :pswitch_b94
        :pswitch_c25
        :pswitch_186
        :pswitch_ee
        :pswitch_53
        :pswitch_3a7
        :pswitch_1da
        :pswitch_237
        :pswitch_125
        :pswitch_8a4
        :pswitch_4f0
        :pswitch_56d
        :pswitch_453
        :pswitch_487
        :pswitch_d68
        :pswitch_2c0
    .end packed-switch
.end method
