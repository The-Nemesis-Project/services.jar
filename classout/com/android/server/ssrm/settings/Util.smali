.class Lcom/android/server/ssrm/settings/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static indentText(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p0, "multilineText"    # Ljava/lang/String;
    .param p1, "indentionSize"    # I

    .prologue
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-array v3, p1, [C

    .line 25
    .local v3, "indentionChars":[C
    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-static {v3, v7, p1, v8}, Ljava/util/Arrays;->fill([CIIC)V

    .line 26
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 27
    .local v2, "indention":Ljava/lang/String;
    const-string v7, "\\n"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1a
    if-ge v1, v4, :cond_3b

    aget-object v6, v0, v1

    .line 28
    .local v6, "token":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 30
    .end local v6    # "token":Ljava/lang/String;
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
