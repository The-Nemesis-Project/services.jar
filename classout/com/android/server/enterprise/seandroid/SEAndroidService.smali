.class public Lcom/android/server/enterprise/seandroid/SEAndroidService;
.super Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;
.source "SEAndroidService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_PERMISSIONS_FILEPATH:Ljava/io/File; = null

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAC_TEMP:Ljava/io/File; = null

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static SEAPP_CONTEXTS_FILEPATH:Ljava/io/File; = null

.field private static SEAPP_TEMP:Ljava/io/File; = null

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAndroidPolicy"


# instance fields
.field private gotSignatureMatch:Z

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_temp.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    .line 115
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/seapp_temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    .line 129
    iput-object p1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 131
    return-void
.end method

.method private addNewDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newDomain"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;

    .prologue
    .line 929
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 930
    const-string v5, "3"

    .line 931
    .local v5, "level":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 932
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->createTempFile()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 933
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .local v7, "isAddedMac":Z
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 934
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 935
    .local v8, "isAddedSeapp":Z
    and-int v6, v7, v8

    .line 936
    .local v6, "isAdded":Z
    return v6
.end method

.method private addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newDomain"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;

    .prologue
    .line 949
    const/4 v11, 0x0

    .line 950
    .local v11, "isAddedMac":Z
    const/4 v12, 0x0

    .line 952
    .local v12, "isContainerAllowedPackage":Z
    sget-object v25, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    .line 953
    .local v25, "xmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 956
    .local v7, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_8
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v21, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 958
    if-nez v21, :cond_16

    .line 959
    const/16 v26, 0x0

    .line 1016
    .end local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15
    return v26

    .line 961
    .restart local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 962
    .local v3, "Signature":Ljava/lang/String;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 963
    .local v6, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 964
    .local v8, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    .line 965
    const-string v26, "policy"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 966
    .local v15, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 967
    .local v14, "policyElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v14, Lorg/w3c/dom/Element;

    .line 968
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 969
    .local v18, "signer":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 971
    .local v20, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_52
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_9b

    .line 972
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 973
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v26, "signature"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13f

    .line 974
    const-string v26, "containerAllowedPackage"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 975
    .local v5, "containerAllowedPackageElement":Lorg/w3c/dom/Element;
    const-string v26, "name"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v26, "level"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 978
    const/4 v12, 0x1

    .line 983
    .end local v5    # "containerAllowedPackageElement":Lorg/w3c/dom/Element;
    :cond_9b
    if-nez v12, :cond_f4

    .line 984
    const-string/jumbo v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 985
    .local v19, "signerElement":Lorg/w3c/dom/Element;
    const-string v26, "seinfo"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 986
    .local v17, "seinfoElement":Lorg/w3c/dom/Element;
    const-string v26, "level"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 987
    .local v13, "levelElement":Lorg/w3c/dom/Element;
    const-string v26, "allowall"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 988
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const-string/jumbo v26, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string/jumbo v26, "signature"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 992
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 993
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 994
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 996
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v13    # "levelElement":Lorg/w3c/dom/Element;
    .end local v17    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v19    # "signerElement":Lorg/w3c/dom/Element;
    :cond_f4
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    .line 997
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    .line 998
    .local v24, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    .line 999
    .local v23, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1000
    .local v22, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    sget-object v26, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1001
    .local v16, "result":Ljavax/xml/transform/stream/StreamResult;
    const-string v26, "indent"

    const-string/jumbo v27, "yes"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string/jumbo v26, "{http://xml.apache.org/xslt}indent-amount"

    const-string v27, "2"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_13a
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_13a} :catch_143
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_13a} :catch_148
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13a} :catch_14d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_13a} :catch_152

    .line 1005
    const/4 v11, 0x1

    .end local v3    # "Signature":Ljava/lang/String;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v18    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v23    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v24    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_13b
    move/from16 v26, v11

    .line 1016
    goto/16 :goto_15

    .line 971
    .restart local v3    # "Signature":Ljava/lang/String;
    .restart local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v10    # "i":I
    .restart local v14    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_52

    .line 1007
    .end local v3    # "Signature":Ljava/lang/String;
    .end local v6    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v14    # "policyElement":Lorg/w3c/dom/Element;
    .end local v15    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v18    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v21    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_143
    move-exception v9

    .line 1008
    .local v9, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_13b

    .line 1009
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :catch_148
    move-exception v9

    .line 1010
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_13b

    .line 1011
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_14d
    move-exception v9

    .line 1012
    .local v9, "e1":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13b

    .line 1013
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_152
    move-exception v9

    .line 1014
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_13b
.end method

