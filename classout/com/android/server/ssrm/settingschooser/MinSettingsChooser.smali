.class public Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "MinSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "currentSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    .local p2, "newSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    move-object v3, p1

    .line 30
    .local v3, "retValue":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->returnOption()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "mCurrentOption":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->returnOption()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "mNewOption":Ljava/lang/String;
    const-string v5, "forced"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "forced"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 34
    move-object v3, p1

    .line 48
    :cond_1a
    :goto_1a
    return-object v3

    .line 35
    :cond_1b
    const-string v5, "forced"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string v5, "forced"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 37
    move-object v3, p2

    goto :goto_1a

    .line 39
    :cond_2d
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 40
    .local v2, "newComparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 41
    .local v4, "value":I
    if-gez v4, :cond_3f

    .line 42
    move-object v3, p2

    goto :goto_1a

    .line 43
    :cond_3f
    if-lez v4, :cond_1a

    .line 44
    move-object v3, p1

    goto :goto_1a
.end method
