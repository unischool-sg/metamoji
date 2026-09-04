.class public Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;
.super Ljava/lang/Object;
.source "ParagraphInfoFactory.java"


# static fields
.field private static _factory:Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;
    .locals 1

    .line 13
    sget-object v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->_factory:Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->_factory:Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;

    .line 16
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->_factory:Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;

    return-object v0
.end method

.method public static setFactory(Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->_factory:Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
    .locals 1

    .line 33
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;-><init>()V

    return-object v0
.end method
