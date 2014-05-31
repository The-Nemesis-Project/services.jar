.class Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
.super Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
.source "DynamicLcdFrameRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicLCDFPS_ALL"
.end annotation


# instance fields
.field private LCD_FRAME_RATE_PATH:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V
    .registers 3

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSysfsPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public setSysfsPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 145
    return-void
.end method
