.class public Lcom/android/server/ThermalService$ThermalParser;
.super Ljava/lang/Object;
.source "ThermalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThermalParser"
.end annotation


# static fields
.field private static final MIDTHERMAL:Ljava/lang/String; = "thermalconfig"

.field private static final PINFO:Ljava/lang/String; = "PlatformInfo"

.field private static final POLLDELAY:Ljava/lang/String; = "PollDelay"

.field private static final SENSOR:Ljava/lang/String; = "Sensor"

.field private static final THRESHOLD:Ljava/lang/String; = "Threshold"

.field private static final ZONE:Ljava/lang/String; = "Zone"


# instance fields
.field private done:Z

.field private mCurrSensor:Landroid/thermal/ThermalSensor;

.field private mCurrSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrZone:Landroid/thermal/ThermalZone;

.field mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field mInputStream:Ljava/io/FileReader;

.field mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

.field private mPollDelayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalZone;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tempZoneId:I

.field final synthetic this$0:Lcom/android/server/ThermalService;


# direct methods
.method constructor <init>(Lcom/android/server/ThermalService;Ljava/lang/String;)V
    .registers 7
    .param p2, "fname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/server/ThermalService$ThermalParser;->this$0:Lcom/android/server/ThermalService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ThermalService$ThermalParser;->done:Z

    .line 110
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    .line 111
    iput-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    .line 114
    :try_start_e
    const-string v2, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 115
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_29} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_29} :catch_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_29} :catch_5a

    .line 128
    :goto_29
    :try_start_29
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    .line 129
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    .line 132
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    .line 134
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_41} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_41} :catch_7f

    if-nez v2, :cond_68

    .line 143
    :cond_43
    :goto_43
    return-void

    .line 117
    :catch_44
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityException caught in ThermalParser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 119
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4f
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalArgumentException caught in ThermalParser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 121
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5a
    move-exception v1

    .line 122
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 123
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XmlPullParserException caught in ThermalParser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 135
    .end local v1    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_68
    :try_start_68
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v2, :cond_43

    .line 136
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_73} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_73} :catch_7f

    goto :goto_43

    .line 138
    :catch_74
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileNotFoundException Exception in ThermalParser()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 140
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_7f
    move-exception v0

    .line 141
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XmlPullParserException Exception in ThermalParser()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method


# virtual methods
.method public getPlatformInfo()Lcom/android/server/ThermalService$PlatformInfo;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    return-object v0
.end method

.method public getThermalZoneList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse()V
    .registers 6

    .prologue
    .line 154
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    if-nez v3, :cond_5

    .line 188
    :cond_4
    :goto_4
    return-void

    .line 156
    :cond_5
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v3, :cond_1a

    .line 158
    :try_start_9
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_4

    .line 159
    :catch_f
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IOException caught in parse() function"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 167
    .local v1, "mEventType":I
    :goto_20
    const/4 v3, 0x1

    if-eq v1, v3, :cond_59

    iget-boolean v3, p0, Lcom/android/server/ThermalService$ThermalParser;->done:Z

    if-nez v3, :cond_59

    .line 168
    packed-switch v1, :pswitch_data_64

    .line 179
    :goto_2a
    :pswitch_2a
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_20

    .line 170
    :pswitch_31
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StartDocument"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3a} :catch_4a

    goto :goto_2a

    .line 183
    .end local v1    # "mEventType":I
    :catch_3b
    move-exception v2

    .line 184
    .local v2, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_4

    .line 173
    .end local v2    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "mEventType":I
    :pswitch_40
    :try_start_40
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/ThermalService$ThermalParser;->processStartElement(Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_49} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_2a

    .line 185
    .end local v1    # "mEventType":I
    :catch_4a
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mEventType":I
    :pswitch_4f
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/ThermalService$ThermalParser;->processEndElement(Ljava/lang/String;)V

    goto :goto_2a

    .line 182
    :cond_59
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_62} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_62} :catch_4a

    goto :goto_4

    .line 168
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2a
        :pswitch_40
        :pswitch_4f
    .end packed-switch
.end method

