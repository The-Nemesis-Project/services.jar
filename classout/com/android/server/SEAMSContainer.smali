.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final KNOXCONTAINER:I = 0x1

.field public static final MYCONTAINER:I = 0x4

.field public static final NONE:I = 0x0

.field public static final PERSONACONTAINER:I = 0x2

.field public static final SECURED_APPTYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final THIRDPARTYCONTAINER:I = 0x3

.field public static final TRUSTED_APPTYPE:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 42
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "cat"    # Ljava/lang/String;
    .param p5, "appType"    # I

    .prologue
    .line 195
    const-class v33, Lcom/android/server/SEAMSContainer;

    monitor-enter v33

    :try_start_3
    const-string v32, "SEAMSContainer"

    const-string v34, "addEntryToMac_begin"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v13, 0x0

    .line 197
    .local v13, "isAddedMac":Z
    const/4 v14, 0x0

    .line 198
    .local v14, "macPermExists":Z
    const/4 v4, 0x0

    .line 201
    .local v4, "conType":I
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_210

    move-result-object v8

    .line 203
    .local v8, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 205
    .local v7, "doc":Lorg/w3c/dom/Document;
    :try_start_16
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 206
    .local v6, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_142

    .line 207
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "macPermFile exists "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v32

    if-nez v32, :cond_4f

    .line 210
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 211
    :cond_4f
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 212
    const/4 v14, 0x1

    .line 223
    :goto_56
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Element;->normalize()V

    .line 224
    const-string v32, "policy"

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 225
    .local v18, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v17, 0x0

    .line 226
    .local v17, "policyElement":Lorg/w3c/dom/Element;
    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v17, Lorg/w3c/dom/Element;

    .line 227
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v32, "signer"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_7d
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_7d} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16 .. :try_end_7d} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_16 .. :try_end_7d} :catch_264
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_7d} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_7d} :catch_6b0
    .catchall {:try_start_16 .. :try_end_7d} :catchall_210

    move-result-object v25

    .line 228
    .local v25, "signer":Lorg/w3c/dom/NodeList;
    const/16 v27, 0x0

    .line 229
    .local v27, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 230
    .local v26, "signerElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 231
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .line 232
    .local v15, "newElement":Lorg/w3c/dom/Element;
    const/16 v23, 0x0

    .line 235
    .local v23, "seinfoElement":Lorg/w3c/dom/Element;
    :try_start_86
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_8d} :catch_194
    .catch Lorg/xml/sax/SAXException; {:try_start_86 .. :try_end_8d} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_86 .. :try_end_8d} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_86 .. :try_end_8d} :catch_264
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_6b0
    .catchall {:try_start_86 .. :try_end_8d} :catchall_210

    move-result v4

    .line 240
    const/16 v29, 0x0

    .line 241
    .local v29, "specialTag":Ljava/lang/String;
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v4, v0, :cond_213

    .line 242
    const/16 v32, 0x2

    move/from16 v0, p5

    move/from16 v1, v32

    if-ne v0, v1, :cond_1be

    .line 243
    :try_start_9e
    const-string v29, "containerallowpackage"

    .line 244
    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 245
    const-string v32, "name"

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v32, "seinfo"

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v32, "containerallowcategory"

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_c1
    :goto_c1
    const-string v32, "SEAMSContainer"

    const-string v34, "addentrytomac - done with preparing entry"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_cd
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-ge v12, v0, :cond_353

    .line 271
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v27, Lorg/w3c/dom/Element;

    .line 272
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v32, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_508

    .line 274
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 275
    .local v11, "existElem":Lorg/w3c/dom/Element;
    if-eqz v11, :cond_406

    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v4, v0, :cond_406

    .line 277
    const/16 v32, 0x1

    move/from16 v0, p5

    move/from16 v1, v32

    if-ne v0, v1, :cond_28c

    .line 278
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, Existing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " entry for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", continuing with next step"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Lorg/xml/sax/SAXException; {:try_start_9e .. :try_end_13e} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9e .. :try_end_13e} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9e .. :try_end_13e} :catch_264
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_13e} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_13e} :catch_6b0
    .catchall {:try_start_9e .. :try_end_13e} :catchall_210

    .line 279
    const/16 v32, 0x1

    .line 430
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v11    # "existElem":Lorg/w3c/dom/Element;
    .end local v12    # "i":I
    .end local v15    # "newElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :goto_140
    monitor-exit v33

    return v32

    .line 214
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_142
    :try_start_142
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac,"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not exist, creating file"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v32

    if-nez v32, :cond_17a

    .line 218
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 219
    :cond_17a
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    .line 220
    const-string v32, "policy"

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 221
    .local v20, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_18b
    .catch Lorg/xml/sax/SAXException; {:try_start_142 .. :try_end_18b} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_142 .. :try_end_18b} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_142 .. :try_end_18b} :catch_264
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_18b} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_18b} :catch_6b0
    .catchall {:try_start_142 .. :try_end_18b} :catchall_210

    goto/16 :goto_56

    .line 419
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v20    # "rootElement":Lorg/w3c/dom/Element;
    :catch_18d
    move-exception v10

    .line 420
    .local v10, "e1":Lorg/xml/sax/SAXException;
    :try_start_18e
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_210

    .line 430
    .end local v10    # "e1":Lorg/xml/sax/SAXException;
    :goto_191
    const/16 v32, 0x0

    goto :goto_140

    .line 236
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v15    # "newElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_194
    move-exception v9

    .line 237
    .local v9, "e":Ljava/lang/NumberFormatException;
    :try_start_195
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "category: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " integer parse failed"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v32, 0x0

    goto :goto_140

    .line 248
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_1be
    const/16 v32, 0x1

    move/from16 v0, p5

    move/from16 v1, v32

    if-ne v0, v1, :cond_c1

    .line 249
    const-string v29, "service"

    .line 250
    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 251
    const-string v32, "name"

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v32, "seinfo"

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v32, "category"

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v32, "allowcategory"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "0,"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_209
    .catch Lorg/xml/sax/SAXException; {:try_start_195 .. :try_end_209} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_195 .. :try_end_209} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_195 .. :try_end_209} :catch_264
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_209} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_209} :catch_6b0
    .catchall {:try_start_195 .. :try_end_209} :catchall_210

    goto/16 :goto_c1

    .line 421
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v15    # "newElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :catch_20b
    move-exception v10

    .line 422
    .local v10, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_20c
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_20f
    .catchall {:try_start_20c .. :try_end_20f} :catchall_210

    goto :goto_191

    .line 195
    .end local v4    # "conType":I
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v13    # "isAddedMac":Z
    .end local v14    # "macPermExists":Z
    :catchall_210
    move-exception v32

    monitor-exit v33

    throw v32

    .line 256
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v4    # "conType":I
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13    # "isAddedMac":Z
    .restart local v14    # "macPermExists":Z
    .restart local v15    # "newElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_213
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ne v4, v0, :cond_26a

    .line 257
    :try_start_219
    const-string v29, "service"

    .line 258
    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 259
    const-string v32, "name"

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v32, "seinfo"

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v32, "category"

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v32, "allowcategory"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "0,"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ",501-1023"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_262
    .catch Lorg/xml/sax/SAXException; {:try_start_219 .. :try_end_262} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_219 .. :try_end_262} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_219 .. :try_end_262} :catch_264
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_262} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_262} :catch_6b0
    .catchall {:try_start_219 .. :try_end_262} :catchall_210

    goto/16 :goto_c1

    .line 423
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v15    # "newElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :catch_264
    move-exception v10

    .line 424
    .local v10, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_265
    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_268
    .catchall {:try_start_265 .. :try_end_268} :catchall_210

    goto/16 :goto_191

    .line 264
    .end local v10    # "e1":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v15    # "newElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_26a
    :try_start_26a
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac is not supported for containertype:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v32, 0x0

    goto/16 :goto_140

    .line 282
    .restart local v11    # "existElem":Lorg/w3c/dom/Element;
    .restart local v12    # "i":I
    :cond_28c
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v32

    const-string v34, "service"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2d4

    .line 283
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, Existing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " entry for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", continuing with next step"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v32, 0x1

    goto/16 :goto_140

    .line 286
    :cond_2d4
    const-string v32, "containerallowcategory"

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_31e

    .line 287
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, Existing "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " entry for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", return true and continue with next step"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 v32, 0x1

    goto/16 :goto_140

    .line 291
    :cond_31e
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ","

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, "containerallowcategory"

    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 295
    .local v16, "newValue":Ljava/lang/String;
    const-string v32, "containerallowcategory"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v13, 0x1

    .line 335
    .end local v11    # "existElem":Lorg/w3c/dom/Element;
    .end local v16    # "newValue":Ljava/lang/String;
    :cond_353
    :goto_353
    if-nez v13, :cond_3c7

    .line 337
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    .line 339
    .local v21, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v32, "signer"

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 340
    const-string v32, "seinfo"

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 341
    const-string v32, "allow-all"

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 342
    if-nez v21, :cond_50c

    .line 343
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v4, v0, :cond_3c0

    .line 344
    const-string/jumbo v32, "signature"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v32, "value"

    const-string/jumbo v34, "untrusted"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v32, "category"

    const-string v34, "1023"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v32, "allowcategory"

    const-string v34, "0,501-1023"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 349
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 350
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 402
    :cond_3c0
    :goto_3c0
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 404
    .end local v21    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3c7
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Element;->normalize()V

    .line 405
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v31

    .line 407
    .local v31, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v31 .. v31}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v30

    .line 408
    .local v30, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v28, 0x0

    .line 409
    .local v28, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v14, :cond_6b6

    .line 410
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v28

    invoke-direct {v0, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 414
    .restart local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_3e1
    new-instance v19, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 415
    .local v19, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v32

    if-eqz v32, :cond_402

    .line 417
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 418
    :cond_402
    const/16 v32, 0x1

    goto/16 :goto_140

    .line 298
    .end local v19    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v30    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v31    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v11    # "existElem":Lorg/w3c/dom/Element;
    :cond_406
    if-eqz v11, :cond_441

    const/16 v32, 0x4

    move/from16 v0, v32

    if-ne v4, v0, :cond_441

    .line 299
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac,package is already a part of container: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "category"

    move-object/from16 v0, v35

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v32, "SEAMSContainer"

    const-string v34, "addEntryToMac, return true and continue with next step"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/16 v32, 0x1

    goto/16 :goto_140

    .line 305
    :cond_441
    const-string v32, "seinfo"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 307
    .local v24, "seinfoNodeList":Lorg/w3c/dom/NodeList;
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    .line 308
    .local v22, "seinfoElem":Lorg/w3c/dom/Element;
    const-string/jumbo v32, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "curSeinfo":Ljava/lang/String;
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v4, v0, :cond_4ae

    const/16 v32, 0x2

    move/from16 v0, p5

    move/from16 v1, v32

    if-ne v0, v1, :cond_4ae

    .line 310
    const-string v32, "default"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_485

    const-string/jumbo v32, "untrusted"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4da

    .line 312
    :cond_485
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, newElement will have seinfo: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v32, "seinfo"

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_4ae
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 325
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, signature match found. Appending elem of ContainerType:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v13, 0x1

    .line 329
    goto/16 :goto_353

    .line 317
    :cond_4da
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, containerType:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "not an untrusted app, seinfo: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v32, 0x0

    goto/16 :goto_140

    .line 270
    .end local v5    # "curSeinfo":Ljava/lang/String;
    .end local v11    # "existElem":Lorg/w3c/dom/Element;
    .end local v22    # "seinfoElem":Lorg/w3c/dom/Element;
    .end local v24    # "seinfoNodeList":Lorg/w3c/dom/NodeList;
    :cond_508
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_cd

    .line 353
    .restart local v21    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    :cond_50c
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ne v4, v0, :cond_625

    .line 354
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v34, "untrusted"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_537

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v34, "gsd"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5ff

    .line 356
    :cond_537
    const-string/jumbo v32, "signature"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v32, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v32, "category"

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v32, "allowcategory"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v32, 0x2

    move/from16 v0, p5

    move/from16 v1, v32

    if-ne v0, v1, :cond_5e6

    .line 362
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5aa

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_5aa

    .line 366
    const-string v32, "SEAMSContainer"

    const-string v34, "addEntryToMac, same allowContainerCategory already exists for this package, return true and continue with next step"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v32, 0x1

    goto/16 :goto_140

    .line 370
    :cond_5aa
    move-object/from16 v16, p4

    .line 371
    .restart local v16    # "newValue":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5dd

    .line 372
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ","

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 376
    :cond_5dd
    const-string v32, "containerallowcategory"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v16    # "newValue":Ljava/lang/String;
    :cond_5e6
    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 380
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 381
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_5f7
    .catch Lorg/xml/sax/SAXException; {:try_start_26a .. :try_end_5f7} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_26a .. :try_end_5f7} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_26a .. :try_end_5f7} :catch_264
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_5f7} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_5f7} :catch_6b0
    .catchall {:try_start_26a .. :try_end_5f7} :catchall_210

    goto/16 :goto_3c0

    .line 425
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "i":I
    .end local v15    # "newElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :catch_5f9
    move-exception v10

    .line 426
    .local v10, "e1":Ljava/io/IOException;
    :try_start_5fa
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5fd
    .catchall {:try_start_5fa .. :try_end_5fd} :catchall_210

    goto/16 :goto_191

    .line 383
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "i":I
    .restart local v15    # "newElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_5ff
    :try_start_5ff
    const-string v32, "SEAMSContainer"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addEntryToMac, original seinfo is not untrusted, orig seinfo: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v32, 0x0

    goto/16 :goto_140

    .line 388
    :cond_625
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ne v4, v0, :cond_3c0

    .line 391
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "0,"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ",501-1023"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 392
    .restart local v16    # "newValue":Ljava/lang/String;
    const-string v32, "allowcategory"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v32, "signature"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string/jumbo v32, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v32, "category"

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v32, "allowcategory"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 398
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 399
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_6ae
    .catch Lorg/xml/sax/SAXException; {:try_start_5ff .. :try_end_6ae} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5ff .. :try_end_6ae} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5ff .. :try_end_6ae} :catch_264
    .catch Ljava/io/IOException; {:try_start_5ff .. :try_end_6ae} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_5ff .. :try_end_6ae} :catch_6b0
    .catchall {:try_start_5ff .. :try_end_6ae} :catchall_210

    goto/16 :goto_3c0

    .line 427
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "i":I
    .end local v15    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "newValue":Ljava/lang/String;
    .end local v17    # "policyElement":Lorg/w3c/dom/Element;
    .end local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :catch_6b0
    move-exception v9

    .line 428
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6b1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b4
    .catchall {:try_start_6b1 .. :try_end_6b4} :catchall_210

    goto/16 :goto_191

    .line 412
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "i":I
    .restart local v15    # "newElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v18    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v29    # "specialTag":Ljava/lang/String;
    .restart local v30    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v31    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_6b6
    :try_start_6b6
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_6bf
    .catch Lorg/xml/sax/SAXException; {:try_start_6b6 .. :try_end_6bf} :catch_18d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6b6 .. :try_end_6bf} :catch_20b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6b6 .. :try_end_6bf} :catch_264
    .catch Ljava/io/IOException; {:try_start_6b6 .. :try_end_6bf} :catch_5f9
    .catch Ljava/lang/Exception; {:try_start_6b6 .. :try_end_6bf} :catch_6b0
    .catchall {:try_start_6b6 .. :try_end_6bf} :catchall_210

    .restart local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_3e1
