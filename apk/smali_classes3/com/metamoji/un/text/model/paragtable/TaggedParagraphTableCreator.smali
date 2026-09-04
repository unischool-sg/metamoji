.class public Lcom/metamoji/un/text/model/paragtable/TaggedParagraphTableCreator;
.super Lcom/metamoji/un/text/model/paragtable/ParagraphTableCreator;
.source "TaggedParagraphTableCreator.java"


# instance fields
.field private _ownerTextUnit:Lcom/metamoji/un/text/IUnTextUnitDelegate;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/IUnTextUnitDelegate;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTableCreator;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphTableCreator;->_ownerTextUnit:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    return-void
.end method


# virtual methods
.method protected setDataToParagraphInfo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V
    .locals 0

    return-void
.end method
