.class public Lcom/android/server/pm/xmlCheckExt;
.super Ljava/lang/Object;
.source "xmlCheckExt.java"

# interfaces
.implements Lcom/android/server/pm/ICheckExt;


# instance fields
.field private final CHECKXMLPATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "xmlCheckExt"

    iput-object v0, p0, Lcom/android/server/pm/xmlCheckExt;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "/system/lib/arm/check.xml"

    iput-object v0, p0, Lcom/android/server/pm/xmlCheckExt;->CHECKXMLPATH:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addTag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 108
    move-object v0, p2

    .line 109
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v1, "xmlCheckExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 111
    iget-object v1, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method checkPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 118
    const/4 v1, 0x0

    .line 120
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_b
.end method

.method public varargs doCheck([Ljava/lang/String;)Z
    .registers 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    .local v5, "param":Ljava/lang/String;
    const/4 v6, 0x0

    .line 45
    .local v6, "param_tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 49
    .local v3, "in":Ljava/io/InputStream;
    :try_start_5
    array-length v10, p1

    if-nez v10, :cond_9

    .line 95
    :cond_8
    :goto_8
    return v9

    .line 51
    :cond_9
    const/4 v10, 0x0

    aget-object v5, p1, v10

    .line 52
    const/4 v10, 0x1

    aget-object v6, p1, v10

    .line 53
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 54
    .local v8, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/lib/arm/check.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 57
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_25} :catch_ae
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_25} :catch_ac
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_25} :catch_9f

    .line 58
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_25
    const-string/jumbo v9, "utf-8"

    invoke-interface {v8, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 61
    .local v1, "eventType":I
    :goto_2f
    if-eq v1, v12, :cond_9d

    .line 62
    packed-switch v1, :pswitch_data_b0

    .line 75
    :goto_34
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2f

    .line 64
    :pswitch_39
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v9, "xmlCheckExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/android/server/pm/xmlCheckExt;->addTag(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_63} :catch_64
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_63} :catch_97
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_63} :catch_a9

    goto :goto_34

    .line 77
    .end local v1    # "eventType":I
    .end local v7    # "tag":Ljava/lang/String;
    :catch_64
    move-exception v0

    move-object v3, v4

    .line 79
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_66
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_69
    if-eqz v3, :cond_6e

    .line 90
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_a4

    .line 95
    :cond_6e
    :goto_6e
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/xmlCheckExt;->checkPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_8

    .line 69
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_73
    :try_start_73
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 70
    .restart local v7    # "tag":Ljava/lang/String;
    const-string/jumbo v9, "xmlCheckExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "</"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_96} :catch_64
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_96} :catch_97
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_96} :catch_a9

    goto :goto_34

    .line 80
    .end local v1    # "eventType":I
    .end local v7    # "tag":Ljava/lang/String;
    :catch_97
    move-exception v0

    move-object v3, v4

    .line 82
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_99
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_69

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9d
    move-object v3, v4

    .line 86
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_69

    .line 83
    .end local v1    # "eventType":I
    .end local v2    # "file":Ljava/io/File;
    .end local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9f
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    :goto_a0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a4
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a9
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_a0

    .line 80
    .end local v2    # "file":Ljava/io/File;
    .end local v8    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_ac
    move-exception v0

    goto :goto_99

    .line 77
    :catch_ae
    move-exception v0

    goto :goto_66

    .line 62
    :pswitch_data_b0
    .packed-switch 0x2
        :pswitch_39
        :pswitch_73
    .end packed-switch
.end method
