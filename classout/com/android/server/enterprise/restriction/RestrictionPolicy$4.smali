.class final Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;
.super Ljava/util/HashMap;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 292
    const-string v0, "debug.layout"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "persist.sys.ui.hw"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "debug.egl.force_msaa"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "debug.hwui.show_dirty_regions"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "debug.hwui.show_layers_updates"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method
