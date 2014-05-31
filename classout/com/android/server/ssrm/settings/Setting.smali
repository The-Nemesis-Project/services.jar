.class public Lcom/android/server/ssrm/settings/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mOption:Ljava/lang/String;

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mWriter:Lcom/android/server/ssrm/settings/SettingWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/android/server/ssrm/settings/SettingWriter;Ljava/lang/String;)V
    .registers 4
    .param p3, "valueOption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/android/server/ssrm/settings/Setting;->mWriter:Lcom/android/server/ssrm/settings/SettingWriter;

    .line 32
    iput-object p1, p0, Lcom/android/server/ssrm/settings/Setting;->mValue:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lcom/android/server/ssrm/settings/Setting;->mOption:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "aThat"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_5

    .line 56
    :goto_4
    return v0

    .line 47
    :cond_5
    instance-of v3, p1, Lcom/android/server/ssrm/settings/Setting;

    if-nez v3, :cond_b

    move v0, v2

    .line 48
    goto :goto_4

    :cond_b
    move-object v1, p1

    .line 51
    check-cast v1, Lcom/android/server/ssrm/settings/Setting;

    .line 52
    .local v1, "that":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/settings/Setting;->mWriter:Lcom/android/server/ssrm/settings/SettingWriter;

    iget-object v4, v1, Lcom/android/server/ssrm/settings/Setting;->mWriter:Lcom/android/server/ssrm/settings/SettingWriter;

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lcom/android/server/ssrm/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/ssrm/settings/Setting;->mValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lcom/android/server/ssrm/settings/Setting;->mOption:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/ssrm/settings/Setting;->mOption:Ljava/lang/String;

    if-ne v3, v4, :cond_21

    .line 56
    .local v0, "IsEquals":Z
    :goto_20
    goto :goto_4

    .end local v0    # "IsEquals":Z
    :cond_21
    move v0, v2

    .line 52
    goto :goto_20
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 62
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    const/16 v0, 0x11

    .line 65
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/ssrm/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 67
    return v0
.end method

.method public returnOption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/settings/Setting;->mOption:Ljava/lang/String;

    return-object v0
.end method

.method public stringValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/ssrm/settings/Setting;->mWriter:Lcom/android/server/ssrm/settings/SettingWriter;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/Setting;->stringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/settings/Setting;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final write()V
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/settings/Setting;->mWriter:Lcom/android/server/ssrm/settings/SettingWriter;

    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/SettingWriter;->setCurrentSetting(Lcom/android/server/ssrm/settings/Setting;)V

    .line 38
    return-void
.end method
