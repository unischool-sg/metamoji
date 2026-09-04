.class public Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;
.super Ljava/lang/Object;
.source "CvZippedXmlConverterTable.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _incomingType:Ljava/lang/Class;

.field _kind:Lcom/metamoji/cv/xml/CvZippedXMLKind;

.field _outgoingType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_kind:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 19
    iput-object p2, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_outgoingType:Ljava/lang/Class;

    .line 20
    iput-object p3, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_incomingType:Ljava/lang/Class;

    return-void
.end method

.method private isKindForDoc(Lcom/metamoji/cv/xml/CvZippedXMLKind;)Z
    .locals 1

    .line 36
    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private subConverter(Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)Lcom/metamoji/cv/ICvSubconverter;
    .locals 3

    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-direct {p0, p2}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->subConverterType(Lcom/metamoji/cv/CvConvertType;)Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_kind:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_kind:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->isKindForDoc(Lcom/metamoji/cv/xml/CvZippedXMLKind;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_kind:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    invoke-direct {p0, p1}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->isKindForDoc(Lcom/metamoji/cv/xml/CvZippedXMLKind;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cv/ICvSubconverter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private subConverterType(Lcom/metamoji/cv/CvConvertType;)Ljava/lang/Class;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable$1;->$SwitchMap$com$metamoji$cv$CvConvertType:[I

    invoke-virtual {p1}, Lcom/metamoji/cv/CvConvertType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_outgoingType:Ljava/lang/Class;

    return-object p1

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->_incomingType:Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method public register(Lcom/metamoji/cv/CvModelConverter;Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)V
    .locals 1

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->subConverter(Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)Lcom/metamoji/cv/ICvSubconverter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Lcom/metamoji/cv/ICvSubconverter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/cv/CvModelConverter;->registerSubconverter(Lcom/metamoji/cv/ICvSubconverter;Lcom/metamoji/cv/CvConvertType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
