.class public Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfoFactory;
.super Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;
.source "TaggedParagraphInfoFactory.java"


# instance fields
.field private _ownerUnit:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfoFactory;->_ownerUnit:Lcom/metamoji/un/text/UnTextUnit;

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
    .locals 2

    .line 26
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    iget-object v1, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfoFactory;->_ownerUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    return-object v0
.end method
