.class public Lcom/metamoji/tle/TextLineExtractor;
.super Ljava/lang/Object;
.source "TextLineExtractor.java"


# static fields
.field private static _instance:Lcom/metamoji/tle/TextLineExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "TextLineExtractorComponent"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native _addStrokePoint(Ljava/lang/String;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)I"
        }
    .end annotation
.end method

.method private native _attachDictionary([Ljava/lang/String;)I
.end method

.method private native _extractTextLine()I
.end method

.method public static getInstance()Lcom/metamoji/tle/TextLineExtractor;
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/tle/TextLineExtractor;->_instance:Lcom/metamoji/tle/TextLineExtractor;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/metamoji/tle/TextLineExtractor;

    invoke-direct {v0}, Lcom/metamoji/tle/TextLineExtractor;-><init>()V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractor;->_instance:Lcom/metamoji/tle/TextLineExtractor;

    .line 28
    :cond_0
    sget-object v0, Lcom/metamoji/tle/TextLineExtractor;->_instance:Lcom/metamoji/tle/TextLineExtractor;

    return-object v0
.end method


# virtual methods
.method public addStrokePoint(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/tle/ProcessingStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/metamoji/tle/ProcessingStatus;"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/metamoji/tle/TextLineExtractor;->_addStrokePoint(Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    .line 38
    invoke-static {p1}, Lcom/metamoji/tle/ProcessingStatus;->fromInt(I)Lcom/metamoji/tle/ProcessingStatus;

    move-result-object p1

    return-object p1
.end method

.method public attachDictionary([Ljava/lang/String;)Lcom/metamoji/tle/ProcessingStatus;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/tle/TextLineExtractor;->_attachDictionary([Ljava/lang/String;)I

    move-result p1

    .line 33
    invoke-static {p1}, Lcom/metamoji/tle/ProcessingStatus;->fromInt(I)Lcom/metamoji/tle/ProcessingStatus;

    move-result-object p1

    return-object p1
.end method

.method public native close()V
.end method

.method public native create()V
.end method

.method public extractTextLine()Lcom/metamoji/tle/ProcessingStatus;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/metamoji/tle/TextLineExtractor;->_extractTextLine()I

    move-result v0

    .line 43
    invoke-static {v0}, Lcom/metamoji/tle/ProcessingStatus;->fromInt(I)Lcom/metamoji/tle/ProcessingStatus;

    move-result-object v0

    return-object v0
.end method

.method public native getResult()Lcom/metamoji/tle/TextLineArrayList;
.end method

.method public native setLineCoef(F)V
.end method
