.class final Lcom/android/server/firewall/StringFilter$10;
.super Lcom/android/server/firewall/StringFilter$ValueProvider;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter$ValueProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 336
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 337
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 339
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method