.end method

.method private static checkCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "newCat"    # Ljava/lang/String;

    .prologue
    .line 870
    const-string v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCategory: existingContAllowCat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newCat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "allowCats":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2b
    if-ge v2, v4, :cond_3a

    aget-object v3, v1, v2

    .line 874
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 875
    const/4 v5, 0x1

    .line 878
    .end local v3    # "item":Ljava/lang/String;
    :goto_36
    return v5

    .line 873
    .restart local v3    # "item":Ljava/lang/String;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 878
    .end local v3    # "item":Ljava/lang/String;
    :cond_3a
    const/4 v5, 0x0

    goto :goto_36
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 845
    if-nez p0, :cond_b

    .line 846
    const-string v2, "SEAMSContainer"

    const-string v3, "checkTrustedEntryExists: curElem is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    .line 861
    :cond_a
    :goto_a
    return-object v1

    .line 849
    :cond_b
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 850
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 852
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_12
    if-eqz v0, :cond_a

    .line 853
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 855
    const-string v2, "SEAMSContainer"

    const-string v3, "checkTrustedEntryExists, Match found..returning elem"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move-object v1, v0

    .line 857
    goto :goto_a

    .line 859
    :cond_35
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_12
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 9
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "specialTag"    # Ljava/lang/String;

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 825
    .local v2, "trustedPackageList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_48

    .line 826
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .line 827
    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const-string v3, "SEAMSContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTrustedEntryExists, curElem name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v3, "name"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 830
    const-string v3, "SEAMSContainer"

    const-string v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 835
    :goto_44
    return-object v3

    .line 825
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 835
    :cond_48
    const/4 v3, 0x0

    goto :goto_44
