.class Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
.super Lcom/android/server/ssrm/settings/SettingWriter;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomSettingWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/settings/SettingWriter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->this$0:Lcom/android/server/ssrm/Monitor;

    .line 616
    invoke-direct {p0, p2}, Lcom/android/server/ssrm/settings/SettingWriter;-><init>(Ljava/lang/String;)V

    .line 617
    return-void
.end method


# virtual methods
.method protected applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "setting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    return-void
.end method

.method protected convertToValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertToValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;->convertToValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