.method processEndElement(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 282
    const-string v0, "Sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 284
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    .line 306
    :cond_16
    :goto_16
    return-void

    .line 286
    :cond_17
    const-string v0, "Zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    .line 289
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/thermal/ThermalZone;->setSensorList(Ljava/util/ArrayList;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    .line 292
    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    goto :goto_16

    .line 294
    :cond_3d
    const-string v0, "Threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v0, :cond_53

    .line 296
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/thermal/ThermalSensor;->setThermalThresholds(Ljava/util/ArrayList;)V

    .line 297
    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    goto :goto_16

    .line 298
    :cond_53
    const-string v0, "PollDelay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v0, :cond_69

    .line 300
    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/thermal/ThermalZone;->setPollDelay(Ljava/util/ArrayList;)V

    .line 301
    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    goto :goto_16

    .line 302
    :cond_69
    const-string v0, "thermalconfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 303
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Parsing Finished.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermalService$ThermalParser;->done:Z

    goto :goto_16
.end method

.method processStartElement(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    :try_start_0
    const-string v2, "PlatformInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 194
    new-instance v2, Lcom/android/server/ThermalService$PlatformInfo;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->this$0:Lcom/android/server/ThermalService;

    invoke-direct {v2, v3}, Lcom/android/server/ThermalService$PlatformInfo;-><init>(Lcom/android/server/ThermalService;)V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    .line 279
    :cond_11
    :goto_11
    return-void

    .line 195
    :cond_12
    const-string v2, "Sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 196
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    if-nez v2, :cond_25

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    .line 198
    :cond_25
    new-instance v2, Landroid/thermal/ThermalSensor;

    invoke-direct {v2}, Landroid/thermal/ThermalSensor;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_11

    .line 276
    :catch_2d
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    :try_start_32
    const-string v2, "Zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 200
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    goto :goto_11

    .line 204
    :cond_46
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    if-eqz v2, :cond_61

    const-string v2, "PlatformThermalStates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 205
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/ThermalService$PlatformInfo;->mMaxThermalStates:I

    goto :goto_11

    .line 206
    :cond_61
    const-string v2, "PowerOptimizationMode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 207
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/ThermalService;->isPowerOptimizationEnabled:I
    invoke-static {v2}, Lcom/android/server/ThermalService;->access$102(I)I

    goto :goto_11

    .line 210
    :cond_77
    const-string v2, "ZoneName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget v2, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ac

    .line 212
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "zoneName":Ljava/lang/String;
    const-string v2, "Modem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 218
    :goto_92
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_11

    .line 219
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    invoke-virtual {v2, v1}, Landroid/thermal/ThermalZone;->setZoneName(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget v3, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setZoneId(I)V

    goto/16 :goto_11

    .line 216
    :cond_a4
    new-instance v2, Landroid/thermal/ThermalZone;

    invoke-direct {v2}, Landroid/thermal/ThermalZone;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    goto :goto_92

    .line 222
    .end local v1    # "zoneName":Ljava/lang/String;
    :cond_ac
    const-string v2, "ZoneID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 223
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    goto/16 :goto_11

    .line 224
    :cond_c2
    const-string v2, "SupportsUEvent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_df

    .line 225
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setSupportsUEvent(I)V

    goto/16 :goto_11

    .line 226
    :cond_df
    const-string v2, "SensorLogic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fc

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_fc

    .line 227
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setSensorLogic(I)V

    goto/16 :goto_11

    .line 228
    :cond_fc
    const-string v2, "DebounceInterval"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_119

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_119

    .line 229
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setDBInterval(I)V

    goto/16 :goto_11

    .line 230
    :cond_119
    const-string v2, "PollDelay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12e

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_12e

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    goto/16 :goto_11

    .line 234
    :cond_12e
    const-string v2, "SensorID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_14b

    .line 235
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setSensorID(I)V

    goto/16 :goto_11

    .line 236
    :cond_14b
    const-string v2, "SensorName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_164

    .line 237
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setSensorName(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 238
    :cond_164
    const-string v2, "SensorPath"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17d

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_17d

    .line 239
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setSensorPath(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 240
    :cond_17d
    const-string v2, "InputTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_196

    .line 241
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setInputTempPath(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 242
    :cond_196
    const-string v2, "HighTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1af

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1af

    .line 243
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setHighTempPath(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 244
    :cond_1af
    const-string v2, "LowTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1c8

    .line 245
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setLowTempPath(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 246
    :cond_1c8
    const-string v2, "UEventDevPath"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1e1

    .line 247
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setUEventDevPath(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 248
    :cond_1e1
    const-string v2, "Threshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1f6

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    goto/16 :goto_11

    .line 252
    :cond_1f6
    const-string v2, "DelayTOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_217

    .line 253
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 254
    :cond_217
    const-string v2, "DelayNormal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_238

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_238

    .line 255
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 256
    :cond_238
    const-string v2, "DelayWarning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_259

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_259

    .line 257
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 258
    :cond_259
    const-string v2, "DelayAlert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27a

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_27a

    .line 259
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 260
    :cond_27a
    const-string v2, "DelayCritical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29b

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_29b

    .line 261
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 264
    :cond_29b
    const-string v2, "ThresholdTOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2bc

    .line 265
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 266
    :cond_2bc
    const-string v2, "ThresholdNormal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2dd

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2dd

    .line 267
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 268
    :cond_2dd
    const-string v2, "ThresholdWarning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2fe

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2fe

    .line 269
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 270
    :cond_2fe
    const-string v2, "ThresholdAlert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31f

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_31f

    .line 271
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 272
    :cond_31f
    const-string v2, "ThresholdCritical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 273
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33e} :catch_2d

    goto/16 :goto_11
.end method
