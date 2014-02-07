.class final Lcom/android/server/firewall/SenderFilter$3;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 9
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerApp"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 83
    if-nez p3, :cond_4

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_3
    return v0

    :cond_4
    invoke-static {p3, p4, p5}, Lcom/android/server/firewall/SenderFilter;->isSystemApp(Landroid/content/pm/ApplicationInfo;II)Z

    move-result v0

    goto :goto_3
.end method