.method private addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newDomain"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "dataType"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/String;

    .prologue
    .line 1027
    const/4 v11, 0x0

    .line 1029
    .local v11, "isAddedSeapp":Z
    const/4 v5, 0x0

    .line 1030
    .local v5, "fstream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 1031
    .local v9, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 1032
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1036
    .local v7, "fstreamWrite":Ljava/io/FileWriter;
    :try_start_5
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v16, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_1d5
    .catchall {:try_start_5 .. :try_end_e} :catchall_1a6

    .line 1038
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .local v6, "fstream":Ljava/io/FileInputStream;
    :try_start_e
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1d8
    .catchall {:try_start_e .. :try_end_13} :catchall_1c3

    .line 1039
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "in":Ljava/io/DataInputStream;
    :try_start_13
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_21} :catch_1dc
    .catchall {:try_start_13 .. :try_end_21} :catchall_1c6

    .line 1041
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1042
    .local v4, "fileContent":Ljava/lang/StringBuilder;
    :goto_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "strLine":Ljava/lang/String;
    if-eqz v14, :cond_6c

    .line 1043
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_37
    .catchall {:try_start_21 .. :try_end_36} :catchall_1ca

    goto :goto_26

    .line 1072
    .end local v4    # "fileContent":Ljava/lang/StringBuilder;
    .end local v14    # "strLine":Ljava/lang/String;
    :catch_37
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .line 1073
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    :goto_3b
    :try_start_3b
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_1a6

    .line 1076
    if-eqz v1, :cond_5c

    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1077
    :cond_5c
    if-eqz v9, :cond_61

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1078
    :cond_61
    if-eqz v5, :cond_66

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1079
    :cond_66
    if-eqz v7, :cond_6b

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6b} :catch_1be

    .line 1082
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    return v11

    .line 1046
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileContent":Ljava/lang/StringBuilder;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "strLine":Ljava/lang/String;
    :cond_6c
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1047
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 1048
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1050
    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "1"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "2"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "3"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "4"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "5"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "6"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, "7"

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "8"

    aput-object v17, v15, v16

    .line 1051
    .local v15, "tokens":[Ljava/lang/String;
    const/16 v16, 0x0

    const-string/jumbo v17, "user=_app"

    aput-object v17, v15, v16

    .line 1052
    const/16 v16, 0x1

    const-string v17, "seinfo="

    aput-object v17, v15, v16

    .line 1053
    const/16 v16, 0x2

    aput-object p3, v15, v16

    .line 1054
    const/16 v16, 0x3

    const-string v17, "domain="

    aput-object v17, v15, v16

    .line 1055
    const/16 v16, 0x4

    aput-object p2, v15, v16

    .line 1056
    const/16 v16, 0x5

    const-string/jumbo v17, "type="

    aput-object v17, v15, v16

    .line 1057
    const/16 v16, 0x6

    aput-object p4, v15, v16

    .line 1058
    const/16 v16, 0x7

    const-string v17, "level="

    aput-object v17, v15, v16

    .line 1059
    const/16 v16, 0x8

    aput-object p5, v15, v16

    .line 1060
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x4

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x6

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x7

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x8

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1063
    .local v12, "newLine":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    new-instance v8, Ljava/io/FileWriter;

    sget-object v16, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_15d} :catch_37
    .catchall {:try_start_6c .. :try_end_15d} :catchall_1ca

    .line 1066
    .end local v7    # "fstreamWrite":Ljava/io/FileWriter;
    .local v8, "fstreamWrite":Ljava/io/FileWriter;
    :try_start_15d
    new-instance v13, Ljava/io/BufferedWriter;

    invoke-direct {v13, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1067
    .local v13, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    .line 1069
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    .line 1070
    const-string v16, "SEAndroidPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New Line Added = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_18b} :catch_1e1
    .catchall {:try_start_15d .. :try_end_18b} :catchall_1cf

    .line 1071
    const/4 v11, 0x1

    .line 1076
    if-eqz v2, :cond_191

    :try_start_18e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1077
    :cond_191
    if-eqz v10, :cond_196

    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 1078
    :cond_196
    if-eqz v6, :cond_19b

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1079
    :cond_19b
    if-eqz v8, :cond_1a0

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_1a0} :catch_1bc

    :cond_1a0
    :goto_1a0
    move-object v7, v8

    .end local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v7    # "fstreamWrite":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .line 1081
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_6b

    .line 1075
    .end local v4    # "fileContent":Ljava/lang/StringBuilder;
    .end local v12    # "newLine":Ljava/lang/String;
    .end local v13    # "out":Ljava/io/BufferedWriter;
    .end local v14    # "strLine":Ljava/lang/String;
    .end local v15    # "tokens":[Ljava/lang/String;
    :catchall_1a6
    move-exception v16

    .line 1076
    :goto_1a7
    if-eqz v1, :cond_1ac

    :try_start_1a9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1077
    :cond_1ac
    if-eqz v9, :cond_1b1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 1078
    :cond_1b1
    if-eqz v5, :cond_1b6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1079
    :cond_1b6
    if-eqz v7, :cond_1bb

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1bb} :catch_1c1

    .line 1075
    :cond_1bb
    :goto_1bb
    throw v16

    .line 1080
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v7    # "fstreamWrite":Ljava/io/FileWriter;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileContent":Ljava/lang/StringBuilder;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "newLine":Ljava/lang/String;
    .restart local v13    # "out":Ljava/io/BufferedWriter;
    .restart local v14    # "strLine":Ljava/lang/String;
    .restart local v15    # "tokens":[Ljava/lang/String;
    :catch_1bc
    move-exception v16

    goto :goto_1a0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fileContent":Ljava/lang/StringBuilder;
    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .end local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .end local v10    # "in":Ljava/io/DataInputStream;
    .end local v12    # "newLine":Ljava/lang/String;
    .end local v13    # "out":Ljava/io/BufferedWriter;
    .end local v14    # "strLine":Ljava/lang/String;
    .end local v15    # "tokens":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    :catch_1be
    move-exception v16

    goto/16 :goto_6b

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1c1
    move-exception v17

    goto :goto_1bb

    .line 1075
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catchall_1c3
    move-exception v16

    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1a7

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_1c6
    move-exception v16

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1a7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_1ca
    move-exception v16

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1a7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v7    # "fstreamWrite":Ljava/io/FileWriter;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileContent":Ljava/lang/StringBuilder;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "newLine":Ljava/lang/String;
    .restart local v14    # "strLine":Ljava/lang/String;
    .restart local v15    # "tokens":[Ljava/lang/String;
    :catchall_1cf
    move-exception v16

    move-object v7, v8

    .end local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v7    # "fstreamWrite":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1a7

    .line 1072
    .end local v4    # "fileContent":Ljava/lang/StringBuilder;
    .end local v12    # "newLine":Ljava/lang/String;
    .end local v14    # "strLine":Ljava/lang/String;
    .end local v15    # "tokens":[Ljava/lang/String;
    :catch_1d5
    move-exception v3

    goto/16 :goto_3b

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    :catch_1d8
    move-exception v3

    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_3b

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catch_1dc
    move-exception v3

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_3b

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v7    # "fstreamWrite":Ljava/io/FileWriter;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileContent":Ljava/lang/StringBuilder;
    .restart local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "newLine":Ljava/lang/String;
    .restart local v14    # "strLine":Ljava/lang/String;
    .restart local v15    # "tokens":[Ljava/lang/String;
    :catch_1e1
    move-exception v3

    move-object v7, v8

    .end local v8    # "fstreamWrite":Ljava/io/FileWriter;
    .restart local v7    # "fstreamWrite":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_3b
