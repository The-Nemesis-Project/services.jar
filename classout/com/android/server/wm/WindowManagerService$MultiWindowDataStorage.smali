.class Lcom/android/server/wm/WindowManagerService$MultiWindowDataStorage;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowDataStorage"
.end annotation


# static fields
.field public static final SAVE_FNAME_ARRANGE:Ljava/lang/String; = "arrangemode"

.field public static final TAG:Ljava/lang/String; = "MultiWindowDataStorage"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 1140
    const/4 v0, 0x0

    .line 1141
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v5, "strArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_74
    .catchall {:try_start_6 .. :try_end_15} :catchall_58

    .line 1147
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 1148
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_71

    goto :goto_15

    .line 1150
    .end local v3    # "s":Ljava/lang/String;
    :catch_1f
    move-exception v2

    move-object v0, v1

    .line 1151
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_21
    :try_start_21
    const-string v6, "MultiWindowDataStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_58

    .line 1154
    if-eqz v0, :cond_3e

    .line 1155
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_53

    .line 1162
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_64

    .line 1163
    const/4 v6, 0x0

    .line 1168
    :goto_45
    return-object v6

    .line 1154
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_46
    if-eqz v1, :cond_4b

    .line 1155
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4d

    :cond_4b
    move-object v0, v1

    .line 1159
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 1157
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4d
    move-exception v2

    .line 1158
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 1160
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 1157
    .end local v3    # "s":Ljava/lang/String;
    :catch_53
    move-exception v2

    .line 1158
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 1153
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v6

    .line 1154
    :goto_59
    if-eqz v0, :cond_5e

    .line 1155
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 1159
    :cond_5e
    :goto_5e
    throw v6

    .line 1157
    :catch_5f
    move-exception v2

    .line 1158
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    .line 1166
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_64
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 1168
    .local v4, "str":[Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_45

    .line 1153
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "str":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_71
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_59

    .line 1150
    :catch_74
    move-exception v2

    goto :goto_21
.end method

.method public static store(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "str"    # [Ljava/lang/String;

    .prologue
    .line 1172
    const/4 v1, 0x0

    .line 1175
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_2d
    .catchall {:try_start_1 .. :try_end_10} :catchall_3d

    .line 1176
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_11
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_13
    if-ge v4, v5, :cond_20

    aget-object v6, v0, v4

    .line 1177
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_4c
    .catchall {:try_start_11 .. :try_end_1d} :catchall_49

    .line 1176
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1180
    .end local v6    # "s":Ljava/lang/String;
    :cond_20
    const/4 v7, 0x1

    .line 1185
    if-eqz v2, :cond_26

    .line 1186
    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_28

    :cond_26
    :goto_26
    move-object v1, v2

    .line 1192
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :goto_27
    return v7

    .line 1188
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :catch_28
    move-exception v3

    .line 1189
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 1181
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_2d
    move-exception v3

    .line 1182
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3d

    .line 1185
    if-eqz v1, :cond_36

    .line 1186
    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_38

    .line 1192
    :cond_36
    :goto_36
    const/4 v7, 0x0

    goto :goto_27

    .line 1188
    :catch_38
    move-exception v3

    .line 1189
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 1184
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v7

    .line 1185
    :goto_3e
    if-eqz v1, :cond_43

    .line 1186
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    .line 1190
    :cond_43
    :goto_43
    throw v7

    .line 1188
    :catch_44
    move-exception v3

    .line 1189
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 1184
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :catchall_49
    move-exception v7

    move-object v1, v2

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3e

    .line 1181
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :catch_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2e
.end method