.end method

.method private static getContainerType(I)I
    .registers 4
    .param p0, "cat"    # I

    .prologue
    const/16 v2, 0xc7

    const/16 v1, 0x65

    const/4 v0, 0x1

    .line 805
    if-ne p0, v0, :cond_8

    .line 814
    :goto_7
    return v0

    .line 807
    :cond_8
    if-le p0, v0, :cond_e

    if-gt p0, v1, :cond_e

    .line 808
    const/4 v0, 0x2

    goto :goto_7

    .line 809
    :cond_e
    if-le p0, v1, :cond_14

    if-gt p0, v2, :cond_14

    .line 810
    const/4 v0, 0x3

    goto :goto_7

    .line 811
    :cond_14
    if-le p0, v2, :cond_1c

    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_1c

    .line 812
    const/4 v0, 0x4

    goto :goto_7

    .line 814
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p0, :cond_4

    .line 102
    :cond_3
    :goto_3
    return-object v1

    .line 98
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 99
    :catch_10
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "existContainerAllowCat"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v5, 0x0

    .line 889
    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, "srcCategories":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 891
    .local v4, "matchFound":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v3, :cond_35

    aget-object v2, v0, v1

    .line 892
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 893
    const/4 v4, 0x1

    .line 891
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 895
    :cond_19
    if-nez v5, :cond_1d

    .line 896
    move-object v5, v2

    goto :goto_16

    .line 898
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    .line 902
    .end local v2    # "item":Ljava/lang/String;
    :cond_35
    if-eqz v4, :cond_50

    .line 903
    const-string v7, "SEAMSContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeCategory, return: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_4f
    return-object v5

    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_50
    const/4 v5, 0x0

    goto :goto_4f
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 30
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cat"    # Ljava/lang/String;

    .prologue
    .line 675
    const-class v23, Lcom/android/server/SEAMSContainer;

    monitor-enter v23

    :try_start_3
    const-string v22, "SEAMSContainer"

    const-string v24, "removeEntryFromMac_begin"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v9, 0x0

    .line 677
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 680
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_300

    move-result-object v5

    .line 683
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_14
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 684
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 685
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1a0

    .line 686
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_2e

    .line 687
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 688
    :cond_2e
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 694
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 695
    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 696
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 697
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 698
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 699
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 703
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "the signer length is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7b
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_12c

    .line 705
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 706
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signature"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2ce

    .line 708
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "matched signature found "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 712
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    if-eqz v13, :cond_1ec

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v22

    const-string v24, "service"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1ec

    .line 713
    const-string v22, "category"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c9

    .line 714
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "removeEntryFromMac, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " match found for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "..deleting elem"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 717
    const/4 v9, 0x1

    .line 766
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    :cond_12c
    :goto_12c
    if-eqz v9, :cond_2d2

    .line 767
    const-string v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 768
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    const-string v22, "containerallowpackage"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 769
    .local v2, "contPackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_153

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_153

    .line 770
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 773
    :cond_153
    const-string v22, "SEAMSContainer"

    const-string v24, "removeEntryFromMac, Match found..deleted elem...writing to file"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 776
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 778
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 779
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 780
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 781
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 782
    const-string v22, "SEAMSContainer"

    const-string v24, " removeEntryFromMac, entry removed from mac_permissions.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .end local v2    # "contPackageList":Lorg/w3c/dom/NodeList;
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_18d
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_19c

    .line 789
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_19c
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_19c} :catch_2fa
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_19c} :catch_303
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_19c} :catch_309
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19c} :catch_30f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19c} :catch_315
    .catchall {:try_start_14 .. :try_end_19c} :catchall_300

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_19c
    :goto_19c
    move/from16 v22, v9

    .line 801
    :goto_19e
    monitor-exit v23

    return v22

    .line 690
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_1a0
    :try_start_1a0
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "removeEntryFromMac, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not exist, creating file"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/16 v22, 0x0

    goto :goto_19e

    .line 720
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_1c9
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "removeEntryFromMac, no match found for"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/16 v22, 0x0

    goto :goto_19e

    .line 724
    :cond_1ec
    if-eqz v13, :cond_2aa

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v22

    const-string v24, "containerallowpackage"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2aa

    .line 725
    const-string v22, "containerallowcategory"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_252

    .line 727
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "removeEntryFromMac, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " match found for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "..deleting elem"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 730
    const/4 v9, 0x1

    .line 731
    goto/16 :goto_12c

    .line 735
    :cond_252
    const-string v22, "SEAMSContainer"

    const-string v24, "it is for GTD with partial category match"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v22, "containerallowcategory"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 741
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_2ce

    .line 742
    const-string v22, "containerallowcategory"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "removeEntryFromMac, new allowContCat:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", seinfo:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "value"

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v9, 0x1

    .line 751
    goto/16 :goto_12c

    .line 759
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_2aa
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Signature matches but no entry for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/16 v22, 0x0

    goto/16 :goto_19e

    .line 704
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    :cond_2ce
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7b

    .line 785
    :cond_2d2
    const-string v22, "SEAMSContainer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " removeEntryFromMac, No match for packageName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ". Please check again"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f8
    .catch Lorg/xml/sax/SAXException; {:try_start_1a0 .. :try_end_2f8} :catch_2fa
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a0 .. :try_end_2f8} :catch_303
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a0 .. :try_end_2f8} :catch_309
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_2f8} :catch_30f
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_2f8} :catch_315
    .catchall {:try_start_1a0 .. :try_end_2f8} :catchall_300

    goto/16 :goto_18d

    .line 790
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_2fa
    move-exception v7

    .line 791
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_2fb
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_2fe
    .catchall {:try_start_2fb .. :try_end_2fe} :catchall_300

    goto/16 :goto_19c

    .line 675
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    .end local v9    # "isRemoveSuccess":Z
    .end local v15    # "seinfoElem":Lorg/w3c/dom/Element;
    :catchall_300
    move-exception v22

    monitor-exit v23

    throw v22

    .line 792
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "isRemoveSuccess":Z
    .restart local v15    # "seinfoElem":Lorg/w3c/dom/Element;
    :catch_303
    move-exception v7

    .line 793
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_304
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_19c

    .line 794
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_309
    move-exception v7

    .line 795
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_19c

    .line 796
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_30f
    move-exception v7

    .line 797
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19c

    .line 798
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_315
    move-exception v6

    .line 799
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_319
    .catchall {:try_start_304 .. :try_end_319} :catchall_300

    goto/16 :goto_19c