.end method

.method private declared-synchronized adminLockPolicy(ZI)Z
    .registers 9
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 616
    monitor-enter p0

    :try_start_1
    const-string v3, "SEAndroidPolicy"

    const-string v4, "adminLockPolicy_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v2, 0x0

    .line 618
    .local v2, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_50

    move-result v3

    if-eqz v3, :cond_2c

    .line 620
    :try_start_f
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Locking on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 622
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "SeAndroidPolicyLocked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SE_ANDROID_TABLE"

    invoke-virtual {v3, p2, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_46
    .catchall {:try_start_f .. :try_end_2b} :catchall_50

    move-result v2

    .line 629
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPolicy result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_50

    .line 630
    monitor-exit p0

    return v2

    .line 624
    :catch_46
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Exception on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    .line 626
    const/4 v2, 0x0

    goto :goto_2c

    .line 616
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":Z
    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized allowChanges(I)Z
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 744
    monitor-enter p0

    :try_start_1
    const-string v2, "SEAndroidPolicy"

    const-string v3, "allowChanges_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v1, 0x0

    .line 747
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "requestAgent":Ljava/lang/String;
    const-string v2, "SEAndroidPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v2, "com.sec.android.app.spota"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 751
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by SPOTA Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 753
    :cond_46
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_73

    .line 754
    const/4 v1, 0x1

    .line 764
    :cond_4e
    :goto_4e
    monitor-exit p0

    return v1

    .line 757
    :cond_50
    :try_start_50
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by MDM Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    if-eqz v2, :cond_6a

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 760
    :cond_6a
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_73

    .line 761
    const/4 v1, 0x1

    goto :goto_4e

    .line 744
    .end local v0    # "requestAgent":Ljava/lang/String;
    .end local v1    # "ret":Z
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized broadcastStateChanged(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 729
    monitor-enter p0

    :try_start_1
    const-string v1, "SEAndroidPolicy"

    const-string v2, "broadcastStateChanged_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v1, "SEAndroidPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.seandroid.policy.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mdm.intent.extra.seandroid.state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 734
    monitor-exit p0

    return-void

    .line 729
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 554
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFiles_begin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v4, 0x0

    .line 557
    .local v4, "ret":Z
    if-eqz p2, :cond_20

    .line 558
    const/4 v1, 0x0

    .line 560
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .local v3, "mFileDest":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_39
    .catchall {:try_start_b .. :try_end_17} :catchall_4e

    .line 562
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_17
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1a} :catch_6a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_67
    .catchall {:try_start_17 .. :try_end_1a} :catchall_64

    .line 563
    const/4 v4, 0x1

    .line 572
    if-eqz v2, :cond_20

    .line 573
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_5e

    .line 579
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    :cond_20
    :goto_20
    return v4

    .line 564
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_21
    move-exception v0

    .line 565
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_22
    :try_start_22
    const-string v5, "SEAndroidPolicy"

    const-string v6, "File Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4e

    .line 566
    const/4 v4, 0x0

    .line 572
    if-eqz v1, :cond_20

    .line 573
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    .line 574
    :catch_30
    move-exception v0

    .line 575
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_35
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 567
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_39
    move-exception v0

    .line 568
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFile failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4e

    .line 569
    const/4 v4, 0x0

    .line 572
    if-eqz v1, :cond_20

    .line 573
    :try_start_44
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_20

    .line 574
    :catch_48
    move-exception v0

    .line 575
    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4e
    move-exception v5

    .line 572
    :goto_4f
    if-eqz v1, :cond_54

    .line 573
    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 571
    :cond_54
    :goto_54
    throw v5

    .line 574
    :catch_55
    move-exception v0

    .line 575
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SEAndroidPolicy"

    const-string v7, "Error closing OutputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catch_5e
    move-exception v0

    .line 575
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_64
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_4f

    .line 567
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_67
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_3a

    .line 564
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_6a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_22
.end method

.method private createTempFile()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 538
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    .line 539
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 540
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    .line 541
    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 543
    return-void
.end method

.method private static duplicateFile(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 1308
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1311
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1313
    .local v3, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 1315
    .local v1, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1316
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1317
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_31} :catch_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_43

    goto :goto_23

    .line 1321
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_32
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1331
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_36
    return-void

    .line 1319
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1320
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_3d} :catch_32
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_43

    goto :goto_36

    .line 1324
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_3e
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_36

    .line 1327
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_43
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36
.end method

.method private enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 152
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 154
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
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
    .line 853
    iget-object v6, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 854
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 856
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v6, 0x40

    :try_start_9
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 857
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 858
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v6, v4

    if-ge v1, v6, :cond_29

    .line 860
    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_21} :catch_24

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 863
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_24
    move-exception v0

    .line 864
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 865
    const/4 v5, 0x0

    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    return-object v5
.end method

