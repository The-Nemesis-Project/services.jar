.class public Lcom/android/server/enterprise/auditlog/LowLevelLog;
.super Ljava/lang/Thread;
.source "LowLevelLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LowLevelLog"


# instance fields
.field private lastLog:Ljava/lang/String;

.field private log:Ljava/lang/String;

.field private mRun:Z

.field private startLog:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->mRun:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    .local v11, "process":Ljava/lang/Process;
    const/4 v9, 0x0

    .line 56
    .local v9, "isr":Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 58
    .local v6, "br":Ljava/io/BufferedReader;
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->mRun:Z

    if-eqz v0, :cond_100

    .line 60
    const-wide/16 v0, 0x9c4

    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_b6

    .line 66
    :goto_d
    :try_start_d
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/dmesg"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v11

    .line 68
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_14f
    .catchall {:try_start_d .. :try_end_33} :catchall_14a

    .line 69
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v10, "isr":Ljava/io/InputStreamReader;
    :try_start_33
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_152
    .catchall {:try_start_33 .. :try_end_38} :catchall_14c

    .line 70
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    :try_start_39
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    .line 71
    :cond_3b
    :goto_3b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    if-eqz v0, :cond_e6

    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;

    if-nez v0, :cond_c0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    .line 80
    :cond_4a
    :goto_4a
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    if-eqz v0, :cond_3b

    .line 81
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "KERNEL"

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_85} :catch_86
    .catchall {:try_start_39 .. :try_end_85} :catchall_d3

    goto :goto_3b

    .line 91
    :catch_86
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 92
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :goto_89
    :try_start_89
    const-string v0, "LowLevelLog"

    const-string v1, "run.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_14a

    .line 96
    if-eqz v9, :cond_9d

    .line 97
    :try_start_9a
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 99
    :cond_9d
    if-eqz v6, :cond_a2

    .line 100
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 102
    :cond_a2
    if-eqz v11, :cond_4

    .line 105
    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I
    :try_end_a7
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_9a .. :try_end_a7} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a7} :catch_11d

    goto/16 :goto_4

    .line 107
    :catch_a9
    move-exception v8

    .line 108
    .local v8, "e":Ljava/lang/IllegalThreadStateException;
    const-string v0, "LowLevelLog"

    const-string v1, "IllegalThreadStateException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_4

    .line 61
    .end local v8    # "e":Ljava/lang/IllegalThreadStateException;
    :catch_b6
    move-exception v8

    .line 62
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "LowLevelLog"

    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 75
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :cond_c0
    :try_start_c0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    if-nez v0, :cond_4a

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d1} :catch_86
    .catchall {:try_start_c0 .. :try_end_d1} :catchall_d3

    goto/16 :goto_4a

    .line 95
    :catchall_d3
    move-exception v0

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 96
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :goto_d6
    if-eqz v9, :cond_db

    .line 97
    :try_start_d8
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 99
    :cond_db
    if-eqz v6, :cond_e0

    .line 100
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 102
    :cond_e0
    if-eqz v11, :cond_e5

    .line 105
    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I
    :try_end_e5
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_d8 .. :try_end_e5} :catch_101
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e5} :catch_10d

    .line 95
    :cond_e5
    :goto_e5
    throw v0

    .line 87
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :cond_e6
    :try_start_e6
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    if-nez v0, :cond_ed

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ed} :catch_86
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_d3

    .line 96
    :cond_ed
    if-eqz v10, :cond_f2

    .line 97
    :try_start_ef
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 99
    :cond_f2
    if-eqz v7, :cond_f7

    .line 100
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 102
    :cond_f7
    if-eqz v11, :cond_fc

    .line 105
    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I
    :try_end_fc
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_ef .. :try_end_fc} :catch_12e
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fc} :catch_13a

    :cond_fc
    :goto_fc
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 115
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 117
    :cond_100
    return-void

    .line 107
    :catch_101
    move-exception v8

    .line 108
    .local v8, "e":Ljava/lang/IllegalThreadStateException;
    const-string v1, "LowLevelLog"

    const-string v2, "IllegalThreadStateException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto :goto_e5

    .line 111
    .end local v8    # "e":Ljava/lang/IllegalThreadStateException;
    :catch_10d
    move-exception v8

    .line 112
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "LowLevelLog"

    const-string v2, "run.Exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_e5

    .line 111
    :catch_11d
    move-exception v8

    .line 112
    const-string v0, "LowLevelLog"

    const-string v1, "run.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    invoke-virtual {v0, v8, v14}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 107
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catch_12e
    move-exception v8

    .line 108
    .local v8, "e":Ljava/lang/IllegalThreadStateException;
    const-string v0, "LowLevelLog"

    const-string v1, "IllegalThreadStateException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto :goto_fc

    .line 111
    .end local v8    # "e":Ljava/lang/IllegalThreadStateException;
    :catch_13a
    move-exception v8

    .line 112
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LowLevelLog"

    const-string v1, "run.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    invoke-virtual {v0, v8, v14}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_fc

    .line 95
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_14a
    move-exception v0

    goto :goto_d6

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catchall_14c
    move-exception v0

    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    goto :goto_d6

    .line 91
    :catch_14f
    move-exception v8

    goto/16 :goto_89

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catch_152
    move-exception v8

    move-object v9, v10

    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_89
.end method

.method public stopThread()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->mRun:Z

    .line 51
    return-void
.end method
