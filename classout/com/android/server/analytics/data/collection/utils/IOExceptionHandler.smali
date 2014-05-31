.class public Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;,
        Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$ExceptionChain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static process(Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "processor":Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;, "TT;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    const/4 v2, 0x0

    .line 144
    .local v2, "io":Ljava/lang/Object;, "TS;"
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_30

    move-result-object v2

    .line 146
    :try_start_a
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_22
    .catchall {:try_start_a .. :try_end_d} :catchall_35

    .line 152
    :try_start_d
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_55

    .line 158
    :goto_10
    :try_start_10
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_5a

    .line 163
    :goto_13
    :try_start_13
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_30

    .line 169
    .end local v2    # "io":Ljava/lang/Object;, "TS;"
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_40

    .line 170
    new-instance v3, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {v3, v1}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw v3

    .line 147
    .restart local v2    # "io":Ljava/lang/Object;, "TS;"
    :catch_22
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    :try_start_23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_35

    .line 152
    :try_start_26
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_4b

    .line 158
    :goto_29
    :try_start_29
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_50

    .line 163
    :goto_2c
    :try_start_2c
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_16

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "io":Ljava/lang/Object;, "TS;"
    :catch_30
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "io":Ljava/lang/Object;, "TS;"
    :catchall_35
    move-exception v3

    .line 152
    :try_start_36
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_41

    .line 158
    :goto_39
    :try_start_39
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_46

    .line 163
    :goto_3c
    :try_start_3c
    invoke-virtual {p0, v2}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    .line 151
    throw v3

    .line 172
    .end local v2    # "io":Ljava/lang/Object;, "TS;"
    :cond_40
    return-void

    .line 153
    .restart local v2    # "io":Ljava/lang/Object;, "TS;"
    :catch_41
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_46
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 153
    :catch_4b
    move-exception v0

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 159
    :catch_50
    move-exception v0

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catch_55
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5a
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5e} :catch_30

    goto :goto_13
.end method

.method public static process(Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;Z)V
    .registers 3
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "processor":Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;, "TT;"
    :try_start_0
    invoke-static {p0}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler;->process(Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_3
    .catch Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_3} :catch_4

    .line 194
    :goto_3
    return-void

    .line 188
    :catch_4
    move-exception v0

    .line 189
    .local v0, "e":Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$ExceptionChain;
    if-eqz p1, :cond_b

    .line 190
    invoke-virtual {v0}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$ExceptionChain;->printStackTrace()V

    goto :goto_3

    .line 192
    :cond_b
    throw v0
.end method