.method private declared-synchronized isAdminLocked()Z
    .registers 8

    .prologue
    .line 666
    monitor-enter p0

    :try_start_1
    const-string v5, "SEAndroidPolicy"

    const-string v6, "isAdminLocked_begin = all"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v4, 0x0

    .line 669
    .local v4, "ret":Z
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "SeAndroidPolicyLocked"

    aput-object v6, v0, v5

    .line 671
    .local v0, "columns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SE_ANDROID_TABLE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 674
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 675
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 677
    .local v2, "it":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 678
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 679
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "true"

    const-string v6, "SeAndroidPolicyLocked"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 680
    const-string v5, "SEAndroidPolicy"

    const-string v6, "At Least one Admin is locked"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_48

    .line 681
    const/4 v4, 0x1

    .line 685
    :cond_46
    monitor-exit p0

    return v4

    .line 666
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Z
    :catchall_48
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized isAdminLocked(I)Z
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 640
    monitor-enter p0

    :try_start_1
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked_begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_65

    .line 641
    const/4 v3, 0x0

    .line 643
    .local v3, "ret":Z
    const/4 v4, 0x2

    :try_start_1b
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "SeAndroidPolicyLocked"

    aput-object v5, v0, v4

    .line 644
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SE_ANDROID_TABLE"

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 647
    .local v2, "results":Landroid/content/ContentValues;
    const-string/jumbo v4, "true"

    const-string v5, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_5b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_65

    move-result v4

    if-eqz v4, :cond_59

    .line 648
    const/4 v3, 0x1

    .line 656
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "results":Landroid/content/ContentValues;
    :goto_3f
    :try_start_3f
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_65

    .line 657
    monitor-exit p0

    return v3

    .line 650
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "results":Landroid/content/ContentValues;
    :cond_59
    const/4 v3, 0x0

    goto :goto_3f

    .line 652
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "results":Landroid/content/ContentValues;
    :catch_5b
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5c
    const-string v4, "SEAndroidPolicy"

    const-string v5, "isAdminLocked = exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_65

    .line 654
    const/4 v3, 0x0

    goto :goto_3f

    .line 640
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Z
    :catchall_65
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeFiles()Z
    .registers 13

    .prologue
    .line 588
    const-string v9, "SEAndroidPolicy"

    const-string v10, "removeFiles_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v8, 0x0

    .line 591
    .local v8, "ret":Z
    :try_start_8
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v4, "fileFolder":Ljava/io/File;
    const-string v9, "SEAndroidPolicy"

    const-string v10, "Lets start the loop"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 594
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "allFiles":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_23
    if-ge v6, v7, :cond_34

    aget-object v5, v1, v6

    .line 596
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_4e

    .line 595
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 600
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_34
    const/4 v8, 0x1

    .line 605
    .end local v4    # "fileFolder":Ljava/io/File;
    :goto_35
    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeFiles result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return v8

    .line 601
    :catch_4e
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SEAndroidPolicy"

    const-string v10, "Exception.removeFiles"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v8, 0x0

    goto :goto_35
.end method

