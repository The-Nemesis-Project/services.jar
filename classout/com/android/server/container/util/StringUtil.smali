.class public Lcom/android/server/container/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final MOUNTPATH_CONTAINERIZED_APP:Ljava/lang/String; = "/data/data?/"

.field private static final MOUNTPATH_CONTAINERIZED_APP_SDCARD:Ljava/lang/String; = "/mnt_?/sdcard_?/"

.field private static final PATH_CONTAINERIZED_APP:Ljava/lang/String; = "/data/data/"

.field private static final PATH_CONTAINERIZED_APP_SDCARD1:Ljava/lang/String; = "/mnt/sdcard/"

.field private static final PATH_CONTAINERIZED_APP_SDCARD2:Ljava/lang/String; = "/storage/sdcard0/"

.field private static final PATH_CONTAINERIZED_APP_SDCARD3:Ljava/lang/String; = "/storage/emulated/0/"

.field private static final PATH_CONTAINERIZED_APP_SDCARD4:Ljava/lang/String; = "/storage/emulated/legacy/"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBroadcastingKey(II)Ljava/lang/String;
    .registers 4
    .param p0, "cid"    # I
    .param p1, "event"    # I

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEventStrings([I)[Ljava/lang/String;
    .registers 5
    .param p0, "values"    # [I

    .prologue
    .line 37
    if-eqz p0, :cond_6

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_8

    .line 38
    :cond_6
    const/4 v1, 0x0

    .line 43
    :cond_7
    return-object v1

    .line 39
    :cond_8
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 40
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_7

    .line 41
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static getMountedPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "containerId"    # I

    .prologue
    .line 58
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_b

    .line 59
    :cond_9
    const/4 p0, 0x0

    .line 79
    .end local p0    # "path":Ljava/lang/String;
    :cond_a
    :goto_a
    return-object p0

    .line 61
    .restart local p0    # "path":Ljava/lang/String;
    :cond_b
    const-string v2, "/data/data/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 62
    const-string v2, "/data/data?/"

    const-string v3, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mountpathAppPrimary":Ljava/lang/String;
    const-string v2, "^/data/data/"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    goto :goto_a

    .line 66
    .end local v0    # "mountpathAppPrimary":Ljava/lang/String;
    :cond_26
    const-string v2, "/mnt_?/sdcard_?/"

    const-string v3, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "mountpathAppSdcard":Ljava/lang/String;
    const-string v2, "/mnt/sdcard/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 68
    const-string v2, "^/mnt/sdcard/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 70
    :cond_41
    const-string v2, "/storage/sdcard0/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 71
    const-string v2, "^/storage/sdcard0/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 73
    :cond_50
    const-string v2, "/storage/emulated/0/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 74
    const-string v2, "^/storage/emulated/0/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 76
    :cond_5f
    const-string v2, "/storage/emulated/legacy/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 77
    const-string v2, "^/storage/emulated/legacy/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method

.method public static getRegisteringKey(II)[Ljava/lang/String;
    .registers 4
    .param p0, "cid"    # I
    .param p1, "event"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteringKey(I[I)[Ljava/lang/String;
    .registers 6
    .param p0, "cid"    # I
    .param p1, "event"    # [I

    .prologue
    .line 19
    if-eqz p1, :cond_6

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_8

    .line 20
    :cond_6
    const/4 v1, 0x0

    .line 25
    :cond_7
    return-object v1

    .line 21
    :cond_8
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 22
    .local v1, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_7

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method