.end method


# virtual methods
.method public activateDomain(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 109
    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 26
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    .line 437
    monitor-enter p0

    const/4 v9, 0x0

    .line 438
    .local v9, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 441
    .local v15, "pw":Ljava/io/PrintWriter;
    :try_start_3
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v13, "inFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 443
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 453
    invoke-virtual {v13}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 454
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 457
    :cond_3d
    new-instance v17, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v17, "tempFile":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_67} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_67} :catch_15f
    .catchall {:try_start_3 .. :try_end_67} :catchall_198

    .line 460
    .end local v9    # "br":Ljava/io/BufferedReader;
    .local v10, "br":Ljava/io/BufferedReader;
    :try_start_67
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_75} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_75} :catch_1b8
    .catchall {:try_start_67 .. :try_end_75} :catchall_1c7

    .line 462
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v14, 0x0

    .local v14, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 463
    :try_start_84
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 465
    .local v8, "addedLine":Ljava/lang/String;
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the added seapp context line is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_a1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_104

    .line 468
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 469
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_b5} :catch_b6
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_b5} :catch_1bb
    .catchall {:try_start_84 .. :try_end_b5} :catchall_1ca

    goto :goto_a1

    .line 500
    .end local v8    # "addedLine":Ljava/lang/String;
    :catch_b6
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .line 501
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :goto_ba
    :try_start_ba
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove Seapp_context, Could not delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_ba .. :try_end_d4} :catchall_198

    .line 503
    const/4 v1, -0x1

    .line 535
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    :goto_d5
    monitor-exit p0

    return v1

    .line 472
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_d7
    :try_start_d7
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 473
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 474
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_ff

    .line 475
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete the file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_ff
    const/4 v1, 0x0

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_d5

    .line 483
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_104
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V

    .line 486
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 487
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 489
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_137

    .line 490
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove Seapp_context, Could not delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_d5

    .line 494
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_137
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_19b

    .line 495
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove Seapp_context, Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/io/FileNotFoundException; {:try_start_d7 .. :try_end_159} :catch_b6
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_159} :catch_1bb
    .catchall {:try_start_d7 .. :try_end_159} :catchall_1ca

    .line 497
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d5

    .line 504
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    :catch_15f
    move-exception v12

    .line 505
    .local v12, "ex":Ljava/io/IOException;
    :goto_160
    :try_start_160
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove Seapp_context, file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Other Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catchall {:try_start_160 .. :try_end_180} :catchall_198

    .line 509
    if-eqz v9, :cond_186

    .line 510
    :try_start_182
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 511
    const/4 v9, 0x0

    .line 513
    :cond_186
    if-eqz v15, :cond_18c

    .line 514
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18b} :catch_18f
    .catchall {:try_start_182 .. :try_end_18b} :catchall_198

    .line 515
    const/4 v15, 0x0

    .line 520
    :cond_18c
    :goto_18c
    const/4 v1, -0x1

    goto/16 :goto_d5

    .line 517
    :catch_18f
    move-exception v11

    .line 518
    .local v11, "e":Ljava/io/IOException;
    :try_start_190
    const-string v1, "SEAMSContainer"

    const-string v2, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_190 .. :try_end_197} :catchall_198

    goto :goto_18c

    .line 437
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Ljava/io/IOException;
    :catchall_198
    move-exception v1

    :goto_199
    monitor-exit p0

    throw v1

    .line 524
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_19b
    if-eqz v10, :cond_1d3

    .line 525
    :try_start_19d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1aa
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1ca

    .line 526
    const/4 v9, 0x0

    .line 528
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :goto_1a1
    if-eqz v16, :cond_1b3

    .line 529
    :try_start_1a3
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_1b6
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_1cf

    .line 530
    const/4 v15, 0x0

    .line 535
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :goto_1a7
    const/4 v1, 0x0

    goto/16 :goto_d5

    .line 532
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_1aa
    move-exception v11

    move-object v9, v10

    .line 533
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_1ac
    :try_start_1ac
    const-string v1, "SEAMSContainer"

    const-string v2, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_1ac .. :try_end_1b3} :catchall_1cf

    .end local v11    # "e":Ljava/io/IOException;
    :cond_1b3
    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_1a7

    .line 532
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_1b6
    move-exception v11

    goto :goto_1ac

    .line 504
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :catch_1b8
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_160

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_1bb
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_160

    .line 500
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    :catch_1c0
    move-exception v12

    goto/16 :goto_ba

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v17    # "tempFile":Ljava/io/File;
    :catch_1c3
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_ba

    .line 437
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :catchall_1c7
    move-exception v1

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_199

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_1ca
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_199

    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_1cf
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_199

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_1d3
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_1a1
.end method