.method private returnFilePath()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 497
    new-array v0, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v7

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v8

    const/4 v3, 0x0

    aput-object v3, v0, v9

    .line 504
    .local v0, "MAC_FILE":[Ljava/io/File;
    new-array v1, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Ljava/io/File;

    const-string v4, "seapp_contexts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v8

    const/4 v3, 0x0

    aput-object v3, v1, v9

    .line 510
    .local v1, "SEAPP_CONTEXTS_FILE":[Ljava/io/File;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v2

    .line 511
    .local v2, "index":I
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    packed-switch v2, :pswitch_data_94

    .line 526
    :goto_7c
    return-void

    .line 516
    :pswitch_7d
    aget-object v3, v0, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    .line 517
    aget-object v3, v1, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_7c

    .line 522
    :pswitch_86
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    .line 523
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_7c

    .line 514
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_86
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method private declared-synchronized searchAgent()I
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 694
    monitor-enter p0

    :try_start_4
    const-string v9, "SEAndroidPolicy"

    const-string v10, "searchAgent_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "SeAndroidPolicyLocked"

    aput-object v10, v0, v9

    .line 698
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SE_ANDROID_TABLE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 701
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_89

    .line 702
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 703
    .local v2, "list":Landroid/content/ContentValues;
    const-string/jumbo v9, "true"

    const-string v10, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 704
    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 705
    .local v3, "lockedUid":I
    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 707
    const-string v8, "SEAndroidPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v8, "com.sec.android.app.spota"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 709
    const-string v7, "SEAndroidPolicy"

    const-string v8, "searchAgent = SPOTA_AGENT"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_4 .. :try_end_7e} :catchall_92

    .line 720
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Landroid/content/ContentValues;
    .end local v3    # "lockedUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_7e
    monitor-exit p0

    return v6

    .line 712
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Landroid/content/ContentValues;
    .restart local v3    # "lockedUid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_80
    :try_start_80
    const-string v6, "SEAndroidPolicy"

    const-string v8, "searchAgent = MDM_AGENT"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 713
    goto :goto_7e

    .line 719
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Landroid/content/ContentValues;
    .end local v3    # "lockedUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_89
    const-string v6, "SEAndroidPolicy"

    const-string v7, "searchAgent = NONE"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_80 .. :try_end_90} :catchall_92

    move v6, v8

    .line 720
    goto :goto_7e

    .line 694
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_92
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public amsGetEnforce(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 369
    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsGetEnforce_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 374
    .local v0, "isEnforced":Z
    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_1d

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 376
    const/4 v0, 0x1

    .line 378
    :cond_1d
    return v0
.end method

.method public amsSetEnforce(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 387
    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsSetEnforce_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 389
    const/4 v0, -0x1

    .line 391
    .local v0, "ret":I
    const/4 v2, 0x1

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 392
    if-eqz p2, :cond_27

    const-string v1, "1"

    .line 394
    .local v1, "val":Ljava/lang/String;
    :goto_19
    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    .line 396
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 400
    .end local v1    # "val":Ljava/lang/String;
    :goto_26
    return v0

    .line 392
    :cond_27
    const-string v1, "0"

    goto :goto_19

    .line 398
    :cond_2a
    const/4 v0, -0x2

    goto :goto_26
.end method

.method public amsSetLogLevel(Landroid/app/enterprise/ContextInfo;I)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "FLAG"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 411
    const-string v1, "SEAndroidPolicy"

    const-string v2, "amsSetLogLevel_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 413
    const/4 v0, -0x1

    .line 415
    .local v0, "ret":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 416
    packed-switch p2, :pswitch_data_60

    .line 439
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Flag with a wrong value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 441
    const/4 v0, -0x1

    .line 447
    :goto_26
    return v0

    .line 419
    :pswitch_27
    const-string v1, "persist.security.ams.verbose"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    .line 422
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_26

    .line 426
    :pswitch_39
    const-string v1, "persist.security.ams.verbose"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    .line 429
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_26

    .line 433
    :pswitch_4b
    const-string v1, "persist.security.ams.verbose"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_26

    .line 445
    :cond_5e
    const/4 v0, -0x2

    goto :goto_26

    .line 416
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_27
        :pswitch_39
        :pswitch_4b
    .end packed-switch
.end method

.method public getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 30
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "seInfo"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1208
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1210
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 1211
    new-instance v8, Ljava/io/FileInputStream;

    sget-object v23, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1213
    .local v8, "fstream":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1214
    .local v12, "in":Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1218
    .local v5, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1219
    .local v6, "datatype":Ljava/lang/String;
    :cond_23
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "strLine":Ljava/lang/String;
    if-eqz v16, :cond_101

    .line 1220
    const-string v23, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1221
    .local v18, "tokens_del":[Ljava/lang/String;
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/String;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v11, v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v11, "i$":I
    :goto_38
    if-ge v11, v13, :cond_23

    aget-object v17, v2, v11

    .line 1222
    .local v17, "tokens_cur":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seinfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_fc

    .line 1223
    move-object/from16 v3, v18

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v9, 0x0

    .end local v11    # "i$":I
    .restart local v9    # "i$":I
    :goto_61
    if-ge v9, v14, :cond_c7

    aget-object v22, v3, v9

    .line 1224
    .local v22, "tokens_new":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c4

    .line 1225
    move-object/from16 v2, v18

    .end local v3    # "arr$":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v13, v2

    .end local v14    # "len$":I
    .restart local v13    # "len$":I
    const/4 v9, 0x0

    move v10, v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v10, "i$":I
    :goto_87
    if-ge v10, v13, :cond_bc

    aget-object v19, v2, v10

    .line 1226
    .local v19, "tokens_dom":Ljava/lang/String;
    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1227
    .local v20, "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v3, v20

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v14, v3

    .restart local v14    # "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_99
    if-ge v9, v14, :cond_b8

    aget-object v21, v3, v9

    .line 1228
    .local v21, "tokens_mat":Ljava/lang/String;
    const-string/jumbo v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b5

    .line 1229
    const/16 v23, 0x1

    aget-object v6, v20, v23

    .line 1230
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1231
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1268
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "datatype":Ljava/lang/String;
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "i$":I
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v14    # "len$":I
    .end local v16    # "strLine":Ljava/lang/String;
    .end local v17    # "tokens_cur":Ljava/lang/String;
    .end local v18    # "tokens_del":[Ljava/lang/String;
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    .end local v21    # "tokens_mat":Ljava/lang/String;
    .end local v22    # "tokens_new":Ljava/lang/String;
    :goto_b4
    return-object v6

    .line 1227
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "datatype":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "i$":I
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "len$":I
    .restart local v16    # "strLine":Ljava/lang/String;
    .restart local v17    # "tokens_cur":Ljava/lang/String;
    .restart local v18    # "tokens_del":[Ljava/lang/String;
    .restart local v19    # "tokens_dom":Ljava/lang/String;
    .restart local v20    # "tokens_lhs":[Ljava/lang/String;
    .restart local v21    # "tokens_mat":Ljava/lang/String;
    .restart local v22    # "tokens_new":Ljava/lang/String;
    :cond_b5
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    .line 1225
    .end local v21    # "tokens_mat":Ljava/lang/String;
    :cond_b8
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_87

    .line 1238
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    :cond_bc
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1239
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1240
    const/4 v6, 0x0

    goto :goto_b4

    .line 1223
    .end local v10    # "i$":I
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    :cond_c4
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    .line 1245
    .end local v22    # "tokens_new":Ljava/lang/String;
    :cond_c7
    if-nez v6, :cond_fc

    .line 1246
    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    move v10, v9

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .restart local v10    # "i$":I
    :goto_ce
    if-ge v10, v14, :cond_fc

    aget-object v19, v3, v10

    .line 1247
    .restart local v19    # "tokens_dom":Ljava/lang/String;
    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1248
    .restart local v20    # "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_e0
    if-ge v9, v15, :cond_f8

    aget-object v21, v4, v9

    .line 1249
    .restart local v21    # "tokens_mat":Ljava/lang/String;
    const-string/jumbo v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f5

    .line 1250
    const/16 v23, 0x1

    aget-object v6, v20, v23

    .line 1248
    :cond_f5
    add-int/lit8 v9, v9, 0x1

    goto :goto_e0

    .line 1246
    .end local v21    # "tokens_mat":Ljava/lang/String;
    :cond_f8
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_ce

    .line 1221
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v19    # "tokens_dom":Ljava/lang/String;
    .end local v20    # "tokens_lhs":[Ljava/lang/String;
    :cond_fc
    add-int/lit8 v9, v11, 0x1

    .restart local v9    # "i$":I
    move v11, v9

    .end local v9    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_38

    .line 1261
    .end local v11    # "i$":I
    .end local v17    # "tokens_cur":Ljava/lang/String;
    .end local v18    # "tokens_del":[Ljava/lang/String;
    :cond_101
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1262
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_107} :catch_108

    goto :goto_b4

    .line 1266
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "datatype":Ljava/lang/String;
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v16    # "strLine":Ljava/lang/String;
    :catch_108
    move-exception v7

    .line 1267
    .local v7, "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1268
    const/4 v6, 0x0

    goto :goto_b4
.end method

.method public getDataTypeFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "datatype":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1286
    .local v1, "seInfo":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    if-nez v1, :cond_d

    .line 1295
    :cond_c
    :goto_c
    return-object v2

    .line 1290
    :cond_d
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    if-eqz v0, :cond_c

    move-object v2, v0

    .line 1295
    goto :goto_c
.end method

.method public getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "seInfo"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1097
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1098
    const/4 v9, 0x0

    .line 1099
    .local v9, "fstream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 1100
    .local v14, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 1103
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 1104
    new-instance v10, Ljava/io/FileInputStream;

    sget-object v26, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_15c
    .catchall {:try_start_6 .. :try_end_12} :catchall_18e

    .line 1106
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .local v10, "fstream":Ljava/io/FileInputStream;
    :try_start_12
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_1b5
    .catchall {:try_start_12 .. :try_end_17} :catchall_1a9

    .line 1107
    .end local v14    # "in":Ljava/io/DataInputStream;
    .local v15, "in":Ljava/io/DataInputStream;
    :try_start_17
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_1b8
    .catchall {:try_start_17 .. :try_end_25} :catchall_1ac

    .line 1111
    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v6, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1112
    .local v7, "domain":Ljava/lang/String;
    :cond_26
    :try_start_26
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, "strLine":Ljava/lang/String;
    if-eqz v19, :cond_13f

    .line 1113
    const-string v26, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1114
    .local v21, "tokens_del":[Ljava/lang/String;
    move-object/from16 v2, v21

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v13, v11

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .local v13, "i$":I
    :goto_3d
    move/from16 v0, v16

    if-ge v13, v0, :cond_26

    aget-object v20, v2, v13

    .line 1115
    .local v20, "tokens_cur":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "seinfo="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13a

    .line 1116
    move-object/from16 v3, v21

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v11, 0x0

    .end local v13    # "i$":I
    .restart local v11    # "i$":I
    :goto_6a
    move/from16 v0, v17

    if-ge v11, v0, :cond_fe

    aget-object v25, v3, v11

    .line 1117
    .local v25, "tokens_new":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "name="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_fa

    .line 1118
    move-object/from16 v2, v21

    .end local v3    # "arr$":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v16, v0

    .end local v17    # "len$":I
    .restart local v16    # "len$":I
    const/4 v11, 0x0

    move v12, v11

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .local v12, "i$":I
    :goto_94
    move/from16 v0, v16

    if-ge v12, v0, :cond_e0

    aget-object v22, v2, v12

    .line 1119
    .local v22, "tokens_dom":Ljava/lang/String;
    const-string v26, "="

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1120
    .local v23, "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v3, v23

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_aa
    move/from16 v0, v17

    if-ge v11, v0, :cond_dc

    aget-object v24, v3, v11

    .line 1121
    .local v24, "tokens_mat":Ljava/lang/String;
    const-string v26, "domain"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d9

    .line 1122
    const/16 v26, 0x1

    aget-object v7, v23, v26

    .line 1123
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1124
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_c6} :catch_1bc
    .catchall {:try_start_26 .. :try_end_c6} :catchall_1b0

    .line 1165
    if-eqz v6, :cond_cb

    :try_start_c8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1166
    :cond_cb
    if-eqz v15, :cond_d0

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 1167
    :cond_d0
    if-eqz v10, :cond_d5

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d5} :catch_1a4

    :cond_d5
    :goto_d5
    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .line 1162
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "domain":Ljava/lang/String;
    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "strLine":Ljava/lang/String;
    .end local v20    # "tokens_cur":Ljava/lang/String;
    .end local v21    # "tokens_del":[Ljava/lang/String;
    .end local v22    # "tokens_dom":Ljava/lang/String;
    .end local v23    # "tokens_lhs":[Ljava/lang/String;
    .end local v24    # "tokens_mat":Ljava/lang/String;
    .end local v25    # "tokens_new":Ljava/lang/String;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    :cond_d8
    :goto_d8
    return-object v7

    .line 1120
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "domain":Ljava/lang/String;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "i$":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "len$":I
    .restart local v19    # "strLine":Ljava/lang/String;
    .restart local v20    # "tokens_cur":Ljava/lang/String;
    .restart local v21    # "tokens_del":[Ljava/lang/String;
    .restart local v22    # "tokens_dom":Ljava/lang/String;
    .restart local v23    # "tokens_lhs":[Ljava/lang/String;
    .restart local v24    # "tokens_mat":Ljava/lang/String;
    .restart local v25    # "tokens_new":Ljava/lang/String;
    :cond_d9
    add-int/lit8 v11, v11, 0x1

    goto :goto_aa

    .line 1118
    .end local v24    # "tokens_mat":Ljava/lang/String;
    :cond_dc
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_94

    .line 1131
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v17    # "len$":I
    .end local v22    # "tokens_dom":Ljava/lang/String;
    .end local v23    # "tokens_lhs":[Ljava/lang/String;
    :cond_e0
    :try_start_e0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1132
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e6} :catch_1bc
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_1b0

    .line 1133
    const/4 v7, 0x0

    .line 1165
    .end local v7    # "domain":Ljava/lang/String;
    if-eqz v6, :cond_ec

    :try_start_e9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1166
    :cond_ec
    if-eqz v15, :cond_f1

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 1167
    :cond_f1
    if-eqz v10, :cond_f6

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f6} :catch_1a1

    :cond_f6
    :goto_f6
    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .line 1133
    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_d8

    .line 1116
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v12    # "i$":I
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "domain":Ljava/lang/String;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "i$":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "len$":I
    :cond_fa
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6a

    .line 1138
    .end local v25    # "tokens_new":Ljava/lang/String;
    :cond_fe
    if-nez v7, :cond_13a

    .line 1139
    move-object/from16 v3, v21

    :try_start_102
    array-length v0, v3

    move/from16 v17, v0

    const/4 v11, 0x0

    move v12, v11

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v17    # "len$":I
    .restart local v12    # "i$":I
    :goto_107
    move/from16 v0, v17

    if-ge v12, v0, :cond_13a

    aget-object v22, v3, v12

    .line 1140
    .restart local v22    # "tokens_dom":Ljava/lang/String;
    const-string v26, "="

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1141
    .restart local v23    # "tokens_lhs":[Ljava/lang/String;
    move-object/from16 v4, v23

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_11d
    move/from16 v0, v18

    if-ge v11, v0, :cond_136

    aget-object v24, v4, v11

    .line 1142
    .restart local v24    # "tokens_mat":Ljava/lang/String;
    const-string v26, "domain"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_133

    .line 1143
    const/16 v26, 0x1

    aget-object v7, v23, v26

    .line 1141
    :cond_133
    add-int/lit8 v11, v11, 0x1

    goto :goto_11d

    .line 1139
    .end local v24    # "tokens_mat":Ljava/lang/String;
    :cond_136
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_107

    .line 1114
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "tokens_dom":Ljava/lang/String;
    .end local v23    # "tokens_lhs":[Ljava/lang/String;
    :cond_13a
    add-int/lit8 v11, v13, 0x1

    .restart local v11    # "i$":I
    move v13, v11

    .end local v11    # "i$":I
    .restart local v13    # "i$":I
    goto/16 :goto_3d

    .line 1154
    .end local v13    # "i$":I
    .end local v20    # "tokens_cur":Ljava/lang/String;
    .end local v21    # "tokens_del":[Ljava/lang/String;
    :cond_13f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1155
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 1156
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_148} :catch_1bc
    .catchall {:try_start_102 .. :try_end_148} :catchall_1b0

    .line 1165
    if-eqz v6, :cond_14d

    :try_start_14a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1166
    :cond_14d
    if-eqz v15, :cond_152

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 1167
    :cond_152
    if-eqz v10, :cond_157

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_157} :catch_19f

    :cond_157
    :goto_157
    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .line 1157
    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_d8

    .line 1160
    .end local v7    # "domain":Ljava/lang/String;
    .end local v19    # "strLine":Ljava/lang/String;
    :catch_15c
    move-exception v8

    .line 1161
    .local v8, "e":Ljava/lang/Exception;
    :goto_15d
    :try_start_15d
    sget-object v26, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_15d .. :try_end_179} :catchall_18e

    .line 1162
    const/4 v7, 0x0

    .line 1165
    if-eqz v5, :cond_17f

    :try_start_17c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1166
    :cond_17f
    if-eqz v14, :cond_184

    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 1167
    :cond_184
    if-eqz v9, :cond_d8

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_189} :catch_18b

    goto/16 :goto_d8

    .line 1168
    :catch_18b
    move-exception v26

    goto/16 :goto_d8

    .line 1164
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_18e
    move-exception v26

    .line 1165
    :goto_18f
    if-eqz v5, :cond_194

    :try_start_191
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1166
    :cond_194
    if-eqz v14, :cond_199

    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 1167
    :cond_199
    if-eqz v9, :cond_19e

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_19e} :catch_1a7

    .line 1164
    :cond_19e
    :goto_19e
    throw v26

    .line 1168
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "domain":Ljava/lang/String;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "strLine":Ljava/lang/String;
    :catch_19f
    move-exception v26

    goto :goto_157

    .end local v7    # "domain":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v20    # "tokens_cur":Ljava/lang/String;
    .restart local v21    # "tokens_del":[Ljava/lang/String;
    .restart local v25    # "tokens_new":Ljava/lang/String;
    :catch_1a1
    move-exception v26

    goto/16 :goto_f6

    .end local v12    # "i$":I
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v7    # "domain":Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v17    # "len$":I
    .restart local v22    # "tokens_dom":Ljava/lang/String;
    .restart local v23    # "tokens_lhs":[Ljava/lang/String;
    .restart local v24    # "tokens_mat":Ljava/lang/String;
    :catch_1a4
    move-exception v26

    goto/16 :goto_d5

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "domain":Ljava/lang/String;
    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .end local v11    # "i$":I
    .end local v15    # "in":Ljava/io/DataInputStream;
    .end local v17    # "len$":I
    .end local v19    # "strLine":Ljava/lang/String;
    .end local v20    # "tokens_cur":Ljava/lang/String;
    .end local v21    # "tokens_del":[Ljava/lang/String;
    .end local v22    # "tokens_dom":Ljava/lang/String;
    .end local v23    # "tokens_lhs":[Ljava/lang/String;
    .end local v24    # "tokens_mat":Ljava/lang/String;
    .end local v25    # "tokens_new":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catch_1a7
    move-exception v27

    goto :goto_19e

    .line 1164
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    :catchall_1a9
    move-exception v26

    move-object v9, v10

    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_18f

    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    :catchall_1ac
    move-exception v26

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_18f

    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "domain":Ljava/lang/String;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    :catchall_1b0
    move-exception v26

    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_18f

    .line 1160
    .end local v7    # "domain":Ljava/lang/String;
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    :catch_1b5
    move-exception v8

    move-object v9, v10

    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_15d

    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    :catch_1b8
    move-exception v8

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_15d

    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "domain":Ljava/lang/String;
    .restart local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    :catch_1bc
    move-exception v8

    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_15d
