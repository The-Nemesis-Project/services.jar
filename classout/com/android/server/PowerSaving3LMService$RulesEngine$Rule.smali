.class Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;
.super Ljava/lang/Object;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService$RulesEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rule"
.end annotation


# instance fields
.field private mPermitted:Z

.field private final mRegex:Ljava/util/regex/Pattern;

.field private final mRegexStr:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/PowerSaving3LMService$RulesEngine;


# direct methods
.method constructor <init>(Lcom/android/server/PowerSaving3LMService$RulesEngine;Ljava/lang/String;Z)V
    .registers 5
    .param p2, "regexStr"    # Ljava/lang/String;
    .param p3, "permitted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->this$1:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    .line 429
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;

    .line 430
    iput-boolean p3, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mPermitted:Z

    .line 431
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mPermitted:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;
    .param p1, "x1"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mPermitted:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Ljava/util/regex/Pattern;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;

    return-object v0
.end method