.method public deActivateDomain(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public getActivationStatus()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, -0x1

    return v0
.end method

.method public getAllPackageNamefromContainer()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerIDfromPackageName(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, -0x3

    return v0
.end method

.method public getPackageNamesfromContainer(I)[Ljava/lang/String;
    .registers 3
    .param p1, "containerID"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 551
    if-nez p1, :cond_c

    .line 552
    const-string v7, "SEAMSContainer"

    const-string v8, "getSignatureFromPackage: packageName is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 567
    :cond_b
    :goto_b
    return-object v5

    .line 555
    :cond_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 556
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 558
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 559
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 560
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    array-length v7, v4

    if-ge v1, v7, :cond_b

    .line 562
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_32

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 565
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_32
    move-exception v0

    .line 566
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 567
    goto :goto_b
.end method

.method public loadContainerSetting(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 157
    const-string v2, "SEAMSContainer"

    const-string v3, "loadContainerSetting_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, -0x1

    .line 159
    .local v0, "ret":I
    if-nez p1, :cond_13

    .line 160
    const-string v2, "SEAMSContainer"

    const-string v3, "loadContainerSetting, packageName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 171
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_12
    return v1

    .line 163
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_13
    const-string v2, "SEAMSContainer"

    const-string v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 166
    iget-object v2, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 167
    const-string v2, "SEAMSContainer"

    const-string v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    :cond_34
    move v1, v0

    .line 171
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_12
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 27
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    .line 575
    monitor-enter p0

    const/4 v8, 0x0

    .line 576
    .local v8, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 579
    .local v15, "pw":Ljava/io/PrintWriter;
    const/4 v10, 0x0

    .line 580
    .local v10, "count":I
    :try_start_4
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v13, "inFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 583
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parameter is not an existing file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_17e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_12b
    .catchall {:try_start_4 .. :try_end_18} :catchall_164

    .line 584
    const/4 v1, -0x1

    .line 661
    .end local v13    # "inFile":Ljava/io/File;
    :goto_19
    monitor-exit p0

    return v1

    .line 587
    .restart local v13    # "inFile":Ljava/io/File;
    :cond_1b
    :try_start_1b
    new-instance v18, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .local v18, "tempFile":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_45} :catch_17e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_45} :catch_12b
    .catchall {:try_start_1b .. :try_end_45} :catchall_164

    .line 591
    .end local v8    # "br":Ljava/io/BufferedReader;
    .local v9, "br":Ljava/io/BufferedReader;
    :try_start_45
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_53} :catch_181
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_176
    .catchall {:try_start_45 .. :try_end_53} :catchall_185

    .line 593
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v14, 0x0

    .local v14, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 594
    :try_start_62
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 597
    .local v17, "removeLine":Ljava/lang/String;
    :goto_66
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a1

    .line 598
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 599
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_7c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7c} :catch_179
    .catchall {:try_start_62 .. :try_end_7c} :catchall_188

    goto :goto_66

    .line 626
    .end local v17    # "removeLine":Ljava/lang/String;
    :catch_7d
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .line 627
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :goto_81
    :try_start_81
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSeapp_context, Could not delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_164

    .line 629
    const/4 v1, -0x1

    goto/16 :goto_19

    .line 602
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    .restart local v18    # "tempFile":Ljava/io/File;
    :cond_9e
    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    .line 605
    :cond_a1
    :try_start_a1
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 606
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 607
    if-nez v10, :cond_dd

    .line 608
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 609
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSeapp_context, Could not delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_a1 .. :try_end_ce} :catch_7d
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ce} :catch_179
    .catchall {:try_start_a1 .. :try_end_ce} :catchall_188

    .line 650
    :cond_ce
    if-eqz v9, :cond_191

    .line 651
    :try_start_d0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_167
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_188

    .line 652
    const/4 v8, 0x0

    .line 654
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    :goto_d4
    if-eqz v16, :cond_170

    .line 655
    :try_start_d6
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_174
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_18d

    .line 656
    const/4 v15, 0x0

    .line 661
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :goto_da
    const/4 v1, 0x0

    goto/16 :goto_19

    .line 615
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_dd
    :try_start_dd
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_103

    .line 616
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSeapp_context, Could not delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_19

    .line 620
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_103
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 621
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSeapp_context, Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catch Ljava/io/FileNotFoundException; {:try_start_dd .. :try_end_125} :catch_7d
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_125} :catch_179
    .catchall {:try_start_dd .. :try_end_125} :catchall_188

    .line 623
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_19

    .line 630
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "removeLine":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    :catch_12b
    move-exception v12

    .line 631
    .local v12, "ex":Ljava/io/IOException;
    :goto_12c
    :try_start_12c
    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSeapp_context, file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Other Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_12c .. :try_end_14c} :catchall_164

    .line 635
    if-eqz v8, :cond_152

    .line 636
    :try_start_14e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 637
    const/4 v8, 0x0

    .line 639
    :cond_152
    if-eqz v15, :cond_158

    .line 640
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_157} :catch_15b
    .catchall {:try_start_14e .. :try_end_157} :catchall_164

    .line 641
    const/4 v15, 0x0

    .line 646
    :cond_158
    :goto_158
    const/4 v1, -0x1

    goto/16 :goto_19

    .line 643
    :catch_15b
    move-exception v11

    .line 644
    .local v11, "e":Ljava/io/IOException;
    :try_start_15c
    const-string v1, "SEAMSContainer"

    const-string v2, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_15c .. :try_end_163} :catchall_164

    goto :goto_158

    .line 575
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Ljava/io/IOException;
    :catchall_164
    move-exception v1

    :goto_165
    monitor-exit p0

    throw v1

    .line 658
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_167
    move-exception v11

    move-object v8, v9

    .line 659
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_169
    :try_start_169
    const-string v1, "SEAMSContainer"

    const-string v2, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catchall {:try_start_169 .. :try_end_170} :catchall_18d

    .end local v11    # "e":Ljava/io/IOException;
    :cond_170
    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_da

    .line 658
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_174
    move-exception v11

    goto :goto_169

    .line 630
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v17    # "removeLine":Ljava/lang/String;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :catch_176
    move-exception v12

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_12c

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_179
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_12c

    .line 626
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    :catch_17e
    move-exception v12

    goto/16 :goto_81

    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_181
    move-exception v12

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_81

    .line 575
    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :catchall_185
    move-exception v1

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_165

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_188
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_165

    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    :catchall_18d
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_165

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_191
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d4
.end method

.method public restartApp(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, -0x1

    return v0
.end method
