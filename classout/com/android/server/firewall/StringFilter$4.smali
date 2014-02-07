.class final Lcom/android/server/firewall/StringFilter$4;
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
    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter$ValueProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