.end method

.method public getDomainFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1181
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, "domain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1184
    .local v1, "seInfo":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    if-nez v1, :cond_d

    .line 1193
    :cond_c
    :goto_c
    return-object v2

    .line 1188
    :cond_d
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_c

    move-object v2, v0

    .line 1193
    goto :goto_c
.end method

.method public getSEAndroidAgent(Landroid/app/enterprise/ContextInfo;)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 358
    const-string v0, "SEAndroidPolicy"

    const-string v1, "getSEAndroidAgent_begin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 360
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v0

    return v0
.end method

.method public getSEInfoFromCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sig"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 878
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 879
    const/4 v14, 0x0

    iput-boolean v14, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    .line 880
    const/4 v10, 0x0

    .line 881
    .local v10, "seinfo":Ljava/lang/String;
    sget-object v13, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    .line 882
    .local v13, "xmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 885
    .local v2, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_10
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 886
    .local v1, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 887
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Element;->normalize()V

    .line 888
    const-string v14, "policy"

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 889
    .local v7, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 890
    .local v6, "policyElement":Lorg/w3c/dom/Element;
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v6, Lorg/w3c/dom/Element;

    .line 891
    .restart local v6    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v14, "signer"

    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 892
    .local v11, "signer":Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .line 894
    .local v12, "signerElement":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v5, v14, :cond_68

    .line 895
    invoke-interface {v11, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .end local v12    # "signerElement":Lorg/w3c/dom/Element;
    check-cast v12, Lorg/w3c/dom/Element;

    .line 896
    .restart local v12    # "signerElement":Lorg/w3c/dom/Element;
    const-string/jumbo v14, "signature"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6a

    .line 897
    const-string v14, "seinfo"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 898
    .local v8, "seInfo":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 899
    .local v9, "seInfo_el":Lorg/w3c/dom/Element;
    const-string/jumbo v14, "value"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 900
    const/4 v14, 0x1

    iput-boolean v14, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z
    :try_end_68
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_68} :catch_6d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_68} :catch_73
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_68} :catch_79

    .end local v8    # "seInfo":Lorg/w3c/dom/NodeList;
    .end local v9    # "seInfo_el":Lorg/w3c/dom/Element;
    :cond_68
    move-object v14, v10

    .line 915
    .end local v1    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i":I
    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v11    # "signer":Lorg/w3c/dom/NodeList;
    .end local v12    # "signerElement":Lorg/w3c/dom/Element;
    :goto_69
    return-object v14

    .line 894
    .restart local v1    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i":I
    .restart local v6    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v11    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v12    # "signerElement":Lorg/w3c/dom/Element;
    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 907
    .end local v1    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i":I
    .end local v6    # "policyElement":Lorg/w3c/dom/Element;
    .end local v7    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v11    # "signer":Lorg/w3c/dom/NodeList;
    .end local v12    # "signerElement":Lorg/w3c/dom/Element;
    :catch_6d
    move-exception v4

    .line 908
    .local v4, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 909
    const/4 v14, 0x0

    goto :goto_69

    .line 910
    .end local v4    # "e1":Lorg/xml/sax/SAXException;
    :catch_73
    move-exception v4

    .line 911
    .local v4, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 912
    const/4 v14, 0x0

    goto :goto_69

    .line 913
    .end local v4    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_79
    move-exception v4

    .line 914
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 915
    const/4 v14, 0x0

    goto :goto_69
