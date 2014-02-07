.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 830
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 831
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 832
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 833
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 834
    return-void
.end method

.method private delay(J)V
    .registers 9
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 837
    cmp-long v2, p1, v4

    if-lez v2, :cond_13

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 841
    .local v0, "bedtime":J
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_1f

    .line 845
    :goto_f
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_14

    .line 851
    .end local v0    # "bedtime":J
    :cond_13
    :goto_13
    return-void

    .line 848
    .restart local v0    # "bedtime":J
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 849
    cmp-long v2, p1, v4

    if-gtz v2, :cond_c

    goto :goto_13

    .line 843
    :catch_1f
    move-exception v2

    goto :goto_f
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 854
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 855
    monitor-enter p0

    .line 856
    :try_start_5
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v9

    .line 857
    .local v9, "pattern":[J
    array-length v8, v9

    .line 858
    .local v8, "len":I
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    .line 859
    .local v10, "repeat":I
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 860
    .local v3, "uid":I
    const/4 v6, 0x0

    .line 861
    .local v6, "index":I
    const-wide/16 v1, 0x0

    .local v1, "duration":J
    move v7, v6

    .line 863
    .end local v6    # "index":I
    .local v7, "index":I
    :goto_1c
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v0, :cond_c8

    .line 865
    if-ge v7, v8, :cond_28

    .line 866
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-wide v4, v9, v7

    add-long/2addr v1, v4

    move v7, v6

    .line 870
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_28
    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 871
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v0, :cond_69

    move v6, v7

    .line 899
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :goto_30
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 900
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_bf

    .line 901
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 902
    :try_start_41
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v0, p0, :cond_4c

    .line 903
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 905
    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v0, :cond_67

    .line 908
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 909
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v0, v5}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 910
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 912
    :cond_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_c2

    .line 913
    return-void

    .line 875
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_69
    if-ge v7, v8, :cond_b4

    .line 878
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    :try_start_6d
    aget-wide v1, v9, v7

    .line 879
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_c5

    .line 880
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 881
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 882
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v5}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JILjava/lang/String;I)V

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1c

    .line 884
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_98
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v5}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)I

    move-result v5

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JILjava/lang/String;I)V

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_1c

    .line 887
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_ac
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;JI)V

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_1c

    .line 891
    :cond_b4
    if-gez v10, :cond_b9

    move v6, v7

    .line 892
    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto/16 :goto_30

    .line 894
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_b9
    move v6, v10

    .line 895
    .end local v7    # "index":I
    .restart local v6    # "index":I
    const-wide/16 v1, 0x0

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_1c

    .line 900
    .end local v1    # "duration":J
    .end local v3    # "uid":I
    .end local v7    # "index":I
    .end local v8    # "len":I
    .end local v9    # "pattern":[J
    .end local v10    # "repeat":I
    :catchall_bf
    move-exception v0

    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_6d .. :try_end_c1} :catchall_bf

    throw v0

    .line 912
    .restart local v1    # "duration":J
    .restart local v3    # "uid":I
    .restart local v6    # "index":I
    .restart local v8    # "len":I
    .restart local v9    # "pattern":[J
    .restart local v10    # "repeat":I
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v4
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v0

    :cond_c5
    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_1c

    :cond_c8
    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto/16 :goto_30
.end method