.end method

.method public getSEInfoFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 822
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    .line 823
    const/4 v2, 0x0

    .line 824
    .local v2, "seinfo":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v3, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 826
    if-nez v3, :cond_14

    .line 839
    :cond_13
    :goto_13
    return-object v4

    .line 829
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 831
    iget-boolean v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 835
    .end local v1    # "s":Ljava/lang/String;
    :cond_2d
    if-eqz v2, :cond_13

    move-object v4, v2

    .line 839
    goto :goto_13
.end method

.method public getSELinuxMode(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 479
    const-string v1, "SEAndroidPolicy"

    const-string v2, "getSELinuxMode_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "isEnforced":Z
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    .line 483
    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 786
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 813
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 797
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 798
    const-string v0, "SEAndroidPolicy"

    const-string v1, "Admin is quiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 803
    :cond_17
    return-void
.end method

.method public revokeSELinuxPolicy(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 335
    const-string v1, "SEAndroidPolicy"

    const-string v2, "revokeSELinuxPolicy_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 337
    const/4 v0, -0x1

    .line 338
    .local v0, "ret":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 339
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Lets remove the Files"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 341
    const/4 v0, 0x0

    .line 342
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 343
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 348
    :cond_2b
    :goto_2b
    return v0

    .line 346
    :cond_2c
    const/4 v0, -0x2

    goto :goto_2b
.end method

.method public setFileContexts(Landroid/app/enterprise/ContextInfo;[B)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileContexts"    # [B

    .prologue
    .line 164
    const-string v1, "SEAndroidPolicy"

    const-string v2, "setFileContexts_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 166
    const/4 v0, -0x1

    .line 168
    .local v0, "ret":I
    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 169
    const-string v1, "file_contexts"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 170
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 173
    const/4 v0, 0x0

    .line 181
    :goto_33
    return v0

    .line 175
    :cond_34
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 176
    const/4 v0, -0x1

    goto :goto_33

    .line 179
    :cond_3c
    const/4 v0, -0x2

    goto :goto_33
.end method

.method public setMacPermission(Landroid/app/enterprise/ContextInfo;[B)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "macPerm"    # [B

    .prologue
    .line 266
    const-string v1, "SEAndroidPolicy"

    const-string v2, "setMacPermission_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 268
    const/4 v0, -0x1

    .line 269
    .local v0, "ret":I
    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 270
    const-string v1, "mac_permissions.xml"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 271
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy(Ljava/io/File;)Z

    .line 273
    const-string v1, "SEAndroidPolicy"

    const-string v2, "readInstallPolicy successful"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 283
    :goto_38
    return v0

    .line 277
    :cond_39
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 278
    const/4 v0, -0x1

    goto :goto_38

    .line 281
    :cond_41
    const/4 v0, -0x2

    goto :goto_38
.end method

.method public setPropertyContexts(Landroid/app/enterprise/ContextInfo;[B)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "propertyContexts"    # [B

    .prologue
    .line 190
    const-string v1, "SEAndroidPolicy"

    const-string v2, "setPropertyContexts_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 192
    const/4 v0, -0x1

    .line 193
    .local v0, "ret":I
    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 194
    const-string v1, "property_contexts"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 195
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 198
    const/4 v0, 0x0

    .line 206
    :goto_33
    return v0

    .line 200
    :cond_34
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 201
    const/4 v0, -0x1

    goto :goto_33

    .line 204
    :cond_3c
    const/4 v0, -0x2

    goto :goto_33
.end method

.method public setSEAppContexts(Landroid/app/enterprise/ContextInfo;[B)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "seAppContexts"    # [B

    .prologue
    .line 240
    const-string v1, "SEAndroidPolicy"

    const-string v2, "setSEAppContexts_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 242
    const/4 v0, -0x1

    .line 243
    .local v0, "ret":I
    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 244
    const-string v1, "seapp_contexts"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 245
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    .line 248
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 256
    :goto_33
    return v0

    .line 250
    :cond_34
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 251
    const/4 v0, -0x1

    goto :goto_33

    .line 254
    :cond_3c
    const/4 v0, -0x2

    goto :goto_33
.end method

.method public setSELinuxEnforcing(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 457
    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSELinuxEnforcing_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, "ret":Z
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 461
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 462
    invoke-static {v4}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    move-result v1

    .line 463
    if-eqz v1, :cond_2f

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v2, "mdm.intent.action.seandroid.policy.enforced"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2f
    return v1
.end method

.method public setSELinuxPolicy(Landroid/app/enterprise/ContextInfo;[B)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sePolicy"    # [B

    .prologue
    .line 215
    const-string v1, "SEAndroidPolicy"

    const-string v2, "setSELinuxPolicy_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 217
    const/4 v0, -0x1

    .line 218
    .local v0, "ret":I
    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 219
    const-string v1, "sepolicy"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 220
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    .line 223
    const/4 v0, 0x0

    .line 231
    :goto_33
    return v0

    .line 225
    :cond_34
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    .line 226
    const/4 v0, -0x1

    goto :goto_33

    .line 229
    :cond_3c
    const/4 v0, -0x2

    goto :goto_33
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 776
    return-void
.end method
